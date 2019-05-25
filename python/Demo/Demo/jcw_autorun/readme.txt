批量启动服务：
1.autorun_startprograms.py为批量启动springboot服务、tomcat脚本，根据main()方法中的注释，修改端口号，以及服务启动文件路径
2.在命令行执行命令：
全部服务重启命令：python autorun_startprograms.py
自定义服务重启命令：
python autorun_startprograms.py xspch,zzjdApi   (后面跟项目名，即jar包名即可，多个以英文逗号隔开)
python autorun_startprograms.py tomcat:8080,tomcat8081  (启动tomcat，tomcat:8080，英文逗号隔开，多个tomcat用逗号隔开）
注：若系统安装的python版本为3.x.x，命令改用：python3 autorun_startprograms.py

批量检查服务启动情况：
1.autorun_checkstart.py，根据服务使用端口号检测启动情况，返回服务进程的pid
2.在命令行执行命令：python autorun_checkstart.py
注：若系统安装的python版本为3.x.x，命令改用：python3 autorun_checkstart.py

maven批量打包工具：
autorun_package.py:顺序打包
autorun_package_multi.py:多线程打包（效率较高），根据具体cpu核数配置开启线程数，默认开启3个线程
注：window环境需安装python