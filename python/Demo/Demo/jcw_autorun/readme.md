# 批量启动服务脚本：(v1.1)
>autorun_startprograms.py为批量启停springboot服务、tomcat脚本，可自定义启动服务

>更具实际部署情况修改setting文件夹下的programsetting.py文件即可

>**支持优先启动服务**
### 执行命令：
1. 一键部署安装命令（办案系统定制化命令）：

        python autorun_startprograms.py install
2. 全部服务重启命令：

        python autorun_startprograms.py
3. 全部服务停止命令：

        python autorun_startprograms.py shutdown
4. 自定义服务重启命令：

        spring boot ：
                单个服务：python autorun_startprograms.py xspch
                多个服务：python autorun_startprograms.py xspch,zzjdApi  (用英文逗号隔开)

        tomcat：
                单个tomcat：python autorun_startprograms.py tomcat:8080
                多个tomcat：python autorun_startprograms.py tomcat:8080,tomcat:8081  (用英文逗号隔开,用英文冒号）

        tas:
                单个tas: python autorun_startprograms.py tas:8080
                多个tas：python autorun_startprograms.py tas:8080,tas:8081(用英文逗号隔开,用英文冒号）
5. 自定义服务停止命令：

                单个停止：python autorun_startprograms.py shutdown xspch
                多个停止：python autorun_startprograms.py shutdown xspch,zjjdApi(用英文逗号隔开）
>注1：springboot和tomcat以关键字“tomcat”区分，部署路径需要区分，即部署jar包路径不要有“tomcat”字样，部署tomcat的路径需要有“tomcat”字样（只要路径中存在该字样即可）；

>注2：若系统安装的python版本为3.x.x，命令改用：python3 autorun_startprograms.py



# 批量检查服务启动情况脚本：(v1.0)
1. autorun_checkstart.py，根据服务使用端口号检测启动情况，返回服务进程的pid
2. 在命令行执行命令：
        
        python autorun_checkstart.py
>注1：若系统安装的python版本为3.x.x，命令改用：python3 autorun_checkstart.py
    
>注2：springboot项目路径不可出现"tomcat"字样，tomcat配置的路径要有"tomcat"字样



# maven批量打包脚本：(v1.0)
1. autorun_package.py:顺序打包
命令：
        
        python autorun_package.py
2. autorun_package_multi.py:多线程打包（效率较高），根据具体cpu核数配置开启线程数，默认开启3个线程
支持自定义打包

    全量打包命令：

        python autorun_package_multi.py
    自定义打包命令：

        python autorun_package_multi.py xspch,zjjdApi （自定义多个，以英文逗号隔开）
>注：window环境需安装python

# 脚本批量执行脚本：（v1.0）
1. 根据注释修改sql脚本路径、数据库配置
2. 脚本执行若有执行先后顺序，请用数字作为脚本名前缀（执行默认顺序为升序：1、2、3···）
3. 在命令行执行命令：

        python script_batch_excution_tool.py
>注1：若系统安装的python版本为3.x.x，命令改用：python3 script_batch_excution_tool.py
    
>注2：运行脚本前需安装python第三方包psycopg2，安装命令为：pip install psycopg2（pip为python包管理工具，若未安装，请先安装）