# 备份开关
flag_backup = False

# 优先启动开关
flag_priority = False
# 优先启动配置
priorityDict = dict([("path", "port")])

# 一键启停配置
# 办案部署安装路径
path = "/home/ba"
# 安装路径下各系统包详细路径
proMap = dict([
    ("2020", path + "jar_agxt_2020/agxt.jar"),
    ("2022", path + "jar_agxtApi_2022/agxtApi.jar"),
    ("2300", path + "jar_dept-prop_2300/dept-prop.jar"),
    ("2021", path + "jar_detail_2021/detail.jar"),
    ("2024", path + "jar_filesys_2024/filesys.jar"),
    ("2025", path + "jar_serial_2025/serial.jar"),
    ("3939", path + "jar_xspch_3939/xspch.jar"),
    ("2280", path + "jar_xxtx_2280/xxtx.jar"),
    ("2019", path + "jar_zjjdApi_2019/zjjdApi.jar"),
    ("81", path + "tomcat_ajsl_81"),
    ("82", path + "tomcat_scdc_82"),
    ("83", path + "tomcat_zjjd_83")
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
