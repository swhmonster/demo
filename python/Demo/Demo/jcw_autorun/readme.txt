批量启动服务：(1.0)
1.autorun_startprograms.py为批量启动springboot服务、tomcat脚本，根据main()方法中的注释，修改端口号，以及服务启动文件路径
2.在命令行执行命令：
全部服务重启命令：
                python autorun_startprograms.py
全部服务停止命令：
                python autorun_startprograms.py shutdown
自定义服务重启命令：
                spring boot ：
                            单个服务：python autorun_startprograms.py xspch
                            多个服务：python autorun_startprograms.py xspch,zzjdApi  (用英文逗号隔开)
                tomcat      ：
                            单个tomcat：python autorun_startprograms.py tomcat:8080
                            多个tomcat：python autorun_startprograms.py tomcat:8080,tomcat8081  (用英文逗号隔开）
自定义服务停止命令：
                单个停止：python autorun_startprograms.py xspch
                多个停止：python autorun_startprograms.py xspch,zjjdApi(用英文逗号隔开）
注：若系统安装的python版本为3.x.x，命令改用：python3 autorun_startprograms.py



批量检查服务启动情况：(1.0)
1.autorun_checkstart.py，根据服务使用端口号检测启动情况，返回服务进程的pid
2.在命令行执行命令：python autorun_checkstart.py
注：若系统安装的python版本为3.x.x，命令改用：python3 autorun_checkstart.py
    springboot项目路径不可出现"tomcat"字样，tomcat配置的路径要有"tomcat"字样



maven批量打包工具：(1.0)
autorun_package.py:顺序打包
命令：python autorun_package.py



autorun_package_multi.py:多线程打包（效率较高），根据具体cpu核数配置开启线程数，默认开启3个线程
支持自定义打包
全量打包命令：python autorun_package_multi.py
自定义打包命令：python autorun_package_multi.py xspch,zjjdApi （自定义多个，以英文逗号隔开）
注：window环境需安装python；pip安装psycopg2,命令：pip install psycopg2