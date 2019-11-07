#!/bin/bash

#export appconfigServerUrl=http://172.23.26.30:8081/appconfig
#export corp=340000
#文件是否存在
exists_pattern_files(){  
    [ -e "$1" ]  
}


#打印帮助信息
print_help() {
  cat <<EOF
  use $0 --zip --clean --autorun --java=<java>

    --zip - 使用out.zip文件
        不指定时使用out文件夹进行升级

    --clean - 安装完成后执行文件夹清理。
        若不指定，将不删除out文件夹，可用于后续直接将文件包添加到out文件夹执行升级

    --autorun - 安装后自动启动
        对无配置的程序不执行自动启动

    --java=<java> - 设置JAVA_HOME路径。
        如：--java=/usr/share/jdk1.6.0_14
        如不指定此参数将使用系统环境变量

    --help  - 打印帮助信息


EOF
}


for i in $*
do
  current=$i;
  helperKey=${current%%=*};
  helperValue=${current#*=};
	case $helperKey in
		--zip)
		  zip="1";
		;;
		--clean)
		  clean="1";
		;;
        --autorun)
          autorun="1";
        ;;
		--java)
		  echo "临时更改java环境变量"
          export JAVA_HOME=${helperValue}
          export PATH=$JAVA_HOME/bin:$PATH 
          export CLASSPATH=.:${JAVA_HOME}/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar 
		;;
		--help)
		print_help;
        exit;
		;;
		*)
		echo "输入参数非法，请检查。或输入--help打印帮助信息"
        exit;
		;;
	esac
done

#判断从何处读取
if [ $zip ]; then
    if [ ! -f out.zip ]; then
        echo "不存在out.zip，退出部署脚本";
        exit;
    fi
    echo 解压缩中...
    rm -rf ./out
    unzip out.zip -d ./out
else
    if [ -d out ]; then
        echo 不执行解压缩
    else
        if [ ! -f out.zip ]; then
            echo "不存在out.zip，退出部署脚本";
            exit;
        fi
        echo 解压缩中...
        rm -rf ./out
        unzip out.zip -d ./out
    fi
fi
echo 整理目录中...
cd ./out
mkdir ./jars
mkdir ./wars
if exists_pattern_files *.jar; then
    mv ./*.jar ./jars/
fi
if exists_pattern_files *.war; then
    mv ./*.war ./wars/
fi
chmod 777 ./spring-boot.sh
if [ ! -d tomcat ];then
    if [ -f *tomcat*.zip ];then
        echo 解压缩tomcat安装包
        unzip -q ./*tomcat*.zip -d ./tomcat
    fi
fi
cd ../
#开始
#升级jar包
echo 开始执行部署...
for file in $(ls ./out/jars/);
do
    echo $file 部署中...
    name=${file%.*}
    if [ -d jar_${name}_* ];then
    echo -e "文件夹已存在,默认存在${file}、spring-boot.sh、application.yml\n将备份并升级${file}，完成后自动重启服务"
    cd jar_${name}_*
    mv $file ${file}.$(date "+%Y-%m-%d_%H-%M-%S").bak
    mv ../out/jars/$file ./
    sh spring-boot.sh restart $file
    cd ..
    fi
    echo $file 升级完成
done
#echo -e "jar包升级完成\n"
for file in $(ls ./out/wars/);
do
    echo $file 部署中...
    name=${file%.*}
    if [ -d tomcat_${name}_*[!p] ]; then
        echo -e "文件夹已经存在,默认存在${file}和完整的tomcat\n将备份并升级${file}，完成后自动重启此服务"
        cd ./tomcat_${name}_*[!p]/webapps
        mv $file ${file}.$(date "+%Y-%m-%d_%H-%M-%S").bak
        rm -rf ${name}
        mv ../../out/wars/$file ./
        echo $name 重启中...
        for id in $(ps -ef | grep "tomcat_${name}_" | grep -v grep | awk '{print $2}')
        do
            echo 杀掉${name}进程:${id}
            kill -9 ${id}
        done
        sh ../bin/startup.sh
        cd ../../
    fi
done
#echo -e "war包全部部署完成\n\n"

#全新安装程序先行有配置安装
if exists_pattern_files out/?ars/*.?ar; then
    echo 存在新增程序，执行安装...
    if [ ! -f ./out/package.conf ]; then
        echo 无部署配置文件，请配置后继续
        exit;
    fi
    for line in $(cat ./out/package.conf);
    do
        file=${line%=*}
        port=${line##*=}
        name=${file%.*}
        ext=${file##*.}
        #echo -e "\n--->file:${file},port:${port},name:${name},ext:${ext}"
        #jar包安装过程
        if [ $ext = jar ];then
        # echo 判断为jar包，执行jar包逻辑部署
            if [ -f ./out/jars/$file ];then
                echo 存在$file执行部署，端口将修改为$port
                #通用部署过程
                mkdir jar_${name}_
                cd jar_${name}_*
                mv ../out/jars/$file ./
                cp ../out/spring-boot.sh ./
                touch application.yml
                #修改端口配置文件
                echo -e "server: \n  port: ${port}" > application.yml
                cd ..
                #修改安装包文件夹名
                mv jar_${name}_ jar_${name}_${port}
                echo "${file}" >> package.dat
                #启动过程
                if [ $autorun ];then
                    cd jar_${name}_${port}
                    ./spring-boot.sh start ${file}
                    cd ../
                fi
                echo -e "$file 部署完成\n"
            fi
        else
            #war包安装过程
            if [ $ext = war ];then
            # echo 判断为war包，执行war包逻辑部署
                if [ -f ./out/wars/$file ];then
                    if [ ! -d ./out/tomcat ];then
                        echo 无tomcat安装包，无法执行部署
                    else
                        #通用安装过程
                        echo $file 部署中...
                        cp -r ./out/tomcat/* ./tomcat_${name}_
                        chmod 777 ./tomcat_${name}_/bin/*.sh
                        mv ./out/wars/$file ./tomcat_${name}_/webapps/
                        cd ./tomcat_${name}_/conf/
                        port=(${port//:/ })
                        #修改端口配置文件
                        sed -i "s/port=\"8080\"/port=\"${port[0]}\"/" server.xml
                        sed -i "s/port=\"8005\"/port=\"${port[1]}\"/" server.xml
                        sed -i "s/port=\"8009\"/port=\"${port[2]}\"/" server.xml
                        cd ../../
                        #修改安装包文件夹名
                        mv ./tomcat_${name}_ ./tomcat_${name}_${port[0]}
                        echo "${file}" >> package.dat
                        #启动过程
                        if [ $autorun ];then
                            sh ./tomcat_${name}_${port[0]}/bin/startup.sh
                        fi
                        echo -e "$file 部署完成\n"
                    fi
                fi
            fi
        fi
    done
fi

#全新安装程序，扫描剩余包执行无配置部署
if exists_pattern_files out/?ars/*.?ar; then
    echo "程序包未安装完，请配置后继续"
    exit;
fi

#本机ip
ip=$(ip addr | awk '/^[0-9]+: / {}; /inet.*global/ {print gensub(/(.*)\/(.*)/, "\\1", "g", $2)}')
ip=(${ip})
ip=${ip[0]}

echo 全部升级完成，访问admin监控服务（http://${ip}:9102）检查自动启动情况

#结束清理工作
echo 开始清理...
rm -rf ./out/jars
rm -rf ./out/wars
rm -rf ./out/*.jar
rm -rf ./out/*.war
if [ $clean ];then
    echo "清理整个out文件夹"
    rm -rf out
fi
echo 清理完成
