# 备份开关
flag_backup = False

# 优先启动开关
flag_priority = False
# 优先启动配置
priorityDict = dict(["path", "port"])

# 一键启停配置
proMap = dict([
    ("2020", "/home/ba/jar_agxt_2020/agxt.jar"),
    ("2022", "/home/ba/jar_agxtApi_2022/agxtApi.jar"),
    ("2300", "/home/ba/jar_dept-prop_2300/dept-prop.jar"),
    ("2021", "/home/ba/jar_detail_2021/detail.jar"),
    ("2024", "/home/ba/jar_filesys_2024/filesys.jar"),
    ("2025", "/home/ba/jar_serial_2025/serial.jar"),
    ("3939", "/home/ba/jar_xspch_3939/xspch.jar"),
    ("2280", "/home/ba/jar_xxtx_2280/xxtx.jar"),
    ("2019", "/home/ba/jar_zjjdApi_2019/zjjdApi.jar"),
    ("81", "/home/ba/tomcat_ajsl_81"),
    ("82", "/home/ba/tomcat_scdc_82"),
    ("83", "/home/ba/tomcat_zjjd_83")
])

# 自定义启停配置
sysMap = dict([
    ("agxt", "2020"),
    ("agxtApi", "2022"),
    ("dept-prop", "2300"),
    ("detail", "2021"),
    ("filesys", "2024"),
    ("serial", "2025"),
    ("xspch", "3939"),
    ("xxtx", "2280"),
    ("zjjdApi", "2019"),
    ("ajsl", "81"),
    ("scdc", "82"),
    ("zjjd", "83")
])
