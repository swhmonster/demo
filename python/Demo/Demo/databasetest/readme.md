# 脚本批量执行脚本：（v1.0）
1. 根据注释修改sql脚本路径、数据库配置
2. 脚本执行若有执行先后顺序，请用数字最为脚本名前缀（执行默认顺序为升序：1、2、3···）
3. 在命令行执行命令：python script_batch_excution_tool.py
>注：若系统安装的python版本为3.x.x，命令改用：python3 script_batch_excution_tool.py
    运行脚本前需安装python第三方包psycopg2，安装命令为：pip install psycopg2（pip为python包管理工具，若未安装，请先安装）