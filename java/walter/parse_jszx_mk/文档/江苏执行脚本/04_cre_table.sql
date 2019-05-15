-- auto create by SMD

set search_path to DB_FY;
commit;

-------------------------
-- 根路径配置
-------------------------

drop table if exists T_PATH;
create table T_PATH
(
    C_NAME                varchar(60)                          NOT NULL,    -- 名称
    C_PATH                varchar(255)                         NULL,        -- 实际路径
constraint PK_PATH primary key( C_NAME )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 法院配置
-------------------------

drop table if exists T_FYPZ;
create table T_FYPZ
(
    N_FY                  int                                  NOT NULL,    -- 法院大排行
    C_MC                  varchar(300)                         NULL,        -- 法院名称
    C_FBDM                varchar(3)                           NULL,        -- 法标代码
    C_PATHNAME            varchar(60)                          NOT NULL,    -- html文书根路径名称
    N_SFJY                varchar(1)                           NULL,        -- 是否进行zip名称与xml名称一致的校验
constraint PK_FYPZ primary key( N_FY )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 版本信息
-------------------------

drop table if exists T_VERSION;
create table T_VERSION
(
    C_VERSION             varchar(20)                          NOT NULL,    -- 版本信息
    C_MODULENAME          varchar(50)                          NULL,        -- 模块名称
    D_UPDATEDATE          timestamp                            NULL         -- 更新时间
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 业务代码类型
-------------------------

drop table if exists T_YWDMLX;
create table T_YWDMLX
(
    N_BH                  int                                  NOT NULL,    -- 编号
    C_MC                  varchar(300)                         NULL,        -- 代码类型名称
    N_YX                  int                                  NULL,        -- 是否有效
    N_KWH                 int                                  NULL,        -- 是否可维护
	C_LX                  varchar(300)                         NULL,        -- 代码类型
constraint PK_YWDMLX primary key( N_BH )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 业务代码
-------------------------

drop table if exists T_YWDM;
create table T_YWDM
(
    N_BH_DMLX             int                                  NOT NULL,    -- 代码类型编号
    N_DM                  int                                  NOT NULL,    -- 代码
    C_MC                  varchar(300)                         NULL,        -- 代码名称
    N_YX                  int                                  NULL,        -- 是否有效
    N_KWH                 int                                  NULL,        -- 可否维护
constraint PK_YWDM primary key( N_BH_DMLX,N_DM )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 案由代码
-------------------------

drop table if exists T_AYDM;
create table T_AYDM
(
    N_BH                  int                                  NOT NULL,    -- 案由代码
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_FDM                 int                                  NULL,        -- 父案由代码
    N_AYLB                int                                  NULL,        -- 案由类别
    C_FJDM                varchar(300)                         NULL,        -- 分级代码
    C_XSSX                varchar(300)                         NULL,        -- 显示顺序
    N_XSSX                int                                  NULL,        -- 显示顺序
    N_YX                  int                                  NULL,        -- 有效
constraint PK_AYDM primary key( N_BH )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 案由代码映射
-------------------------

drop table if exists T_AYDM_MAP;
create table T_AYDM_MAP
(
    N_BH                  int                                  NOT NULL,    -- 代码主键
    N_DM_NEW              int                                  NULL,        -- 新案由代码
    N_DM_OLD              int                                  NULL,        -- 旧案由代码
    N_AYLB_NEW            int                                  NULL,        -- 新案由类别
    N_AYLB_OLD            int                                  NULL,        -- 旧案由类别
    N_MAP_TYPE            int                                  NULL,        -- 映射类型
    N_YX                  int                                  NULL,        -- 有效
constraint PK_AYDM_MAP primary key( N_BH )
);
 commit; 
-- auto create by SMD



set search_path to DB_SJB;
commit;

-------------------------
-- 组织机构XML文件日志表
-------------------------

drop table if exists T_ZZJGXML;
create table T_ZZJGXML
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SJB              char(32)                             NOT NULL,    -- 数据包ID
    C_XML                 varchar(255)                         NULL,        -- 组织机构XML文件名
    N_FY                  int                                  NULL,        -- 法院大排行
    N_ZT                  int                                  NULL,        -- 状态
    C_JYJG                varchar(900)                         NULL,        -- 校验结果
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    C_JYJGGL              varchar(255)                         NULL,        -- 校验结果归类
constraint PK_ZZJGXML primary key( C_ID )
);

 commit; 

set search_path to DB_SJB;
commit;

-------------------------
-- 接收任务数据包
-------------------------

drop table if exists T_SJB;
create table T_SJB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ZIP                 varchar(255)                         NOT NULL,    -- 文件名含相对路径
    N_ZT                  int                                  NULL,        -- 状态
    D_RKSJ                timestamp                            NULL,        -- 入库时间
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    N_FY                  int                                  NULL,        -- 法院大排行
    N_TYPE                int                                  NULL,        -- 数据包类型
    D_DCSJ                timestamp                            NULL,        -- 导出时间
    N_NUMBER              int                                  NULL,        -- 服务序号
    N_RECEIVEID           int                                  NULL,        -- 接收服务ID
constraint PK_SJB primary key( C_ID )
);

 commit; 

set search_path to DB_SJB;
commit;

-------------------------
-- 案件XML文件日志表
-------------------------

drop table if exists T_AJXML;
create table T_AJXML
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SJB              char(32)                             NOT NULL,    -- 数据包ID
    C_XML                 varchar(255)                         NULL,        -- 案件XML文件名
    C_AJLB                varchar(4)                           NULL,        -- 案件类别
    N_AJBS                numeric(28, 0)                       NULL,        -- 案件标识
    N_FY                  int                                  NULL,        -- 法院大排行
    C_AH                  varchar(255)                         NULL,        -- 案号
    D_LARQ                timestamp                            NULL,        -- 立案日期
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_AJJZJD              int                                  NULL,        -- 案件进展阶段
    N_ZT                  int                                  NULL,        -- 状态
    C_JYJG                varchar(900)                         NULL,        -- 校验结果
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    C_JYJGGL              varchar(255)                         NULL,        -- 校验结果归类
constraint PK_AJXML primary key( C_ID )
);

 commit; 

set search_path to DB_SJB;
commit;


-------------------------
-- 删除案件XML日志
-------------------------

drop table if exists T_DLXML;
create table T_DLXML
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SJB              char(32)                             NOT NULL,    -- 数据包ID
    C_XML                 varchar(255)                         NULL,        -- 删除案件XML文件名
    N_FY                  int                                  NULL,        -- 法院大排行
    N_ZT                  int                                  NULL,        -- 状态
    C_JYJG                varchar(900)                         NULL,        -- 校验结果
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    C_JYJGGL              varchar(255)                         NULL,        -- 校验结果归类
constraint PK_DLXML primary key( C_ID )
);

 commit; 

set search_path to DB_SJB;
commit;

-------------------------
-- 其他案件XML文件日志表
-------------------------

drop table if exists T_AQAJXML;
create table T_AQAJXML
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SJB              char(32)                             NOT NULL,    -- 数据包ID
    C_XML                 varchar(255)                         NULL,        -- 案件XML文件名
    C_AJLB                varchar(2)                           NULL,        -- 案件类别
    N_AJBS                numeric(17, 0)                       NULL,        -- 案件标识
    N_FY                  int                                  NULL,        -- 法院大排行
    C_AH                  varchar(255)                         NULL,        -- 案号
    D_LARQ                timestamp                            NULL,        -- 立案日期
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_AJJZJD              int                                  NULL,        -- 案件进展阶段
    N_ZT                  int                                  NULL,        -- 状态
    C_JYJG                varchar(900)                         NULL,        -- 校验结果
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    C_JYJGGL              varchar(255)                         NULL,        -- 校验结果归类
constraint PK_AQAJXML primary key( C_ID )
);

 commit; 

 
-- auto create by SMD

set search_path to DB_SCZX;
commit;

-------------------------
-- 首次执行案件主表
-------------------------

drop table if exists T_SCZX;
create table T_SCZX
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    C_ZXHZSY              varchar(300)                         NULL,        -- 执行回转事由
    C_HFZXSY              varchar(300)                         NULL,        -- 恢复执行事由
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    C_ZXBDNR              varchar(300)                         NULL,        -- 执行标的内容
    C_YZXBDXW             varchar(300)                         NULL,        -- 应执行标的行为
    C_YZXBDW              varchar(300)                         NULL,        -- 应执行标的物
    C_CCXQY               varchar(300)                         NULL,        -- 财产性权益
    N_YZXBDJE             numeric(20, 4)                       NULL,        -- 应执行标的金额
    N_YGSQZXF             numeric(20, 4)                       NULL,        -- 预估申请执行费
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    C_BQAH                varchar(300)                         NULL,        -- 保全案号
    N_FYDM                int                                  NULL,        -- 法院代码
    C_BQCDLX              varchar(300)                         NULL,        -- 保全裁定类型
    C_SQZBHZXCYLXLXQQ     varchar(300)                         NULL,        -- 申请中包含执行迟延履行利息请求
    N_SQZYMQCYLXLXSE      numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行利息数额
    C_SQZBHZXCYLXJQQ      varchar(300)                         NULL,        -- 申请中包含执行迟延履行金请求
    N_SQZYMQCYLXJSE       numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行金数额
    C_SCZXAH              varchar(300)                         NULL,        -- 首次执行案号
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    C_CFAJQX              varchar(300)                         NULL,        -- 拆分案件情形
    N_FQLXZQS             int                                  NULL,        -- 分期履行总期数
    N_YLXQS               int                                  NULL,        -- 已履行期数
    C_SQGFQSNY            varchar(300)                         NULL,        -- 申请给付起始年月
    C_SQGFJZNY            varchar(300)                         NULL,        -- 申请给付截止年月
    C_SQZXNR              varchar(300)                         NULL,        -- 申请执行内容
    C_WCNR                varchar(300)                         NULL,        -- 未成年人
    C_DYSJ                varchar(300)                         NULL,        -- 地域涉及
    C_AJSJ                varchar(300)                         NULL,        -- 案件涉及
    C_DA                  varchar(300)                         NULL,        -- 大案
    C_YA                  varchar(300)                         NULL,        -- 要案
    C_XLXAJ               varchar(300)                         NULL,        -- 新类型案件
    C_YNAJ                varchar(300)                         NULL,        -- 疑难案件
    C_JTAJ                varchar(300)                         NULL,        -- 集团案件
    C_MDJHAJ              varchar(300)                         NULL,        -- 矛盾激化案件
    C_BYZDAJ              varchar(300)                         NULL,        -- 本院重点案件
    C_ZXYJLX              varchar(300)                         NULL,        -- 执行依据类型
    C_ZCZXYJDW            varchar(300)                         NULL,        -- 作出执行依据单位
    C_ZXYJWSWH            varchar(300)                         NULL,        -- 执行依据文书文号
    C_ZXYJZW              text                                 NULL,        -- 执行依据主文
    D_ZXYJWSSXRQ          timestamp                            NULL,        -- 执行依据文书生效日期
    D_ZXYJWSLXZHQX        timestamp                            NULL,        -- 执行依据文书履行最后期限
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_FCZXTZSRQ           timestamp                            NULL,        -- 发出执行通知书日期
    N_CCBGQX              int                                  NULL,        -- 财产报告期限
    D_CBRCSRQ             timestamp                            NULL,        -- 承办人初审日期
    C_SFYCC               varchar(300)                         NULL,        -- 是否有财产
    C_ZXTZS               text                                 NULL,        -- 执行通知书
    C_ZXTZWSMC            text                                 NULL,        -- 执行通知文书名称
    N_ZQSE                numeric(20, 4)                       NULL,        -- 债权数额
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FFYY                varchar(300)                         NULL,        -- 发放原因
    D_FFRQ                timestamp                            NULL,        -- 发放日期
    C_ZQPZBH              varchar(300)                         NULL,        -- 债权凭证编号
    C_ZQRBGQK             varchar(300)                         NULL,        -- 债权人变更情况
    C_ZQBHQK              varchar(300)                         NULL,        -- 债权变化情况
    D_JXRQ                timestamp                            NULL,        -- 激销日期
    D_ZXRQ                timestamp                            NULL,        -- 注销日期
    C_FQZX                varchar(300)                         NULL,        -- 分期执行
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    D_JARQ                timestamp                            NULL,        -- 结案日期
    C_ZXWBSY              varchar(300)                         NULL,        -- 执行完毕事由
    C_BYSLYY              varchar(300)                         NULL,        -- 不予受理原因
    C_BYZXLY              varchar(300)                         NULL,        -- 不予执行理由
    C_ZJBCZXSY            varchar(300)                         NULL,        -- 终结本次执行事由
    C_ZJZXSY              varchar(300)                         NULL,        -- 终结执行事由
    C_XASY                varchar(300)                         NULL,        -- 销案事由
    N_JABDJE              numeric(20, 4)                       NULL,        -- 结案标的金额
    N_SJDWJE              numeric(20, 4)                       NULL,        -- 实际到位金额
    N_SQRFQBDJE           numeric(20, 4)                       NULL,        -- 申请人放弃标的金额
    N_SWZXBDJE            numeric(20, 4)                       NULL,        -- 尚未执行标的金额
    N_QZCYLXJ             numeric(20, 4)                       NULL,        -- 其中迟延履行金
    N_QZCYLXLX            numeric(20, 4)                       NULL,        -- 其中迟延履行利息
    C_TDWDWQK             varchar(300)                         NULL,        -- 特定物到位情况
    C_XWLXQK              varchar(300)                         NULL,        -- 行为履行情况
    C_CCXQYZXQK           varchar(300)                         NULL,        -- 财产性权益执行情况
    N_JAWS                int                                  NULL,        -- 结案文书
    C_SJBZ                varchar(300)                         NULL,        -- 实结标志
    C_SQRSQZJBCZXCX       varchar(300)                         NULL,        -- 申请人申请终结本次执行程序
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
    C_SFYZXWB             varchar(300)                         NULL,        -- 是否已执行完毕
    N_ZBGLR               int                                  NULL,        -- 终本管理人
    C_GKHPBZT             varchar(300)                         NULL,        -- 公开或屏蔽状态
    N_SYZXBDJE            numeric(20, 4)                       NULL,        -- 剩余执行标的金额
    D_CCBGZJRQ            timestamp                            NULL,        -- 财产报告终结日期
    C_ZJQX                varchar(300)                         NULL,        -- 终结情形
    C_CDS                 text                                 NULL,        -- 裁定书
    C_KHYX                varchar(300)                         NULL,        -- 开户银行
    C_ZHMC                varchar(300)                         NULL,        -- 账户名称
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
constraint PK_SCZX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_SCZXYZXAJXX;
create table T_SCZXYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_SCZXYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_SCZXZXZZCYZC;
create table T_SCZXZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_SCZXZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_SCZXZXZZCYBGJL;
create table T_SCZXZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_SCZXZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_SCZXKCZXQXJL;
create table T_SCZXKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_SCZXKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_SCZXYZZXQXJL;
create table T_SCZXYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_SCZXYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_SCZXFTSYJL;
create table T_SCZXFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_SCZXFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行线索
-------------------------

drop table if exists T_SCZXZXXS;
create table T_SCZXZXXS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXS                int                                  NULL,        -- 序号_线索
    C_XSLY                varchar(300)                         NULL,        -- 线索来源
    C_XSNR                varchar(300)                         NULL,        -- 线索内容
    D_XSTGRQ              timestamp                            NULL,        -- 线索提供日期
    C_XSZT                varchar(300)                         NULL,        -- 线索状态
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_GXXXZT              varchar(300)                         NULL,        -- 更新信息状态
    N_XSTGR               int                                  NULL,        -- 线索提供人
    C_XSTGDQTR            varchar(300)                         NULL,        -- 线索提供的其他人
    C_XSTGSDJD            varchar(300)                         NULL,        -- 线索提供时的阶段
    D_XSHSRQ              timestamp                            NULL,        -- 线索核实日期
constraint PK_SCZXZXXS primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 财产调查
-------------------------

drop table if exists T_SCZXCCDC;
create table T_SCZXCCDC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCCDC              int                                  NULL,        -- 序号_财产调查
    C_DCDW                varchar(300)                         NULL,        -- 调查单位
    C_DCDWFL              varchar(300)                         NULL,        -- 调查单位分类
    N_BDCR                int                                  NULL,        -- 被调查人
    D_DCSJ                timestamp                            NULL,        -- 调查时间
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_DCNR                varchar(300)                         NULL,        -- 调查内容
    C_DCJG                varchar(300)                         NULL,        -- 调查结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_DCYY                varchar(300)                         NULL,        -- 调查原因
    C_TZS                 text                                 NULL,        -- 通知书
    C_DCSZDW              varchar(300)                         NULL,        -- 调查所在单位
    C_DCJZD               varchar(300)                         NULL,        -- 调查居住地
    C_DCZSD               varchar(300)                         NULL,        -- 调查住所地
    C_DCJYCS              varchar(300)                         NULL,        -- 调查经营场所
    C_DCZFGJJ             varchar(300)                         NULL,        -- 调查住房公积金
    C_DCJRLCCP            varchar(300)                         NULL,        -- 调查金融理财产品
    C_DCSYLBX             varchar(300)                         NULL,        -- 调查收益类保险
    C_DCGXHL              varchar(300)                         NULL,        -- 调查股息红利
    C_DCSHJZ              varchar(300)                         NULL,        -- 调查生活居住
    C_DCLDJY              varchar(300)                         NULL,        -- 调查劳动就业
    C_DCSR                varchar(300)                         NULL,        -- 调查收入
    C_DCZQ                varchar(300)                         NULL,        -- 调查债权
    C_DCGQ                varchar(300)                         NULL,        -- 调查股权
    C_DCQYXZJSL           varchar(300)                         NULL,        -- 调查企业性质及设立
    C_DCHBFL              varchar(300)                         NULL,        -- 调查合并分立
    C_DCTZJY              varchar(300)                         NULL,        -- 调查投资经营
    C_DCZQZW              varchar(300)                         NULL,        -- 调查债权债务
    C_DCBGZZ              varchar(300)                         NULL,        -- 调查变更终止
    C_DCBL                varchar(300)                         NULL,        -- 调查笔录
constraint PK_SCZXCCDC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 约谈
-------------------------

drop table if exists T_SCZXYT;
create table T_SCZXYT
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYT                int                                  NULL,        -- 序号_约谈
    C_BYTR                text                                 NULL,        -- 被约谈人
    D_YTSJ                timestamp                            NULL,        -- 约谈时间
    C_YTFS                varchar(300)                         NULL,        -- 约谈方式
    N_TGXSQX              int                                  NULL,        -- 提供线索期限
    C_YTSY                varchar(300)                         NULL,        -- 约谈事由
    C_YTCS                varchar(300)                         NULL,        -- 约谈场所
    C_YTCJRY              text                                 NULL,        -- 约谈参加人员
    C_SFTYZB              varchar(300)                         NULL,        -- 是否同意终本
constraint PK_SCZXYT primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 传唤
-------------------------

drop table if exists T_SCZXCH;
create table T_SCZXCH
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCH                int                                  NULL,        -- 序号_传唤
    N_BCHR                int                                  NULL,        -- 被传唤人
    D_CHSJ                timestamp                            NULL,        -- 传唤时间
    C_GZDWHZZ             varchar(300)                         NULL,        -- 工作单位或住址
    C_YDCS                varchar(300)                         NULL,        -- 应到处所
    C_CHSY                varchar(300)                         NULL,        -- 传唤事由
    C_CHQK                varchar(300)                         NULL,        -- 传唤情况
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_CHWSXH              text                                 NULL,        -- 传唤文书序号
constraint PK_SCZXCH primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拘传
-------------------------

drop table if exists T_SCZXJC;
create table T_SCZXJC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHJC                int                                  NULL,        -- 序号_拘传
    N_BJCR                int                                  NULL,        -- 被拘传人
    C_JCYY                varchar(300)                         NULL,        -- 拘传原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_JCDD                varchar(300)                         NULL,        -- 拘传地点
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_JCP                 text                                 NULL,        -- 拘传票
    C_ZXJCQK              varchar(300)                         NULL,        -- 执行拘传情况
constraint PK_SCZXJC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 搜查
-------------------------

drop table if exists T_SCZXSC;
create table T_SCZXSC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSC                int                                  NULL,        -- 序号_搜查
    N_BSCR                int                                  NULL,        -- 被搜查人
    C_ZCRSFHZW            varchar(300)                         NULL,        -- 在场人身份和职务
    D_SCSJ                timestamp                            NULL,        -- 搜查时间
    C_SCDD                varchar(300)                         NULL,        -- 搜查地点
    C_NSCBDW              varchar(300)                         NULL,        -- 拟搜查标的物
    C_QZKQ                varchar(300)                         NULL,        -- 强制开启
    C_KQJG                varchar(300)                         NULL,        -- 开启结果
    C_TQDX                varchar(300)                         NULL,        -- 提取对象
    D_GHRQ                timestamp                            NULL,        -- 归还日期
    C_SCJG                varchar(300)                         NULL,        -- 搜查结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_SCWSXH              text                                 NULL,        -- 搜查文书序号
constraint PK_SCZXSC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 悬赏执行
-------------------------

drop table if exists T_SCZXXSZX;
create table T_SCZXXSZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXSZX              int                                  NULL,        -- 序号_悬赏执行
    N_BZXR                int                                  NULL,        -- 被执行人
    D_GGFBRQ              timestamp                            NULL,        -- 公告发布日期
    C_FBFS                varchar(300)                         NULL,        -- 发布方式
    C_GGNR                varchar(300)                         NULL,        -- 公告内容
    D_XSJSRQ              timestamp                            NULL,        -- 悬赏结束日期
    C_ZXQK                varchar(300)                         NULL,        -- 执行情况
    N_ZXJE                numeric(20, 4)                       NULL,        -- 执行金额
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_XSWSXH              text                                 NULL,        -- 悬赏文书序号
    D_XSZXSQRQ            timestamp                            NULL,        -- 悬赏执行申请日期
    C_MTFBPT              varchar(300)                         NULL,        -- 媒体发布平台
    D_ZTGGSJ              timestamp                            NULL,        -- 张贴公告时间
    C_ZTGGDZ              varchar(300)                         NULL,        -- 张贴公告地址
    C_QTFBPTMC            varchar(300)                         NULL,        -- 其他发布平台名称
    D_QTFBPTSJ            timestamp                            NULL,        -- 其他发布平台时间
    N_QTFBPTFY            numeric(20, 4)                       NULL,        -- 其他发布平台费用
    C_SFZXSQ              varchar(300)                         NULL,        -- 是否准许申请
    C_JSFF                varchar(300)                         NULL,        -- 计算方法
    C_LQTJ                varchar(300)                         NULL,        -- 领取条件
    N_GGWS                int                                  NULL,        -- 公告文书
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    N_SPR                 int                                  NULL,        -- 审批人
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_YGRYDSF             varchar(300)                         NULL,        -- 有关人员的身份
    C_XSZWQK              varchar(300)                         NULL,        -- 线索掌握情况
    C_SQZXRDZQSFSX        varchar(300)                         NULL,        -- 申请执行人的债权是否实现
    C_XSJESFFF            varchar(300)                         NULL,        -- 悬赏金额是否发放
    N_FFJE                numeric(20, 4)                       NULL,        -- 发放金额
    C_BFFDLY              varchar(300)                         NULL,        -- 不发放的理由
constraint PK_SCZXXSZX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 司法审计
-------------------------

drop table if exists T_SCZXSFSJ;
create table T_SCZXSFSJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFSJ              int                                  NULL,        -- 序号_司法审计
    N_BSJR                int                                  NULL,        -- 被审计人
    C_SJYY                varchar(300)                         NULL,        -- 审计原因
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_SJJG                varchar(300)                         NULL,        -- 审计机构
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    C_SFSJJG              varchar(300)                         NULL,        -- 审计结果
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQD              text                                 NULL,        -- 查明财产清单
    C_SJWSXH              text                                 NULL,        -- 审计文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_SFZXSQ              varchar(300)                         NULL,        -- 是否准许申请
    C_BZXYY               varchar(300)                         NULL,        -- 不准许原因
    N_SJFFDR              int                                  NULL,        -- 审计费负担人
    C_BZXRFDLY            varchar(300)                         NULL,        -- 被执行人负担理由
    N_FDSE                numeric(20, 4)                       NULL,        -- 负担数额
    C_SFJN                varchar(300)                         NULL,        -- 是否缴纳
constraint PK_SCZXSFSJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产
-------------------------

drop table if exists T_SCZXYCMCC;
create table T_SCZXYCMCC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCMCC              int                                  NULL,        -- 序号_查明财产
    N_BZXR                int                                  NULL,        -- 被执行人
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMFS                varchar(300)                         NULL,        -- 查明方式
    D_CMRQ                timestamp                            NULL,        -- 查明日期
    C_CCLX                varchar(300)                         NULL,        -- 财产类型
    C_CCMC                varchar(300)                         NULL,        -- 财产名称
    C_CCZT                varchar(300)                         NULL,        -- 财产状态
    C_CCQDFJ              text                                 NULL,        -- 财产清单附件
    C_CCZBJG              varchar(300)                         NULL,        -- 财产甄别结果
    D_CCZBRQ              timestamp                            NULL,        -- 财产甄别日期
    C_CCBKZXYY            varchar(300)                         NULL,        -- 财产不可执行原因
    C_CCYJFL              varchar(300)                         NULL,        -- 财产一级分类
constraint PK_SCZXYCMCC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 查封
-------------------------

drop table if exists T_SCZXCF;
create table T_SCZXCF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCF                int                                  NULL,        -- 序号_查封
    C_CFLX                varchar(300)                         NULL,        -- 查封类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CFWSYR              int                                  NULL,        -- 查封物所有人
    C_CFQDXH              text                                 NULL,        -- 查封清单序号
    C_CFQD                text                                 NULL,        -- 查封清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_CFSXRQ              timestamp                            NULL,        -- 查封生效日期
    D_CFJMRQ              timestamp                            NULL,        -- 查封届满日期
    C_CFDD                varchar(300)                         NULL,        -- 查封地点
    C_CFFF                varchar(300)                         NULL,        -- 查封方法
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_CFWSXH              text                                 NULL,        -- 查封文书序号
    C_JCCFYY              varchar(300)                         NULL,        -- 解除查封原因
    D_JFRQ                timestamp                            NULL,        -- 解封日期
    C_JCCFWSXH            text                                 NULL,        -- 解除查封文书序号
constraint PK_SCZXCF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 扣押
-------------------------

drop table if exists T_SCZXKY;
create table T_SCZXKY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKY                int                                  NULL,        -- 序号_扣押
    C_KYLX                varchar(300)                         NULL,        -- 扣押类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_KYSXRQ              timestamp                            NULL,        -- 扣押生效日期
    D_KYJMRQ              timestamp                            NULL,        -- 扣押届满日期
    C_KYDD                varchar(300)                         NULL,        -- 扣押地点
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_KYQDXH              text                                 NULL,        -- 扣押清单序号
    C_KYQD                text                                 NULL,        -- 扣押清单
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_KYWSXH              text                                 NULL,        -- 扣押文书序号
    C_JCKYYY              varchar(300)                         NULL,        -- 解除扣押原因
    D_JKRQ                timestamp                            NULL,        -- 解扣日期
    C_JCKYWS              varchar(300)                         NULL,        -- 解除扣押文书
constraint PK_SCZXKY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 冻结
-------------------------

drop table if exists T_SCZXDJ;
create table T_SCZXDJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDJ                int                                  NULL,        -- 序号_冻结
    C_DJLX                varchar(300)                         NULL,        -- 冻结类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    C_DJQDXH              text                                 NULL,        -- 冻结清单序号
    C_DJQD                text                                 NULL,        -- 冻结清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_DJSXRQ              timestamp                            NULL,        -- 冻结生效日期
    D_DJJMRQ              timestamp                            NULL,        -- 冻结届满日期
    N_SJDJJE              numeric(20, 4)                       NULL,        -- 实际冻结金额
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_DJWSXH              text                                 NULL,        -- 冻结文书序号
    C_JCDJYY              varchar(300)                         NULL,        -- 解除冻结原因
    D_JDRQ                timestamp                            NULL,        -- 解冻日期
    C_JCDJWS              text                                 NULL,        -- 解除冻结文书
constraint PK_SCZXDJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 强制管理
-------------------------

drop table if exists T_SCZXQZGL;
create table T_SCZXQZGL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZGL              int                                  NULL,        -- 序号_强制管理
    N_BZXR                int                                  NULL,        -- 被执行人
    C_BGLCCXH             text                                 NULL,        -- 被管理财产序号
    C_BGLCC               varchar(300)                         NULL,        -- 被管理财产
    C_GLR                 varchar(300)                         NULL,        -- 管理人
    C_QZGLYY              varchar(300)                         NULL,        -- 强制管理原因
    D_CCCKRQ              timestamp                            NULL,        -- 财产查扣日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_QZGLWS              text                                 NULL,        -- 强制管理文书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCQZGLWS            text                                 NULL,        -- 解除强制管理文书
constraint PK_SCZXQZGL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 划拨
-------------------------

drop table if exists T_SCZXHB;
create table T_SCZXHB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHHB                int                                  NULL,        -- 序号_划拨
    N_SQZXR               int                                  NULL,        -- 申请执行人
    N_HBCKSYR             int                                  NULL,        -- 划拨存款所有人
    C_HBZHJZH             varchar(300)                         NULL,        -- 划拨账户及帐号
    N_HBJE                numeric(20, 4)                       NULL,        -- 划拨金额
    C_HBCCLX              varchar(300)                         NULL,        -- 划拨财产类型
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_HRZHJZH             varchar(300)                         NULL,        -- 划入帐户及帐号
    D_HBRQ                timestamp                            NULL,        -- 划拨日期
    C_HRZHSYR             varchar(300)                         NULL,        -- 划入帐号所有人
    C_KHWSXH              text                                 NULL,        -- 扣划文书序号
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_WNHBYY              varchar(300)                         NULL,        -- 未能划拨原因
    N_HBHZ                int                                  NULL,        -- 划拨回执
constraint PK_SCZXHB primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 评估
-------------------------

drop table if exists T_SCZXPG;
create table T_SCZXPG
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPG                int                                  NULL,        -- 序号_评估
    C_SQF                 text                                 NULL,        -- 申请方
    C_BSQF                text                                 NULL,        -- 被申请方
    D_PGJZRQ              timestamp                            NULL,        -- 评估基准日期
    C_YJPGFDSR            text                                 NULL,        -- 预交评估费当事人
    C_YSCL                text                                 NULL,        -- 移送材料
    C_BDWQKSM             text                                 NULL,        -- 标的物情况说明
    C_WTPGSX              text                                 NULL,        -- 委托评估事项
    C_WTPGYSB             text                                 NULL,        -- 委托评估移送表
    N_JBR                 int                                  NULL,        -- 经办人
    D_JBRQ                timestamp                            NULL,        -- 经办日期
    C_SFYY                varchar(300)                         NULL,        -- 是否异议
    C_YYR                 varchar(300)                         NULL,        -- 异议人
    D_TCYYSJ              timestamp                            NULL,        -- 提出异议时间
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    N_TCYYJBR             int                                  NULL,        -- 提出异议经办人
    D_TCYYJBRQ            timestamp                            NULL,        -- 提出异议经办日期
    C_YYCLWC              varchar(300)                         NULL,        -- 异议处理完成
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_YYCLSM              text                                 NULL,        -- 异议处理说明
    D_YYCLRQ              timestamp                            NULL,        -- 异议处理日期
    N_YYCLJBR             int                                  NULL,        -- 异议处理经办人
    D_YYCLJBRQ            timestamp                            NULL,        -- 异议处理经办日期
constraint PK_SCZXPG primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拍卖
-------------------------

drop table if exists T_SCZXPM;
create table T_SCZXPM
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPM                int                                  NULL,        -- 序号_拍卖
    C_SQF                 text                                 NULL,        -- 申请方
    C_BSQF                text                                 NULL,        -- 被申请方
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    N_PMCDSXH             int                                  NULL,        -- 拍卖裁定书序号
    D_PMCDRQ              timestamp                            NULL,        -- 拍卖裁定日期
    N_PMCDJBR             int                                  NULL,        -- 拍卖裁定经办人
    D_PMCDJBRQ            timestamp                            NULL,        -- 拍卖裁定经办日期
    C_SFTJPM              varchar(300)                         NULL,        -- 是否提交拍卖
    C_PMFS                varchar(300)                         NULL,        -- 拍卖方式
    C_SFQDPMJG            varchar(300)                         NULL,        -- 是否确定拍卖机构
    C_PMJGMC              varchar(300)                         NULL,        -- 拍卖机构名称
    C_JGXDFS              varchar(300)                         NULL,        -- 机构选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    C_JGLXR               varchar(300)                         NULL,        -- 机构联系人
    C_JGLXFS              varchar(300)                         NULL,        -- 机构联系方式
    C_PMWSXH              text                                 NULL,        -- 拍卖文书序号
    N_QDJGJBR             int                                  NULL,        -- 确定机构经办人
    D_QDJGJBRQ            timestamp                            NULL,        -- 确定机构经办日期
constraint PK_SCZXPM primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 变卖
-------------------------

drop table if exists T_SCZXBM;
create table T_SCZXBM
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBM                int                                  NULL,        -- 序号_变卖
    C_BMYY                varchar(300)                         NULL,        -- 变卖原因
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    N_BMCDSXH             int                                  NULL,        -- 变卖裁定书序号
    D_BMCDRQ              timestamp                            NULL,        -- 变卖裁定日期
    C_BMFS                varchar(300)                         NULL,        -- 变卖方式
    C_BMJGMC              varchar(300)                         NULL,        -- 变卖机构名称
    C_JGXDFS              varchar(300)                         NULL,        -- 机构选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    C_JGLXR               varchar(300)                         NULL,        -- 机构联系人
    C_BMWTWS              text                                 NULL,        -- 变卖委托文书
constraint PK_SCZXBM primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 以物抵债
-------------------------

drop table if exists T_SCZXYWDZ;
create table T_SCZXYWDZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYWDZ              int                                  NULL,        -- 序号_以物抵债
    C_YWDZYY              varchar(300)                         NULL,        -- 以物抵债原因
    C_BDWQDXH             text                                 NULL,        -- 标的物清单序号
    C_BDWQD               text                                 NULL,        -- 标的物清单
    N_SYQR                int                                  NULL,        -- 所有权人
    N_ZDJE                numeric(20, 4)                       NULL,        -- 折抵金额
    D_ZDRQ                timestamp                            NULL,        -- 折抵日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_YWDZWS              text                                 NULL,        -- 以物抵债文书
constraint PK_SCZXYWDZ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拍抵移交
-------------------------

drop table if exists T_SCZXPDYJ;
create table T_SCZXPDYJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPDYJ              int                                  NULL,        -- 序号_拍抵移交
    C_QSBGLX              varchar(300)                         NULL,        -- 权属变更类型
    C_BDWQDXH             text                                 NULL,        -- 标的物清单序号
    C_BDWQDMS             text                                 NULL,        -- 标的物清单描述
    C_YSYQR               text                                 NULL,        -- 原所有权人
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    C_QSBGWS              text                                 NULL,        -- 权属变更文书
    C_CCYJWB              varchar(300)                         NULL,        -- 财产移交完毕
    D_YJRQ                timestamp                            NULL,        -- 移交日期
    C_CCZYRSFJBYJ         varchar(300)                         NULL,        -- 财产占有人是否拒不移交
    C_QZZXQK              varchar(300)                         NULL,        -- 强制执行情况
constraint PK_SCZXPDYJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 扣留与提取
-------------------------

drop table if exists T_SCZXKLYTQ;
create table T_SCZXKLYTQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKLYTQ             int                                  NULL,        -- 序号_扣留与提取
    C_LB                  varchar(300)                         NULL,        -- 类别
    N_BZXR                int                                  NULL,        -- 被执行人
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    N_NKLTQJE             numeric(20, 4)                       NULL,        -- 拟扣留提取金额
    N_KLTQWSXH            int                                  NULL,        -- 扣留提取文书序号
    D_KLHTQRQ             timestamp                            NULL,        -- 扣留或提取日期
    C_TQZH                varchar(300)                         NULL,        -- 提取帐号
    N_KLTQJE              numeric(20, 4)                       NULL,        -- 扣留提取金额
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_XZZXR               varchar(300)                         NULL,        -- 协执执行人
    C_WNKLTQYY            varchar(300)                         NULL,        -- 未能扣留提取原因
constraint PK_SCZXKLYTQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 强制迁出与退出
-------------------------

drop table if exists T_SCZXQZQCYTC;
create table T_SCZXQZQCYTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZQCYTC           int                                  NULL,        -- 序号_强制迁出与退出
    N_BZXR                int                                  NULL,        -- 被执行人
    D_QQGGRQ              timestamp                            NULL,        -- 强迁公告日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_QQWSXH              text                                 NULL,        -- 强迁文书序号
    C_BQCRHBTCR           varchar(300)                         NULL,        -- 被迁出人或被退出人
    D_QCHTCRQ             timestamp                            NULL,        -- 迁出或退出日期
    C_JZR                 varchar(300)                         NULL,        -- 见证人
    C_ZXJG                varchar(300)                         NULL,        -- 执行结果
    C_CCCLQK              varchar(300)                         NULL,        -- 财产处理情况
constraint PK_SCZXQZQCYTC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 其他强制措施
-------------------------

drop table if exists T_SCZXQTQZCS;
create table T_SCZXQTQZCS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQTQZCS            int                                  NULL,        -- 序号_其他强制措施
    C_QZDX                text                                 NULL,        -- 强制对象
    C_CSMC                varchar(300)                         NULL,        -- 措施名称
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_QTQZSSWS            text                                 NULL,        -- 其他强制实施文书
    D_SSRQ                timestamp                            NULL,        -- 实施日期
    C_SSDD                varchar(300)                         NULL,        -- 实施地点
    C_SSNR                varchar(300)                         NULL,        -- 实施内容
    C_SSJG                varchar(300)                         NULL,        -- 实施结果
constraint PK_SCZXQTQZCS primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 罚款
-------------------------

drop table if exists T_SCZXFK;
create table T_SCZXFK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFK                int                                  NULL,        -- 序号_罚款
    N_BFKR                int                                  NULL,        -- 被罚款人
    C_FKYY                varchar(300)                         NULL,        -- 罚款原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    D_FKRQ                timestamp                            NULL,        -- 罚款日期
    N_FKJE                numeric(20, 4)                       NULL,        -- 罚款金额
    C_FKWS                text                                 NULL,        -- 罚款文书
    D_LXRQ                timestamp                            NULL,        -- 履行日期
    N_LXJE                numeric(20, 4)                       NULL,        -- 履行金额
    N_FYXH                int                                  NULL,        -- 复议序号
    D_FYSQRQ              timestamp                            NULL,        -- 复议申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYSQS               int                                  NULL,        -- 复议申请书
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    C_DFYHXCL             varchar(300)                         NULL,        -- 对复议后续处理
    N_FYJDS               int                                  NULL,        -- 复议决定书
constraint PK_SCZXFK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拘留
-------------------------

drop table if exists T_SCZXJL;
create table T_SCZXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHJL                int                                  NULL,        -- 序号_拘留
    N_BJLR                int                                  NULL,        -- 被拘留人
    C_JLDD                varchar(300)                         NULL,        -- 拘留地点
    C_JLYY                varchar(300)                         NULL,        -- 拘留原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_JLYYSM              varchar(300)                         NULL,        -- 拘留原因说明
    N_JLTS                int                                  NULL,        -- 拘留天数
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_ZXJLDW              varchar(300)                         NULL,        -- 执行拘留单位
    C_JLJDS               text                                 NULL,        -- 拘留决定书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCJLWS              text                                 NULL,        -- 解除拘留文书
    N_FYXH                int                                  NULL,        -- 复议序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    N_FYSQS               int                                  NULL,        -- 复议申请书
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    N_FYJDS               int                                  NULL,        -- 复议决定书
constraint PK_SCZXJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 犯罪移送
-------------------------

drop table if exists T_SCZXFZYS;
create table T_SCZXFZYS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFZYS              int                                  NULL,        -- 序号_犯罪移送
    N_FZXYR               int                                  NULL,        -- 犯罪嫌疑人
    D_YSRQ                timestamp                            NULL,        -- 移送日期
    C_SYDW                varchar(300)                         NULL,        -- 受移单位
    C_YSYY                varchar(300)                         NULL,        -- 移送原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_SXFZSSXW            varchar(300)                         NULL,        -- 涉嫌犯罪事实行为
    N_YSCLFS              int                                  NULL,        -- 移送材料份数
    C_FZYSWS              text                                 NULL,        -- 犯罪移送文书
constraint PK_SCZXFZYS primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 赔偿责任
-------------------------

drop table if exists T_SCZXPCZR;
create table T_SCZXPCZR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPCZR              int                                  NULL,        -- 序号_赔偿责任
    N_PCZRR               int                                  NULL,        -- 赔偿责任人
    C_PCZRYY              varchar(300)                         NULL,        -- 赔偿责任原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    D_CDPCRQ              timestamp                            NULL,        -- 裁定赔偿日期
    D_XZTZSJ              timestamp                            NULL,        -- 协执通知时间
    C_XZZXDSX             varchar(300)                         NULL,        -- 协助执行的事项
    C_JBLXDSSHLY          varchar(300)                         NULL,        -- 拒不履行的事实和理由
    D_JBLXYWDSJ           timestamp                            NULL,        -- 拒不履行义务的时间
    N_DJDJE               numeric(20, 4)                       NULL,        -- 冻结的金额
    N_ZYDJE               numeric(20, 4)                       NULL,        -- 转移的金额
    D_ZLZHTZSJ            timestamp                            NULL,        -- 责令追回通知时间
    D_ZLZHSJ              timestamp                            NULL,        -- 责令追回时间
    C_CKDCC               varchar(300)                         NULL,        -- 查扣冻财产
    D_CKDSJ               timestamp                            NULL,        -- 查扣冻时间
    C_BPCR                varchar(300)                         NULL,        -- 被赔偿人
    N_CDPCQX              int                                  NULL,        -- 裁定赔偿期限
    N_PCJE                numeric(20, 4)                       NULL,        -- 赔偿金额
    N_BPCRSSDSE           numeric(20, 4)                       NULL,        -- 被赔偿人损失的数额
    C_PCZRWS              text                                 NULL,        -- 赔偿责任文书
constraint PK_SCZXPCZR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 强制限制
-------------------------

drop table if exists T_SCZXQZXZ;
create table T_SCZXQZXZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZXZ              int                                  NULL,        -- 序号_强制限制
    N_BXZR                int                                  NULL,        -- 被限制人
    C_XZYY                varchar(300)                         NULL,        -- 限制原因
    C_XZZL                varchar(300)                         NULL,        -- 限制种类
    C_XZNR                varchar(300)                         NULL,        -- 限制内容
    C_XZDW                varchar(300)                         NULL,        -- 协执单位
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    N_QZXZWS              int                                  NULL,        -- 强制限制文书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCQZXZWS            text                                 NULL,        -- 解除强制限制文书
    N_FYXH                int                                  NULL,        -- 复议序号
    D_FYSQRQ              timestamp                            NULL,        -- 复议申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    N_FYSQS               int                                  NULL,        -- 复议申请书
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYFY                int                                  NULL,        -- 复议法院
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_DFRQ                timestamp                            NULL,        -- 答复日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
constraint PK_SCZXQZXZ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 失信被执行人
-------------------------

drop table if exists T_SCZXSXBZXR;
create table T_SCZXSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHSXBZXR           varchar(300)                         NULL,        -- 流水号_失信被执行人
    C_TQFS                varchar(300)                         NULL,        -- 提起方式
    C_AH                  varchar(300)                         NULL,        -- 案号
    N_SXBZXR              int                                  NULL,        -- 失信被执行人
    C_BZXRMC              varchar(300)                         NULL,        -- 被执行人名称
    C_BZXRLX              varchar(300)                         NULL,        -- 被执行人类型
    C_XB                  varchar(300)                         NULL,        -- 性别
    N_NL                  int                                  NULL,        -- 年龄
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_JGFZRXM             varchar(300)                         NULL,        -- 机构负责人姓名
    C_FLWSQRDYW           text                                 NULL,        -- 法律文书确认的义务
    C_BZXRLXQK            varchar(300)                         NULL,        -- 被执行人履行情况
    C_YLXQK               text                                 NULL,        -- 已履行情况
    C_WLXQK               text                                 NULL,        -- 未履行情况
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXAYMC              varchar(300)                         NULL,        -- 执行案由名称
    C_ZXFYMC              varchar(300)                         NULL,        -- 执行法院名称
    C_ZXYJWH              varchar(300)                         NULL,        -- 执行依据文号
    D_FBSJ                timestamp                            NULL,        -- 发布时间
    C_SXBZXRXWQK          varchar(300)                         NULL,        -- 失信被执行人行为情况
    C_SXWSWH              varchar(300)                         NULL,        -- 失信文书文号
    C_NRSXJDS             text                                 NULL,        -- 纳入失信决定书
    N_ZXFY                int                                  NULL,        -- 执行法院
    C_SXZT                varchar(300)                         NULL,        -- 失信状态
    C_ZXYJZZDW            varchar(300)                         NULL,        -- 执行依据制作单位
    D_SQSJ                timestamp                            NULL,        -- 申请时间
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_JGFZRZJHM           varchar(300)                         NULL,        -- 机构负责人证件号码
constraint PK_SCZXSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 变更和追加当事人
-------------------------

drop table if exists T_SCZXBGHZJDSR;
create table T_SCZXBGHZJDSR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBGHZJ             int                                  NULL,        -- 序号_变更和追加
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_BGHZJBZXRLX         varchar(300)                         NULL,        -- 变更或追加被执行人类型
    C_BGHZJYY             varchar(300)                         NULL,        -- 变更或追加原因
    N_BGDYDSR             int                                  NULL,        -- 变更的原当事人
    N_BGHZJDXDSR          int                                  NULL,        -- 变更或追加的新当事人
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    N_CDWS                int                                  NULL,        -- 裁定文书
    C_BGHZJSY             varchar(300)                         NULL,        -- 变更或追加事由
    C_QDYY                varchar(300)                         NULL,        -- 启动原因
    C_BGHZJSQZXRLX        varchar(300)                         NULL,        -- 变更或追加申请执行人类型
constraint PK_SCZXBGHZJDSR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行费承担情况
-------------------------

drop table if exists T_SCZXZXFCDQK;
create table T_SCZXZXFCDQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFYJCD             int                                  NULL,        -- 序号_费用及承担
    N_CDR                 int                                  NULL,        -- 承担人
    N_AJSLF               numeric(20, 4)                       NULL,        -- 案件受理费
    N_SQF                 numeric(20, 4)                       NULL,        -- 申请费
    N_QTFY                numeric(20, 4)                       NULL,        -- 其他费用
    N_YCDFYE              numeric(20, 4)                       NULL,        -- 应承担费用额
constraint PK_SCZXZXFCDQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行费缴纳记录
-------------------------

drop table if exists T_SCZXZXFJNJL;
create table T_SCZXZXFJNJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXFJN             int                                  NULL,        -- 序号_执行费缴纳
    N_CDR                 int                                  NULL,        -- 承担人
    N_AJSLF               numeric(20, 4)                       NULL,        -- 案件受理费
    N_SQF                 numeric(20, 4)                       NULL,        -- 申请费
    N_QTFY                numeric(20, 4)                       NULL,        -- 其他费用
    N_JNZJE               numeric(20, 4)                       NULL,        -- 缴纳总金额
    C_JNR                 varchar(300)                         NULL,        -- 缴纳人
    D_JNRQ                timestamp                            NULL,        -- 交纳日期
    C_SJHM                varchar(300)                         NULL,        -- 收据号码
constraint PK_SCZXZXFJNJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行费司法救助情况
-------------------------

drop table if exists T_SCZXZXFSFJZQK;
create table T_SCZXZXFSFJZQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJZ              int                                  NULL,        -- 序号_司法救助
    N_SJZR                int                                  NULL,        -- 受救助人
    C_SQJZLX              varchar(300)                         NULL,        -- 申请救助类型
    N_SQJJJE              numeric(20, 4)                       NULL,        -- 申请减交金额
    C_SSYLY               varchar(300)                         NULL,        -- 事实与理由
    C_HJQX                varchar(300)                         NULL,        -- 缓交期限
    C_SQJZYY              varchar(300)                         NULL,        -- 申请救助原因
    N_PZR                 int                                  NULL,        -- 批准人
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    C_JJAJLX              varchar(300)                         NULL,        -- 救济案件类型
    C_JJDX                varchar(300)                         NULL,        -- 救济对象
constraint PK_SCZXZXFSFJZQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行款缴纳
-------------------------

drop table if exists T_SCZXZXKJN;
create table T_SCZXZXKJN
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKJN            varchar(300)                         NULL,        -- 流水号_执行款缴纳
    N_JNDSR               int                                  NULL,        -- 缴纳当事人
    C_JNR                 varchar(300)                         NULL,        -- 交纳人
    N_JNJE                numeric(20, 4)                       NULL,        -- 交纳金额
    C_JNKXLB              varchar(300)                         NULL,        -- 交纳款项类别
    D_JNRQ                timestamp                            NULL,        -- 交纳日期
    C_SJHM                varchar(300)                         NULL,        -- 收据号码
    C_DZFS                varchar(300)                         NULL,        -- 到账方式
    C_LYAH                varchar(300)                         NULL,        -- 来源案号
constraint PK_SCZXZXKJN primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行款发放
-------------------------

drop table if exists T_SCZXZXKFF;
create table T_SCZXZXKFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKFF            varchar(300)                         NULL,        -- 流水号_执行款发放
    N_BCFFZE              numeric(20, 4)                       NULL,        -- 本次发放总额
    D_SQRQ                timestamp                            NULL,        -- 申请日期
constraint PK_SCZXZXKFF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 对行为的执行
-------------------------

drop table if exists T_SCZXDXWDZX;
create table T_SCZXDXWDZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDXWDZX            int                                  NULL,        -- 序号_对行为的执行
    C_XWDNR               varchar(300)                         NULL,        -- 行为的内容
    D_XWLXQX              timestamp                            NULL,        -- 行为履行期限
constraint PK_SCZXDXWDZX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行到期债权
-------------------------

drop table if exists T_SCZXZXDQZQ;
create table T_SCZXZXDQZQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXDQZQ            int                                  NULL,        -- 序号_执行到期债权
    C_LY                  varchar(300)                         NULL,        -- 来源
    N_DQZWR               int                                  NULL,        -- 到期债务人
    N_ZQSE                numeric(20, 4)                       NULL,        -- 债权数额
    D_FCTZSRQ             timestamp                            NULL,        -- 发出通知书日期
    N_YYXH                int                                  NULL,        -- 异议序号
    D_YYRQ                timestamp                            NULL,        -- 异议日期
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_KBBCLYY             varchar(300)                         NULL,        -- 抗辩不成立原因
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    N_QDDZQSE             numeric(20, 4)                       NULL,        -- 确定的债权数额
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    N_TCYYR               int                                  NULL,        -- 提出异议人
    C_ZXYYLX              varchar(300)                         NULL,        -- 执行异议类型
    N_ZXYYCDWS            int                                  NULL,        -- 执行异议裁定文书
constraint PK_SCZXZXDQZQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 协助执行
-------------------------

drop table if exists T_SCZXXZZX;
create table T_SCZXXZZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXZZX              int                                  NULL,        -- 序号_协助执行
    C_XZYWRLX             varchar(300)                         NULL,        -- 协助义务人类型
    C_XZYWR               varchar(300)                         NULL,        -- 协助义务人
    C_XZSX                varchar(300)                         NULL,        -- 协助事项
    D_XZTZFCRQ            timestamp                            NULL,        -- 协助通知发出日期
    C_JYXZ                varchar(300)                         NULL,        -- 给予协助
    C_LXQK                varchar(300)                         NULL,        -- 履行情况
constraint PK_SCZXXZZX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 参与分配信息
-------------------------

drop table if exists T_SCZXCYFPXX;
create table T_SCZXCYFPXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCYFP              int                                  NULL,        -- 序号_参与分配
    C_FYLX                varchar(300)                         NULL,        -- 法院类型
    D_YJRQ                timestamp                            NULL,        -- 移交日期
    C_DFPCC               varchar(300)                         NULL,        -- 待分配财产
    N_DFPZJE              numeric(20, 4)                       NULL,        -- 待分配总金额
    C_CYFPJG              varchar(300)                         NULL,        -- 参与分配结果
constraint PK_SCZXCYFPXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 自动履行
-------------------------

drop table if exists T_SCZXZDLX;
create table T_SCZXZDLX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZDLX              int                                  NULL,        -- 序号_自动履行
    N_BZXR                int                                  NULL,        -- 被执行人
    N_SQR                 int                                  NULL,        -- 申请人
    N_LXJE                numeric(20, 4)                       NULL,        -- 履行金额
    C_LXBDW               varchar(300)                         NULL,        -- 履行标的物
    C_LXBDXW              varchar(300)                         NULL,        -- 履行标的行为
    D_LXRQ                timestamp                            NULL,        -- 履行日期
constraint PK_SCZXZDLX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 委托或移送执行
-------------------------

drop table if exists T_SCZXWTHYSZX;
create table T_SCZXWTHYSZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YSYY                varchar(300)                         NULL,        -- 移送原因
    C_YSWS                text                                 NULL,        -- 移送文书
    D_AJYJRQ              timestamp                            NULL,        -- 案卷移交日期
    N_SYSFY               int                                  NULL,        -- 受移送法院
    D_HFRQ                timestamp                            NULL,        -- 回复日期
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_HFLAAH              varchar(300)                         NULL,        -- 回复立案案号
constraint PK_SCZXWTHYSZX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行异议
-------------------------

drop table if exists T_SCZXZXYY;
create table T_SCZXZXYY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXYY              int                                  NULL,        -- 序号_执行异议
    C_TCYYR               varchar(300)                         NULL,        -- 提出异议人
    D_TCYYRQ              timestamp                            NULL,        -- 提出异议日期
    C_ZXYYLX              varchar(300)                         NULL,        -- 执行异议类型
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    C_CDJG                varchar(300)                         NULL,        -- 裁定结果
    D_SDFDYJTZRQ          timestamp                            NULL,        -- 收到反对意见通知日期
    N_ZXYYCDWS            int                                  NULL,        -- 执行异议裁定文书
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    N_SQFYXH              int                                  NULL,        -- 申请复议序号
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    C_CDAH                varchar(300)                         NULL,        -- 裁定案号
    C_CBRYJ               varchar(300)                         NULL,        -- 承办人意见
constraint PK_SCZXZXYY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_SCZXSDJL;
create table T_SCZXSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_SCZXSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_SCZXPBJL;
create table T_SCZXPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_SCZXPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 妨碍执行行为处理
-------------------------

drop table if exists T_SCZXFAZXXWCL;
create table T_SCZXFAZXXWCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFAZX              int                                  NULL,        -- 序号_妨碍执行
    N_XWR                 int                                  NULL,        -- 行为人
    C_XWLX                varchar(300)                         NULL,        -- 行为类型
    D_CLRQ                timestamp                            NULL,        -- 处理日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    N_FKJE                numeric(20, 4)                       NULL,        -- 罚款金额
    D_FKJNRQ              timestamp                            NULL,        -- 罚款缴纳日期
    N_JLTS                int                                  NULL,        -- 拘留天数
    C_JLCS                varchar(300)                         NULL,        -- 拘留场所
    C_CLWS                text                                 NULL,        -- 处理文书
constraint PK_SCZXFAZXXWCL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 回避情况
-------------------------

drop table if exists T_SCZXHBQK;
create table T_SCZXHBQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHHB                int                                  NULL,        -- 序号_回避
    C_HBLX                varchar(300)                         NULL,        -- 回避类型
    D_SQHBRQ              timestamp                            NULL,        -- 申请回避日期
    C_HBYY                varchar(300)                         NULL,        -- 回避原因
    N_HBR                 int                                  NULL,        -- 回避人
    N_HBSQR               int                                  NULL,        -- 回避申请人
    C_HBCLJG              varchar(300)                         NULL,        -- 回避处理结果
    C_HBJDR               varchar(300)                         NULL,        -- 回避决定人
    D_HBJDRQ              timestamp                            NULL,        -- 回避决定日期
    N_HBJDS               int                                  NULL,        -- 回避决定书
constraint PK_SCZXHBQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行担保情况
-------------------------

drop table if exists T_SCZXZXDBQK;
create table T_SCZXZXDBQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDB                int                                  NULL,        -- 序号_担保
    C_SY                  varchar(300)                         NULL,        -- 事由
    N_DSR                 int                                  NULL,        -- 当事人
    C_DBFS                varchar(300)                         NULL,        -- 担保方式
    N_DBR                 int                                  NULL,        -- 担保人
    C_YDSRGX              varchar(300)                         NULL,        -- 与当事人关系
    N_BZJE                numeric(20, 4)                       NULL,        -- 保证金额
    D_DBRQ                timestamp                            NULL,        -- 担保日期
    C_DBWMC               varchar(300)                         NULL,        -- 担保物名称
    C_DBFW                varchar(300)                         NULL,        -- 担保范围
    N_DBQX                int                                  NULL,        -- 担保期限
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    C_DBWSXH              text                                 NULL,        -- 担保文书序号
constraint PK_SCZXZXDBQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_SCZXSFJY;
create table T_SCZXSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_SCZXSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_SCZXAJPY;
create table T_SCZXAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_SCZXAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_SCZXSWHTL;
create table T_SCZXSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_SCZXSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行复议
-------------------------

drop table if exists T_SCZXZXFY;
create table T_SCZXZXFY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXFY              int                                  NULL,        -- 序号_执行复议
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYSQS               int                                  NULL,        -- 复议申请书
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    N_FYJDS               int                                  NULL,        -- 复议决定书
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    C_DFYDHXCL            varchar(300)                         NULL,        -- 对复议的后续处理
constraint PK_SCZXZXFY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_SCZXZXLCJD;
create table T_SCZXZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_SCZXZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_SCZXZXZTXX;
create table T_SCZXZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_SCZXZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行外勤
-------------------------

drop table if exists T_SCZXZXWQ;
create table T_SCZXZXWQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXWQ              int                                  NULL,        -- 序号_执行外勤
    C_ZXYWLB              varchar(300)                         NULL,        -- 执行业务类别
    C_SPMC                varchar(300)                         NULL,        -- 视频名称
    C_LMTDZ               varchar(300)                         NULL,        -- 流媒体地址
    D_ZXRQ                timestamp                            NULL,        -- 执行日期
    C_ZXDD                varchar(300)                         NULL,        -- 执行地点
    N_SZ                  int                                  NULL,        -- 时长
    N_SPWJDX              int                                  NULL,        -- 视频文件大小
    C_SPJJ                varchar(300)                         NULL,        -- 视频简介
    C_ZZR                 varchar(300)                         NULL,        -- 制作人
    C_DJR                 varchar(300)                         NULL,        -- 登记人
    D_DJRQ                timestamp                            NULL,        -- 登记日期
constraint PK_SCZXZXWQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 屏蔽被执行人
-------------------------

drop table if exists T_SCZXPBBZXR;
create table T_SCZXPBBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHPBBZXR           varchar(300)                         NULL,        -- 流水号_屏蔽被执行人
    N_PBBZXR              int                                  NULL,        -- 屏蔽被执行人
    C_PBYY                text                                 NULL,        -- 屏蔽原因
    D_PBSQRQ              timestamp                            NULL,        -- 屏蔽申请日期
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_SCZXPBBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_SCZXZXRZ;
create table T_SCZXZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_SCZXZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行督办事项
-------------------------

drop table if exists T_SCZXZXDBSX;
create table T_SCZXZXDBSX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    C_DBZT                varchar(300)                         NULL,        -- 督办主题
    D_DBQX                timestamp                            NULL,        -- 督办期限
    C_SXLX                varchar(300)                         NULL,        -- 事项类型
    C_ZXDBXFJL            text                                 NULL,        -- 执行督办下发记录
    D_XZSJ                timestamp                            NULL,        -- 下载时间
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_SCZXZXDBSX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行督办下发记录
-------------------------

drop table if exists T_SCZXZXDBXFJL;
create table T_SCZXZXDBXFJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    N_XH                  int                                  NULL,        -- 序号
    N_FQFY                int                                  NULL,        -- 发起法院
    C_DBYQ                text                                 NULL,        -- 督办要求
    D_XFSJ                timestamp                            NULL,        -- 下发时间
    D_JSDBXXSJ            timestamp                            NULL,        -- 接收督办信息时间
    C_JSDBXXRXM           varchar(300)                         NULL,        -- 接收督办信息人姓名
    C_WSXX                text                                 NULL,        -- 文书信息
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
constraint PK_SCZXZXDBXFJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行委托信息
-------------------------

drop table if exists T_SCZXZXWTXX;
create table T_SCZXZXWTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_STFY                int                                  NULL,        -- 受托法院
    C_SFSNWT              varchar(300)                         NULL,        -- 是否省内委托
    C_WTCJRXM             varchar(300)                         NULL,        -- 委托创建人姓名
    D_WTSJ                timestamp                            NULL,        -- 委托时间
    C_CBRLXFS             varchar(300)                         NULL,        -- 承办人联系方式
    D_BLQX                timestamp                            NULL,        -- 办理期限
    C_WTCKLCCPSX          varchar(300)                         NULL,        -- 委托存款理财产品事项
    C_WTBDCXYDJDDCSX      varchar(300)                         NULL,        -- 委托不动产需要登记的动产事项
    C_WTGQJQTTZQYSX       varchar(300)                         NULL,        -- 委托股权及其他投资权益事项
    C_WTSDFLWSSX          varchar(300)                         NULL,        -- 委托送达法律文书事项
    C_WTDCSX              varchar(300)                         NULL,        -- 委托调查事项
    C_WTXQ                text                                 NULL,        -- 委托详情
    C_WTSQWS              text                                 NULL,        -- 委托申请文书
    C_WTSXCLZT            varchar(300)                         NULL,        -- 委托事项处理状态
constraint PK_SCZXZXWTXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 委托受理
-------------------------

drop table if exists T_SCZXWTSL;
create table T_SCZXWTSL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    C_WTBH                varchar(300)                         NULL,        -- 委托编号
    D_SLSJ                timestamp                            NULL,        -- 受理时间
    C_SLRXM               varchar(300)                         NULL,        -- 受理人姓名
    C_SLRLXFS             varchar(300)                         NULL,        -- 受理人联系方式
constraint PK_SCZXWTSL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 委托办理
-------------------------

drop table if exists T_SCZXWTBL;
create table T_SCZXWTBL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    D_BJSJ                timestamp                            NULL,        -- 办结时间
    C_BJSM                text                                 NULL,        -- 办结说明
    C_PTTHYY              varchar(300)                         NULL,        -- 平台退回原因
    C_PTWTSXZT            varchar(300)                         NULL,        -- 平台委托事项状态
    C_LCXTWTBLWS          text                                 NULL,        -- 流程系统委托办理文书
constraint PK_SCZXWTBL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 委托办理确认
-------------------------

drop table if exists T_SCZXWTBLQR;
create table T_SCZXWTBLQR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_QRXH                int                                  NULL,        -- 确认序号
    C_QRJG                varchar(300)                         NULL,        -- 确认结果
    C_BLJGTHYY            varchar(300)                         NULL,        -- 办理结果退回原因
    D_QRRQ                timestamp                            NULL,        -- 确认日期
constraint PK_SCZXWTBLQR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 终本后自动网络查询信息
-------------------------

drop table if exists T_SCZXZBHZDWLCXX;
create table T_SCZXZBHZDWLCXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZDCX              int                                  NULL,        -- 序号_自动查询
    C_CXFS                varchar(300)                         NULL,        -- 查询方式
    N_BZXR                int                                  NULL,        -- 被执行人
    C_BZXRXMHMC           varchar(300)                         NULL,        -- 被执行人姓名或名称
    C_XZDWMC              varchar(300)                         NULL,        -- 协执单位名称
    C_XYFL                varchar(300)                         NULL,        -- 行业分类
    D_FSXZDWSJ            timestamp                            NULL,        -- 发送协助单位时间
    D_XZDWFKSJ            timestamp                            NULL,        -- 协执单位反馈时间
    C_SFYJG               varchar(300)                         NULL,        -- 是否有结果
    C_CKLSH               varchar(300)                         NULL,        -- 查控流水号
constraint PK_SCZXZBHZDWLCXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 终本财产查询信息
-------------------------

drop table if exists T_SCZXZBCCCXXX;
create table T_SCZXZBCCCXXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCCCX              int                                  NULL,        -- 序号_财产查询
    C_CXFS                varchar(300)                         NULL,        -- 查询方式
    N_BZXR                int                                  NULL,        -- 被执行人
    C_BZXRXMHMC           varchar(300)                         NULL,        -- 被执行人姓名或名称
    C_XZDWMC              varchar(300)                         NULL,        -- 协执单位名称
    C_CCLX                varchar(300)                         NULL,        -- 财产类型
    C_CCMC                text                                 NULL,        -- 财产名称
    N_CCSL                int                                  NULL,        -- 财产数量
    N_CCJE                numeric(20, 4)                       NULL,        -- 财产金额
    C_CKLSH               varchar(300)                         NULL,        -- 查控流水号
constraint PK_SCZXZBCCCXXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 终本恢复建议及处理信息
-------------------------

drop table if exists T_SCZXZBHFJYJCLX;
create table T_SCZXZBHFJYJCLX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHHFJYJCL           int                                  NULL,        -- 序号_恢复建议及处理
    C_HFJYLY              varchar(300)                         NULL,        -- 恢复建议来源
    C_JYNR                text                                 NULL,        -- 建议内容
    D_JYSJ                timestamp                            NULL,        -- 建议时间
    N_BZXR                int                                  NULL,        -- 被执行人
    C_BZXRXMHMC           varchar(300)                         NULL,        -- 被执行人姓名或名称
    C_SFCL                varchar(300)                         NULL,        -- 是否处理
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    D_CLSJ                timestamp                            NULL,        -- 处理时间
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_HFZXAH              varchar(300)                         NULL,        -- 恢复执行案号
    C_CLJGSM              text                                 NULL,        -- 处理结果说明
constraint PK_SCZXZBHFJYJCLX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 报告财产令
-------------------------

drop table if exists T_SCZXBGCCL;
create table T_SCZXBGCCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_BZXR                int                                  NULL,        -- 被执行人
    C_QDYY                varchar(300)                         NULL,        -- 启动原因
    D_BGCCLFCRQ           timestamp                            NULL,        -- 报告财产令发出日期
    D_CCBGQJJMRQ          timestamp                            NULL,        -- 财产报告期间届满日期
    C_BGCCL               text                                 NULL,        -- 报告财产令
    N_YQTS                int                                  NULL,        -- 延期天数
    C_YQYY                varchar(300)                         NULL,        -- 延期原因
    D_YQSQRQ              timestamp                            NULL,        -- 延期申请日期
    C_YQSPJL              varchar(300)                         NULL,        -- 延期审批结论
    C_YQSPYJ              varchar(300)                         NULL,        -- 延期审批意见
    N_YQSPR               int                                  NULL,        -- 延期审批人
    D_YQSPRQ              timestamp                            NULL,        -- 延期审批日期
    D_CCBGRQ              timestamp                            NULL,        -- 财产报告日期
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
constraint PK_SCZXBGCCL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 延缓发放
-------------------------

drop table if exists T_SCZXYHFF;
create table T_SCZXYHFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHAKDZLSH          varchar(300)                         NULL,        -- 流水号_案款到账流水号
    N_MXXH                int                                  NULL,        -- 明细序号
    C_YHYY                varchar(300)                         NULL,        -- 延缓原因
    N_YHTS                int                                  NULL,        -- 延缓天数
constraint PK_SCZXYHFF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行款提存
-------------------------

drop table if exists T_SCZXZXKTC;
create table T_SCZXZXKTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKTCLSH         varchar(300)                         NULL,        -- 流水号_执行款提存流水号
    N_YE                  numeric(20, 4)                       NULL,        -- 余额
    N_TCJE                numeric(20, 4)                       NULL,        -- 提存金额
    C_TCYY                varchar(300)                         NULL,        -- 提存原因
    D_TCRQ                timestamp                            NULL,        -- 提存日期
constraint PK_SCZXZXKTC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行物登记
-------------------------

drop table if exists T_SCZXZXWDJ;
create table T_SCZXZXWDJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BH                  varchar(300)                         NULL,        -- 编号
    C_ZXWMC               varchar(300)                         NULL,        -- 执行物名称
    C_KWLX                varchar(300)                         NULL,        -- 款物类型
    N_BGFY                int                                  NULL,        -- 保管法院
    C_BGBM                varchar(300)                         NULL,        -- 保管部门
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    N_BZXRXMHMC           int                                  NULL,        -- 被执行人姓名或名称
    D_ZXRQ                timestamp                            NULL,        -- 执行日期
    C_SQPZ                varchar(300)                         NULL,        -- 收取凭证
constraint PK_SCZXZXWDJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行物发放
-------------------------

drop table if exists T_SCZXZXWFF;
create table T_SCZXZXWFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_LSHZXWFF            int                                  NULL,        -- 流水号_执行物发放
    C_ZXWBH               varchar(300)                         NULL,        -- 执行物编号
    C_LQR                 varchar(300)                         NULL,        -- 领取人
    N_FFDSR               int                                  NULL,        -- 发放当事人
    C_SFFFWB              varchar(300)                         NULL,        -- 是否发放完毕
    C_LQRZJH              varchar(300)                         NULL,        -- 领取人证件号
    C_LQRZJLX             varchar(300)                         NULL,        -- 领取人证件类型
    D_LQRQ                timestamp                            NULL,        -- 领取日期
constraint PK_SCZXZXWFF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行物提存
-------------------------

drop table if exists T_SCZXZXWTC;
create table T_SCZXZXWTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXWTCLSH         varchar(300)                         NULL,        -- 流水号_执行物提存流水号
    C_BZXRXMHMC           varchar(300)                         NULL,        -- 被执行人姓名或名称
    C_TCZXW               text                                 NULL,        -- 提存执行物
    C_TCYY                varchar(300)                         NULL,        -- 提存原因
    D_TCRQ                timestamp                            NULL,        -- 提存日期
constraint PK_SCZXZXWTC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_SCZXCPWSSWXX;
create table T_SCZXCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_SCZXCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_SCZXCPWSBSWXX;
create table T_SCZXCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_SCZXCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_SCZXZLJL;
create table T_SCZXZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_SCZXZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产现金
-------------------------

drop table if exists T_SCZXYCMCCXJ;
create table T_SCZXYCMCCXJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_BZ                  varchar(300)                         NULL,        -- 币种
constraint PK_SCZXYCMCCXJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产银行存款
-------------------------

drop table if exists T_SCZXYCMCCYHCK;
create table T_SCZXYCMCCYHCK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YHMC                varchar(300)                         NULL,        -- 银行名称
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_KHWD                varchar(300)                         NULL,        -- 开户网点
    C_KHWDDM              varchar(300)                         NULL,        -- 开户网点代码
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    D_XHSJ                timestamp                            NULL,        -- 销户时间
    C_BZ                  varchar(300)                         NULL,        -- 币种
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_SFZT                varchar(300)                         NULL,        -- 是否透支
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_GBZJZH              varchar(300)                         NULL,        -- 关联资金账户
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_SCZXYCMCCYHCK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产互联网金融信息
-------------------------

drop table if exists T_SCZXYCMCCHLWJRXX;
create table T_SCZXYCMCCHLWJRXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCRMC               varchar(300)                         NULL,        -- 注册人名称
    C_ZCRZJLX             varchar(300)                         NULL,        -- 注册人证件类型
    C_ZCRZJHM             varchar(300)                         NULL,        -- 注册人证件号码
    C_ZCRSJHM             varchar(300)                         NULL,        -- 注册人手机号码
    C_ZH                  varchar(300)                         NULL,        -- 账户
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    D_ZHZCSJ              timestamp                            NULL,        -- 账户注册时间
    C_JJBZ                varchar(300)                         NULL,        -- 计价币种
    N_ZCSE                numeric(20, 4)                       NULL,        -- 资产数额
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_SCZXYCMCCHLWJRXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他资金
-------------------------

drop table if exists T_SCZXYCMCCQTZJ;
create table T_SCZXYCMCCQTZJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZJMC                varchar(300)                         NULL,        -- 资金名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_KHYH                varchar(300)                         NULL,        -- 开户银行
    C_KHMC                varchar(300)                         NULL,        -- 开户名称
    D_CXSJ                timestamp                            NULL,        -- 查询时间
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_DWMC                varchar(300)                         NULL,        -- 单位名称
    C_DWZH                varchar(300)                         NULL,        -- 单位账号
constraint PK_SCZXYCMCCQTZJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产车辆
-------------------------

drop table if exists T_SCZXYCMCCCL;
create table T_SCZXYCMCCCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCDJJG              varchar(300)                         NULL,        -- 注册登记机关
    C_JDCDJBH             varchar(300)                         NULL,        -- 机动车登记编号
    C_HPZL                varchar(300)                         NULL,        -- 号牌种类
    C_CLPP                varchar(300)                         NULL,        -- 车辆品牌
    C_CLLX                varchar(300)                         NULL,        -- 车辆类型
    C_CLSBH               varchar(300)                         NULL,        -- 车辆识别号
    C_FDJH                varchar(300)                         NULL,        -- 发动机号
    C_CLXH                varchar(300)                         NULL,        -- 车辆型号
    D_ZCDJRQ              timestamp                            NULL,        -- 注册登记日期
    D_CLCCRQ              timestamp                            NULL,        -- 车辆出厂日期
    C_CLSYXZ              varchar(300)                         NULL,        -- 车辆使用性质
    C_CSYS                varchar(300)                         NULL,        -- 车身颜色
    C_JDCZT               varchar(300)                         NULL,        -- 机动车状态
    C_SFNS                varchar(300)                         NULL,        -- 是否年审
    C_NK                  varchar(300)                         NULL,        -- 年款
    C_CX                  varchar(300)                         NULL,        -- 车系
    C_PL                  varchar(300)                         NULL,        -- 排量
    N_XSLC                numeric(20, 4)                       NULL,        -- 行驶里程
    C_CK                  varchar(300)                         NULL,        -- 车况
    C_BXQK                varchar(300)                         NULL,        -- 保险情况
constraint PK_SCZXYCMCCCL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产住宅用房
-------------------------

drop table if exists T_SCZXYCMCCZZYF;
create table T_SCZXYCMCCZZYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    N_S                   int                                  NULL,        -- 室
    N_T                   int                                  NULL,        -- 厅
    N_W                   int                                  NULL,        -- 卫
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_SCZXYCMCCZZYF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产建设用地使用权
-------------------------

drop table if exists T_SCZXYCMCCJSYDSYQ;
create table T_SCZXYCMCCJSYDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    C_CQZH                varchar(300)                         NULL,        -- 产权证号
    N_TDMJ                numeric(20, 4)                       NULL,        -- 土地面积
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    N_FEBL                numeric(20, 4)                       NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型 
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    C_YT                  varchar(300)                         NULL,        -- 用途
    N_QLR                 int                                  NULL,        -- 权利人
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_SCZXYCMCCJSYDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产股票
-------------------------

drop table if exists T_SCZXYCMCCGP;
create table T_SCZXYCMCCGP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CYZQMC              varchar(300)                         NULL,        -- 持有证券名称
    C_KHJG                varchar(300)                         NULL,        -- 开户机构
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    C_ZQZHH               varchar(300)                         NULL,        -- 证券帐户号
    C_ZHLB                varchar(300)                         NULL,        -- 帐户类别
    N_ZHZJJE              numeric(20, 4)                       NULL,        -- 帐户资金金额
    C_ZHZT                varchar(300)                         NULL,        -- 帐户状态
    C_ZQDM                varchar(300)                         NULL,        -- 证券代码
    C_ZQJC                varchar(300)                         NULL,        -- 证券简称
    N_CGSL                numeric(20, 4)                       NULL,        -- 持股数量
    C_ZQXZ                varchar(300)                         NULL,        -- 证券性质
    C_ZHMC                varchar(300)                         NULL,        -- 账户名称
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_DQTGDY              varchar(300)                         NULL,        -- 当前托管单元
    C_JSCYRMC             varchar(300)                         NULL,        -- 结算参与人名称
    C_GFXZ                varchar(300)                         NULL,        -- 股份性质
    C_LTLX                varchar(300)                         NULL,        -- 流通类型
    C_QYLB                varchar(300)                         NULL,        -- 权益类别
    N_KJYSL               numeric(20, 4)                       NULL,        -- 可交易数量
constraint PK_SCZXYCMCCGP primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产基金
-------------------------

drop table if exists T_SCZXYCMCCJJ;
create table T_SCZXYCMCCJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_JJMC                varchar(300)                         NULL,        -- 基金名称
    N_JJSL                numeric(20, 4)                       NULL,        -- 基金数量
    C_JJXSDW              varchar(300)                         NULL,        -- 基金销售单位
    C_JJBH                varchar(300)                         NULL,        -- 基金编号
constraint PK_SCZXYCMCCJJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产债券
-------------------------

drop table if exists T_SCZXYCMCCZQ;
create table T_SCZXYCMCCZQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZQMC                varchar(300)                         NULL,        -- 债券名称
    N_ZQMZ                numeric(20, 4)                       NULL,        -- 债券面值
    C_ZQFXDW              varchar(300)                         NULL,        -- 债券发行单位
    C_ZQBH                varchar(300)                         NULL,        -- 债券编号
constraint PK_SCZXYCMCCZQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他财产性权益
-------------------------

drop table if exists T_SCZXYCMCCQTCCXQY;
create table T_SCZXYCMCCQTCCXQY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_QLMC                varchar(300)                         NULL,        -- 权利名称
    C_BH                  varchar(300)                         NULL,        -- 编号
    C_QLDJDW              varchar(300)                         NULL,        -- 权利登记单位
    N_DQGZ                numeric(20, 4)                       NULL,        -- 当前估值
constraint PK_SCZXYCMCCQTCCXQY primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产渔船
-------------------------

drop table if exists T_SCZXYCMCCYC;
create table T_SCZXYCMCCYC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YCBM                varchar(300)                         NULL,        -- 渔船编码
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_YCZL                varchar(300)                         NULL,        -- 渔船种类
    N_ZCCC                numeric(20, 4)                       NULL,        -- 渔船船长
    N_YCXK                numeric(20, 4)                       NULL,        -- 渔船形宽
    N_YCXS                numeric(20, 4)                       NULL,        -- 渔船形深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZJZGL               numeric(20, 4)                       NULL,        -- 主机总功率
    C_CTCZ                varchar(300)                         NULL,        -- 船体材质
    D_JZWGRQ              timestamp                            NULL,        -- 建造完工日期
    C_CBHHSBM             varchar(300)                         NULL,        -- 船舶呼号识别码
    C_CBSYRMC             varchar(300)                         NULL,        -- 船舶所有人名称
    C_CBSYRDZ             varchar(300)                         NULL,        -- 船舶所有人地址
    C_SYRZJHM             varchar(300)                         NULL,        -- 所有人证件号码
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    D_SYQDJSJ             timestamp                            NULL,        -- 所有权登记审批时间
constraint PK_SCZXYCMCCYC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产船舶
-------------------------

drop table if exists T_SCZXYCMCCCB;
create table T_SCZXYCMCCCB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CBSBH               varchar(300)                         NULL,        -- 船舶识别号
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_CBCYM               varchar(300)                         NULL,        -- 船舶曾用名
    C_IMOBH               varchar(300)                         NULL,        -- IMO编号
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    C_YCJG                varchar(300)                         NULL,        -- 原船籍港
    C_CBZL                varchar(300)                         NULL,        -- 船舶种类
    C_CBHH                varchar(300)                         NULL,        -- 船舶呼号
    C_ZCDD                varchar(300)                         NULL,        -- 造船地点
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    N_CBC                 numeric(20, 4)                       NULL,        -- 船舶长
    N_CBK                 numeric(20, 4)                       NULL,        -- 船舶宽
    N_CBS                 numeric(20, 4)                       NULL,        -- 船舶深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZZDW                numeric(20, 4)                       NULL,        -- 载重吨位
    N_GL                  numeric(20, 4)                       NULL,        -- 功率
constraint PK_SCZXYCMCCCB primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产股权
-------------------------

drop table if exists T_SCZXYCMCCGQ;
create table T_SCZXYCMCCGQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCH                 varchar(300)                         NULL,        -- 注册号
    C_CGGSMC              varchar(300)                         NULL,        -- 持股公司名称
    C_ZS                  varchar(300)                         NULL,        -- 住所
    C_ZCZB                varchar(300)                         NULL,        -- 注册资本
    C_GSLX                varchar(300)                         NULL,        -- 公司类型
    C_JYFW                varchar(300)                         NULL,        -- 经营范围
    D_CLSJ                timestamp                            NULL,        -- 成立时间
    C_YYQX                varchar(300)                         NULL,        -- 营业期限
    N_CZE                 numeric(20, 4)                       NULL,        -- 出资额
    N_CZBL                numeric(20, 4)                       NULL,        -- 出资比例
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_NJQK                varchar(300)                         NULL,        -- 年检情况
constraint PK_SCZXYCMCCGQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产税务
-------------------------

drop table if exists T_SCZXYCMCCSW;
create table T_SCZXYCMCCSW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_TSZH                varchar(300)                         NULL,        -- 退税账号
    N_TSJE                numeric(20, 4)                       NULL,        -- 退税金额
    D_TSSJ                timestamp                            NULL,        -- 退税时间
    C_NSZH                varchar(300)                         NULL,        -- 纳税账号
    N_NSJE                numeric(20, 4)                       NULL,        -- 纳税金额
    N_DKJE                numeric(20, 4)                       NULL,        -- 抵扣金额
constraint PK_SCZXYCMCCSW primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产债权
-------------------------

drop table if exists T_SCZXYCMCCZQXX;
create table T_SCZXYCMCCZQXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_ZWR                 varchar(300)                         NULL,        -- 债务人
constraint PK_SCZXYCMCCZQXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产查明机器设备
-------------------------

drop table if exists T_SCZXYCMCCCMJQSB;
create table T_SCZXYCMCCCMJQSB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SBZJJZ              numeric(20, 4)                       NULL,        -- 设备折旧价值
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
constraint PK_SCZXYCMCCCMJQSB primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产查明产品原材料
-------------------------

drop table if exists T_SCZXYCMCCCMCPYCL;
create table T_SCZXYCMCCCMCPYCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_SCZXYCMCCCMCPYCL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产知识产权
-------------------------

drop table if exists T_SCZXYCMCCZSCQ;
create table T_SCZXYCMCCZSCQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZZLX                varchar(300)                         NULL,        -- 证照类型
    C_ZZHM                varchar(300)                         NULL,        -- 证照号码
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
constraint PK_SCZXYCMCCZSCQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产古玩字画
-------------------------

drop table if exists T_SCZXYCMCCGWZH;
create table T_SCZXYCMCCGWZH
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_SCZXYCMCCGWZH primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产土地承包经营权
-------------------------

drop table if exists T_SCZXYCMCCTDCBJYQ;
create table T_SCZXYCMCCTDCBJYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_SCZXYCMCCTDCBJYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产宅基地使用权
-------------------------

drop table if exists T_SCZXYCMCCZJDSYQ;
create table T_SCZXYCMCCZJDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_SCZXYCMCCZJDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产海域使用权
-------------------------

drop table if exists T_SCZXYCMCCHYSYQ;
create table T_SCZXYCMCCHYSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YHLXA               varchar(300)                         NULL,        -- 用海类型A
    C_YHLXB               varchar(300)                         NULL,        -- 用海类型B
    C_HDMC                varchar(300)                         NULL,        -- 海岛名称
    C_HDWZ                varchar(300)                         NULL,        -- 海岛位置
    C_HDYT                varchar(300)                         NULL,        -- 海岛用途
    D_SYQQSSJ             timestamp                            NULL,        -- 使用权起始时间
    D_SYQJSSJ             timestamp                            NULL,        -- 使用权结束时间
constraint PK_SCZXYCMCCHYSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他土地使用权
-------------------------

drop table if exists T_SCZXYCMCCQTTDSYQ;
create table T_SCZXYCMCCQTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    C_QLXZ                varchar(300)                         NULL,        -- 权利性质
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    N_QLR                 int                                  NULL,        -- 权利人
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_SCZXYCMCCQTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产商业用房
-------------------------

drop table if exists T_SCZXYCMCCSYYF;
create table T_SCZXYCMCCSYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_SCZXYCMCCSYYF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产工业用房
-------------------------

drop table if exists T_SCZXYCMCCGYYF;
create table T_SCZXYCMCCGYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_SCZXYCMCCGYYF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他用房
-------------------------

drop table if exists T_SCZXYCMCCQTYF;
create table T_SCZXYCMCCQTYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_SCZXYCMCCQTYF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产航空器
-------------------------

drop table if exists T_SCZXYCMCCHKQ;
create table T_SCZXYCMCCHKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_HKQLX               varchar(300)                         NULL,        -- 航空器类型
    C_SBH                 varchar(300)                         NULL,        -- 识别号
    C_TFD                 varchar(300)                         NULL,        -- 停放地
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_SCZXYCMCCHKQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他交通运输工具
-------------------------

drop table if exists T_SCZXYCMCCQTJTYSGJ;
create table T_SCZXYCMCCQTJTYSGJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_PZ                  varchar(300)                         NULL,        -- 牌照
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_SCZXYCMCCQTJTYSGJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产一般动产
-------------------------

drop table if exists T_SCZXYCMCCYBDC;
create table T_SCZXYCMCCYBDC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  int                                  NULL,        -- 数量
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_WZ                  varchar(300)                         NULL,        -- 位置
constraint PK_SCZXYCMCCYBDC primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产住房公积金
-------------------------

drop table if exists T_SCZXYCMCCZFGJJ;
create table T_SCZXYCMCCZFGJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_SCZXYCMCCZFGJJ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产股息红利
-------------------------

drop table if exists T_SCZXYCMCCGXHL;
create table T_SCZXYCMCCGXHL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_SCZXYCMCCGXHL primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产收益类保险
-------------------------

drop table if exists T_SCZXYCMCCSYLBX;
create table T_SCZXYCMCCSYLBX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_SCZXYCMCCSYLBX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产金融理财产品
-------------------------

drop table if exists T_SCZXYCMCCJRLCCP;
create table T_SCZXYCMCCJRLCCP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_SCZXYCMCCJRLCCP primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产森林林木使用权
-------------------------

drop table if exists T_SCZXYCMCCSLLMSYQ;
create table T_SCZXYCMCCSLLMSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_SCZXYCMCCSLLMSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产集体土地所有权
-------------------------

drop table if exists T_SCZXYCMCCJTTDSYQ;
create table T_SCZXYCMCCJTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_SCZXYCMCCJTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产珠宝玉石首饰
-------------------------

drop table if exists T_SCZXYCMCCZBYSSS;
create table T_SCZXYCMCCZBYSSS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
constraint PK_SCZXYCMCCZBYSSS primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产探矿采矿权
-------------------------

drop table if exists T_SCZXYCMCCTKCKQ;
create table T_SCZXYCMCCTKCKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_KQMC                varchar(300)                         NULL,        -- 矿权名称
    C_XKZH                varchar(300)                         NULL,        -- 许可证号
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_SCZXYCMCCTKCKQ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 已查明财产其他
-------------------------

drop table if exists T_SCZXYCMCCQT;
create table T_SCZXYCMCCQT
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
    C_BH                  varchar(300)                         NULL,        -- 编号
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
constraint PK_SCZXYCMCCQT primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 查封续封
-------------------------

drop table if exists T_SCZXCFXF;
create table T_SCZXCFXF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXCF           char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXF                int                                  NULL,        -- 序号_续封
    C_XFYY                varchar(300)                         NULL,        -- 续封原因
    D_CDXFRQ              timestamp                            NULL,        -- 裁定续封日期
    D_XFJMRQ              timestamp                            NULL,        -- 续封届满日期
    C_XFCCQDXH            text                                 NULL,        -- 续封财产清单序号
    C_XFCCQD              text                                 NULL,        -- 续封财产清单
    C_XFWSXH              text                                 NULL,        -- 续封文书序号
constraint PK_SCZXCFXF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 查封部分解封
-------------------------

drop table if exists T_SCZXCFBFJF;
create table T_SCZXCFBFJF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXCF           char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJF              int                                  NULL,        -- 序号_部分解封
    C_BFJCCFYY            varchar(300)                         NULL,        -- 部分解除查封原因
    C_BFJCCFWXH           text                                 NULL,        -- 部分解除查封物序号
    C_BFJCCFW             text                                 NULL,        -- 部分解除查封物
    C_BFSYCFW             text                                 NULL,        -- 部分剩余查封物
    D_BFJFRQ              timestamp                            NULL,        -- 部分解封日期
    C_BFJFWS              text                                 NULL,        -- 部分解封文书
constraint PK_SCZXCFBFJF primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 扣押续扣
-------------------------

drop table if exists T_SCZXKYXK;
create table T_SCZXKYXK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXKY           char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXK                int                                  NULL,        -- 序号_续扣
    D_CDXKRQ              timestamp                            NULL,        -- 裁定续扣日期
    D_XKJMRQ              timestamp                            NULL,        -- 续扣届满日期
    C_XKYY                varchar(300)                         NULL,        -- 续扣原因
    C_XKCCQDXH            text                                 NULL,        -- 续扣财产清单序号
    C_XKCCQD              text                                 NULL,        -- 续扣财产清单
    C_XKWSXH              text                                 NULL,        -- 续扣文书序号
constraint PK_SCZXKYXK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 扣押部分解扣
-------------------------

drop table if exists T_SCZXKYBFJK;
create table T_SCZXKYBFJK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXKY           char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJK              int                                  NULL,        -- 序号_部分解扣
    C_BFJCKYYY            varchar(300)                         NULL,        -- 部分解除扣押原因
    C_BFJCCFCCXH          text                                 NULL,        -- 部分解除查封财产序号
    C_BFJCKYWP            text                                 NULL,        -- 部分解除扣押物品
    C_SYKYW               text                                 NULL,        -- 剩余扣押物
    D_BFJKRQ              timestamp                            NULL,        -- 部分解扣日期
    C_BFJKWS              text                                 NULL,        -- 部分解扣文书
constraint PK_SCZXKYBFJK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 冻结续冻
-------------------------

drop table if exists T_SCZXDJXD;
create table T_SCZXDJXD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXDJ           char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXD                int                                  NULL,        -- 序号_续冻
    D_CDXDRQ              timestamp                            NULL,        -- 裁定续冻日期
    D_XDJMRQ              timestamp                            NULL,        -- 续冻届满日期
    C_XDYY                varchar(300)                         NULL,        -- 续冻原因
    C_XDCCQDXH            text                                 NULL,        -- 续冻财产清单序号
    C_XDCCQD              text                                 NULL,        -- 续冻财产清单
    C_XDWSXH              text                                 NULL,        -- 续冻文书序号
constraint PK_SCZXDJXD primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 冻结部分解冻
-------------------------

drop table if exists T_SCZXDJBFJD;
create table T_SCZXDJBFJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXDJ           char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJD              int                                  NULL,        -- 序号_部分解冻
    C_BFJCDJYY            varchar(300)                         NULL,        -- 部分解除冻结原因
    C_BFJCDJCCXH          text                                 NULL,        -- 部分解除冻结财产序号
    C_BFJCDJCC            text                                 NULL,        -- 部分解除冻结财产
    D_BFJDRQ              timestamp                            NULL,        -- 部分解冻日期
    C_BFJDWS              text                                 NULL,        -- 部分解冻文书
constraint PK_SCZXDJBFJD primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 评估评估标的物
-------------------------

drop table if exists T_SCZXPGPGBDW;
create table T_SCZXPGPGBDW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXPG           char(32)                             NOT NULL,    -- 评估ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHPGBDW             int                                  NULL,        -- 编号_评估标的物
    C_PGBDWMC             text                                 NULL,        -- 评估标的物名称
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SFQDPGJG            varchar(300)                         NULL,        -- 是否确定评估机构
    C_PGJGMC              varchar(300)                         NULL,        -- 评估机构名称
    C_XDFS                varchar(300)                         NULL,        -- 选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    D_JGYJWCGZRQ          timestamp                            NULL,        -- 机构预计完成工作日期
    N_PGWTS               int                                  NULL,        -- 评估委托书
    N_QDJGJBR             int                                  NULL,        -- 确定机构经办人
    D_QDJGJBRQ            timestamp                            NULL,        -- 确定机构经办日期
    C_PGSFWC              varchar(300)                         NULL,        -- 评估是否完成
    D_PGKSRQ              timestamp                            NULL,        -- 评估开始日期
    D_PGJSRQ              timestamp                            NULL,        -- 评估结束日期
    D_FYSDPGBGRQ          timestamp                            NULL,        -- 法院收到评估报告日期
    D_FYSDRQ              timestamp                            NULL,        -- 法院送达日期
    C_PGJG                varchar(300)                         NULL,        -- 评估结果
    C_PGJGSM              varchar(300)                         NULL,        -- 评估结果说明
    N_PGJ                 numeric(20, 4)                       NULL,        -- 评估价
    N_PGFY                numeric(20, 4)                       NULL,        -- 评估费用
    D_PGJGYXJZRQ          timestamp                            NULL,        -- 评估结果有效截止日期
    N_PGJGWS              int                                  NULL,        -- 评估结果文书
    N_PGJGJBR             int                                  NULL,        -- 评估结果经办人
    D_PGJGJBRQ            timestamp                            NULL,        -- 评估结果经办日期
constraint PK_SCZXPGPGBDW primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拍卖拍卖标的物
-------------------------

drop table if exists T_SCZXPMPMBDW;
create table T_SCZXPMPMBDW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXPM           char(32)                             NOT NULL,    -- 拍卖ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHPMBDW             int                                  NULL,        -- 编号_拍卖标的物
    C_BDWMC               text                                 NULL,        -- 标的物名称
    D_KZRQ                timestamp                            NULL,        -- 控制日期
    C_KZFS                varchar(300)                         NULL,        -- 控制方式
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_XCQK                text                                 NULL,        -- 瑕疵情况
    N_PGJ                 numeric(20, 4)                       NULL,        -- 评估价
    N_SCJ                 numeric(20, 4)                       NULL,        -- 市场价
    N_PMFY                numeric(20, 4)                       NULL,        -- 拍卖费用
    D_DYCPMGGRQ           timestamp                            NULL,        -- 第一次拍卖公告日期
    D_DYCPMRQ             timestamp                            NULL,        -- 第一次拍卖日期
    N_DYCQPJ              numeric(20, 4)                       NULL,        -- 第一次起拍价
    N_DYCBLJ              numeric(20, 4)                       NULL,        -- 第一次保留价
    C_DYCPMJG             varchar(300)                         NULL,        -- 第一次拍卖结果
    N_DYCJCJ              numeric(20, 4)                       NULL,        -- 第一次成交价
    C_DYCLPYY             varchar(300)                         NULL,        -- 第一次流拍原因
    D_DECPMGGRQ           timestamp                            NULL,        -- 第二次拍卖公告日期
    D_DECPMRQ             timestamp                            NULL,        -- 第二次拍卖日期
    N_DECQPJ              numeric(20, 4)                       NULL,        -- 第二次起拍价
    N_DECBLJ              numeric(20, 4)                       NULL,        -- 第二次保留价
    C_DECPMJG             varchar(300)                         NULL,        -- 第二次拍卖结果
    N_DECJCJ              numeric(20, 4)                       NULL,        -- 第二次成交价
    C_DECLPYY             varchar(300)                         NULL,        -- 第二次流拍原因
    D_DSCPMGGRQ           timestamp                            NULL,        -- 第三次拍卖公告日期
    D_DSCPMRQ             timestamp                            NULL,        -- 第三次拍卖日期
    N_DSCQPJ              numeric(20, 4)                       NULL,        -- 第三次起拍价
    N_DSCBLJ              numeric(20, 4)                       NULL,        -- 第三次保留价
    C_DSCPMJG             varchar(300)                         NULL,        -- 第三次拍卖结果
    N_DSCJCJ              numeric(20, 4)                       NULL,        -- 第三次成交价
    C_DSCLPYY             varchar(300)                         NULL,        -- 第三次流拍原因
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    N_WKJNQX              int                                  NULL,        -- 尾款交纳期限
    N_PMCJQRS             int                                  NULL,        -- 拍卖成交确认书
    N_PMDJJBR             int                                  NULL,        -- 拍卖登记经办人
    D_PMDJJBRQ            timestamp                            NULL,        -- 拍卖登记经办日期
constraint PK_SCZXPMPMBDW primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 拍卖拍卖标的物优先购买情况
-------------------------

drop table if exists T_SCZXPMPMBDWYXGMQK;
create table T_SCZXPMPMBDWYXGMQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXPMPMBDW      char(32)                             NOT NULL,    -- 拍卖标的物ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYXGMQK            int                                  NULL,        -- 序号_优先购买情况
    C_YXGMRXM             varchar(300)                         NULL,        -- 优先购买人姓名
    C_YXQKMS              text                                 NULL,        -- 优先情况描述
constraint PK_SCZXPMPMBDWYXGMQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 变卖变卖明细
-------------------------

drop table if exists T_SCZXBMBMMX;
create table T_SCZXBMBMMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXBM           char(32)                             NOT NULL,    -- 变卖ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHBMBDW             int                                  NULL,        -- 编号_变卖标的物
    C_BDWMC               text                                 NULL,        -- 标的物名称
    D_KZRQ                timestamp                            NULL,        -- 控制日期
    C_KZFS                varchar(300)                         NULL,        -- 控制方式
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_XCQK                text                                 NULL,        -- 瑕疵情况
    D_BMKSRQ              timestamp                            NULL,        -- 变卖开始日期
    D_BMJSRQ              timestamp                            NULL,        -- 变卖结束日期
    N_CKJG                numeric(20, 4)                       NULL,        -- 参考价格
    N_BMZE                numeric(20, 4)                       NULL,        -- 变卖总额
    C_BMJG                varchar(300)                         NULL,        -- 变卖结果
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    N_BMJGWSXH            int                                  NULL,        -- 变卖结果文书序号
    N_CJQRSXH             int                                  NULL,        -- 成交确认书序号
constraint PK_SCZXBMBMMX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 纠正失信被执行人
-------------------------

drop table if exists T_SCZXJZSXBZXR;
create table T_SCZXJZSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHJZSXBZXR         varchar(300)                         NULL,        -- 流水号_纠正失信被执行人
    C_AH                  varchar(300)                         NULL,        -- 案号
    N_SXBZXR              int                                  NULL,        -- 失信被执行人
    C_BZXRMC              varchar(300)                         NULL,        -- 被执行人名称
    C_BZXRLX              varchar(300)                         NULL,        -- 被执行人类型
    C_XB                  varchar(300)                         NULL,        -- 性别
    N_NL                  int                                  NULL,        -- 年龄
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_JGFZRXM             varchar(300)                         NULL,        -- 机构负责人姓名
    C_FLWSQRDYW           text                                 NULL,        -- 法律文书确认的义务
    C_BZXRLXQK            varchar(300)                         NULL,        -- 被执行人履行情况
    C_YLXQK               text                                 NULL,        -- 已履行情况
    C_WLXQK               text                                 NULL,        -- 未履行情况
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXAYMC              varchar(300)                         NULL,        -- 执行案由名称
    C_ZXFYMC              varchar(300)                         NULL,        -- 执行法院名称
    C_ZXYJWH              varchar(300)                         NULL,        -- 执行依据文号
    D_FBSJ                timestamp                            NULL,        -- 发布时间
    C_SXBZXRXWQK          varchar(300)                         NULL,        -- 失信被执行人行为情况
    D_JZSQSJ              timestamp                            NULL,        -- 纠正申请时间
    C_JZJDS               text                                 NULL,        -- 纠正决定书
    C_ZXYJZZDW            varchar(300)                         NULL,        -- 执行依据制作单位
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_JGFZRZJHM           varchar(300)                         NULL,        -- 机构负责人证件号码
constraint PK_SCZXJZSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 撤销失信被执行人
-------------------------

drop table if exists T_SCZXCXSXBZXR;
create table T_SCZXCXSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHCXSXBZXR         varchar(300)                         NULL,        -- 流水号_撤销失信被执行人
    D_CXSQSJ              timestamp                            NULL,        -- 撤销申请时间
    C_CXYY                varchar(300)                         NULL,        -- 撤销原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_SCZXCXSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 屏蔽失信被执行人
-------------------------

drop table if exists T_SCZXPBSXBZXR;
create table T_SCZXPBSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHPBSXBZXR         varchar(300)                         NULL,        -- 流水号_屏蔽失信被执行人
    D_PBSQSJ              timestamp                            NULL,        -- 屏蔽申请时间
    C_PBYY                varchar(300)                         NULL,        -- 屏蔽原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_SCZXPBSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行款发放明细
-------------------------

drop table if exists T_SCZXZXKFFMX;
create table T_SCZXZXKFFMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXZXKFF        char(32)                             NOT NULL,    -- 执行款发放ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_JSDSR               int                                  NULL,        -- 接受当事人
    C_JSR                 varchar(300)                         NULL,        -- 接受人
    N_FFJE                numeric(20, 4)                       NULL,        -- 发放金额
    C_FFKXLB              varchar(300)                         NULL,        -- 发放款项类别
    C_JSRKHYH             varchar(300)                         NULL,        -- 接受人开户银行
    C_JSRKHMC             varchar(300)                         NULL,        -- 接受人开户名称
    C_JSRKHZH             varchar(300)                         NULL,        -- 接受人开户账号
    D_ZFRQ              timestamp                            NULL,        -- 支付日期
constraint PK_SCZXZXKFFMX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 对行为执行情况
-------------------------

drop table if exists T_SCZXDXWZXQK;
create table T_SCZXDXWZXQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXDXWDZX       char(32)                             NOT NULL,    -- 对行为的执行ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDXWDZXQK          int                                  NULL,        -- 序号_对行为的执行情况
    D_QZZXRQ              timestamp                            NULL,        -- 强制执行日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_ZXQK                varchar(300)                         NULL,        -- 执行情况
constraint PK_SCZXDXWZXQK primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 参与分配明细
-------------------------

drop table if exists T_SCZXCYFPMX;
create table T_SCZXCYFPMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXCYFPXX       char(32)                             NOT NULL,    -- 参与分配信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_MXXH                int                                  NULL,        -- 明细序号
    N_SQZXR               int                                  NULL,        -- 申请执行人
    C_SQSNR               varchar(300)                         NULL,        -- 申请书内容
    C_CYFPYJ              varchar(300)                         NULL,        -- 参与分配依据
    N_SQFPJE              numeric(20, 4)                       NULL,        -- 申请分配金额
    C_JYYXQ               varchar(300)                         NULL,        -- 具有优先权
    C_YXQNR               varchar(300)                         NULL,        -- 优先权内容
    D_YXQSXRQ             timestamp                            NULL,        -- 优先权生效日期
    D_FPRQ                timestamp                            NULL,        -- 分配日期
    N_FPJE                numeric(20, 4)                       NULL,        -- 分配金额
    N_TCYYXH              int                                  NULL,        -- 提出异议序号
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_SQCYFPAWR           varchar(300)                         NULL,        -- 申请参与分配案外人
constraint PK_SCZXCYFPMX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_SCZXZXZTXXZJXX;
create table T_SCZXZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZXZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_SCZXZXZTXXZJXX primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 追究拒执罪
-------------------------

drop table if exists T_SCZXZJJZZ;
create table T_SCZXZJJZZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_BZJR                int                                  NULL,        -- 被追究人
    C_SSXZ                varchar(300)                         NULL,        -- 诉讼性质
    C_SFJYJZXF            varchar(300)                         NULL,        -- 是否给予拒执刑罚
    C_BXFYY               varchar(300)                         NULL,        -- 不刑罚原因
    C_GSJG                varchar(300)                         NULL,        -- 公诉机关
    C_JBFY                varchar(300)                         NULL,        -- 经办法院
    C_XSAJAH              varchar(300)                         NULL,        -- 刑事案件案号
    D_LARQ                timestamp                            NULL,        -- 立案日期
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_ZSR                 int                                  NULL,        -- 自诉人
    C_ZSLY                varchar(300)                         NULL,        -- 自诉理由
    C_JZPCQK              varchar(300)                         NULL,        -- 拒执判处情况
    C_JZXGWZLY            varchar(300)                         NULL,        -- 拒执宣告无罪理由
    C_JZBFXSZRYY          varchar(300)                         NULL,        -- 拒执不负刑事责任原因
    C_JZZZSLYY            varchar(300)                         NULL,        -- 拒执终止审理原因
    C_JZZXZL              varchar(300)                         NULL,        -- 拒执主刑种类
    N_XQN                 int                                  NULL,        -- 刑期年
    N_XQY                 int                                  NULL,        -- 刑期月
    C_PCHX                varchar(300)                         NULL,        -- 判处缓刑
    N_HXN                 int                                  NULL,        -- 缓刑年
    N_HXY                 int                                  NULL,        -- 缓刑月
    C_FJLX                varchar(300)                         NULL,        -- 罚金类型
    N_FJSE                numeric(20, 4)                       NULL,        -- 罚金数额
constraint PK_SCZXZJJZZ primary key( C_ID )
);

 commit; 

set search_path to DB_SCZX;
commit;

-------------------------
-- 执行救助信息
-------------------------

drop table if exists T_SCZXZXJZXX;
create table T_SCZXZXJZXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_SCZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号_执行救助
    C_SJZR                varchar(300)                         NULL,        -- 受救助人
    N_JZJE                numeric(20, 4)                       NULL,        -- 救助金额
    C_JZYY                varchar(300)                         NULL,        -- 救助原因
    C_JZJLY               varchar(300)                         NULL,        -- 救助金来源
constraint PK_SCZXZXJZXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_HFZX;
commit;

-------------------------
-- 恢复执行案件主表
-------------------------

drop table if exists T_HFZX;
create table T_HFZX
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    C_ZXHZSY              varchar(300)                         NULL,        -- 执行回转事由
    C_HFZXSY              varchar(300)                         NULL,        -- 恢复执行事由
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    C_ZXBDNR              varchar(300)                         NULL,        -- 执行标的内容
    C_YZXBDXW             varchar(300)                         NULL,        -- 应执行标的行为
    C_YZXBDW              varchar(300)                         NULL,        -- 应执行标的物
    C_CCXQY               varchar(300)                         NULL,        -- 财产性权益
    N_YZXBDJE             numeric(20, 4)                       NULL,        -- 应执行标的金额
    N_YGSQZXF             numeric(20, 4)                       NULL,        -- 预估申请执行费
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    C_BQAH                varchar(300)                         NULL,        -- 保全案号
    N_FYDM                int                                  NULL,        -- 法院代码
    C_BQCDLX              varchar(300)                         NULL,        -- 保全裁定类型
    C_SQZBHZXCYLXLXQQ     varchar(300)                         NULL,        -- 申请中包含执行迟延履行利息请求
    N_SQZYMQCYLXLXSE      numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行利息数额
    C_SQZBHZXCYLXJQQ      varchar(300)                         NULL,        -- 申请中包含执行迟延履行金请求
    N_SQZYMQCYLXJSE       numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行金数额
    C_SCZXAH              varchar(300)                         NULL,        -- 首次执行案号
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    C_CFAJQX              varchar(300)                         NULL,        -- 拆分案件情形
    N_FQLXZQS             int                                  NULL,        -- 分期履行总期数
    N_YLXQS               int                                  NULL,        -- 已履行期数
    C_SQGFQSNY            varchar(300)                         NULL,        -- 申请给付起始年月
    C_SQGFJZNY            varchar(300)                         NULL,        -- 申请给付截止年月
    C_SQZXNR              varchar(300)                         NULL,        -- 申请执行内容
    C_WCNR                varchar(300)                         NULL,        -- 未成年人
    C_DYSJ                varchar(300)                         NULL,        -- 地域涉及
    C_AJSJ                varchar(300)                         NULL,        -- 案件涉及
    C_DA                  varchar(300)                         NULL,        -- 大案
    C_YA                  varchar(300)                         NULL,        -- 要案
    C_XLXAJ               varchar(300)                         NULL,        -- 新类型案件
    C_YNAJ                varchar(300)                         NULL,        -- 疑难案件
    C_JTAJ                varchar(300)                         NULL,        -- 集团案件
    C_MDJHAJ              varchar(300)                         NULL,        -- 矛盾激化案件
    C_BYZDAJ              varchar(300)                         NULL,        -- 本院重点案件
    C_ZXYJLX              varchar(300)                         NULL,        -- 执行依据类型
    C_ZCZXYJDW            varchar(300)                         NULL,        -- 作出执行依据单位
    C_ZXYJWSWH            varchar(300)                         NULL,        -- 执行依据文书文号
    C_ZXYJZW              text                                 NULL,        -- 执行依据主文
    D_ZXYJWSSXRQ          timestamp                            NULL,        -- 执行依据文书生效日期
    D_ZXYJWSLXZHQX        timestamp                            NULL,        -- 执行依据文书履行最后期限
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_FCZXTZSRQ           timestamp                            NULL,        -- 发出执行通知书日期
    N_CCBGQX              int                                  NULL,        -- 财产报告期限
    D_CBRCSRQ             timestamp                            NULL,        -- 承办人初审日期
    C_SFYCC               varchar(300)                         NULL,        -- 是否有财产
    C_ZXTZS               text                                 NULL,        -- 执行通知书
    C_ZXTZWSMC            text                                 NULL,        -- 执行通知文书名称
    N_ZQSE                numeric(20, 4)                       NULL,        -- 债权数额
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FFYY                varchar(300)                         NULL,        -- 发放原因
    D_FFRQ                timestamp                            NULL,        -- 发放日期
    C_ZQPZBH              varchar(300)                         NULL,        -- 债权凭证编号
    C_ZQRBGQK             varchar(300)                         NULL,        -- 债权人变更情况
    C_ZQBHQK              varchar(300)                         NULL,        -- 债权变化情况
    D_JXRQ                timestamp                            NULL,        -- 激销日期
    D_ZXRQ                timestamp                            NULL,        -- 注销日期
    C_FQZX                varchar(300)                         NULL,        -- 分期执行
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    D_JARQ                timestamp                            NULL,        -- 结案日期
    C_ZXWBSY              varchar(300)                         NULL,        -- 执行完毕事由
    C_BYSLYY              varchar(300)                         NULL,        -- 不予受理原因
    C_BYZXLY              varchar(300)                         NULL,        -- 不予执行理由
    C_ZJBCZXSY            varchar(300)                         NULL,        -- 终结本次执行事由
    C_ZJZXSY              varchar(300)                         NULL,        -- 终结执行事由
    C_XASY                varchar(300)                         NULL,        -- 销案事由
    N_JABDJE              numeric(20, 4)                       NULL,        -- 结案标的金额
    N_SJDWJE              numeric(20, 4)                       NULL,        -- 实际到位金额
    N_SQRFQBDJE           numeric(20, 4)                       NULL,        -- 申请人放弃标的金额
    N_SWZXBDJE            numeric(20, 4)                       NULL,        -- 尚未执行标的金额
    N_QZCYLXJ             numeric(20, 4)                       NULL,        -- 其中迟延履行金
    N_QZCYLXLX            numeric(20, 4)                       NULL,        -- 其中迟延履行利息
    C_TDWDWQK             varchar(300)                         NULL,        -- 特定物到位情况
    C_XWLXQK              varchar(300)                         NULL,        -- 行为履行情况
    C_CCXQYZXQK           varchar(300)                         NULL,        -- 财产性权益执行情况
    N_JAWS                int                                  NULL,        -- 结案文书
    C_SJBZ                varchar(300)                         NULL,        -- 实结标志
    C_SQRSQZJBCZXCX       varchar(300)                         NULL,        -- 申请人申请终结本次执行程序
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
    D_CCBGZJRQ            timestamp                            NULL,        -- 财产报告终结日期
    C_ZJQX                varchar(300)                         NULL,        -- 终结情形
    C_CDS                 text                                 NULL,        -- 裁定书
    C_KHYX                varchar(300)                         NULL,        -- 开户银行
    C_ZHMC                varchar(300)                         NULL,        -- 账户名称
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
constraint PK_HFZX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_HFZXYZXAJXX;
create table T_HFZXYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_HFZXYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_HFZXZXZZCYZC;
create table T_HFZXZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_HFZXZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_HFZXZXZZCYBGJL;
create table T_HFZXZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_HFZXZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_HFZXKCZXQXJL;
create table T_HFZXKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_HFZXKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_HFZXYZZXQXJL;
create table T_HFZXYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_HFZXYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_HFZXFTSYJL;
create table T_HFZXFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_HFZXFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行线索
-------------------------

drop table if exists T_HFZXZXXS;
create table T_HFZXZXXS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXS                int                                  NULL,        -- 序号_线索
    C_XSLY                varchar(300)                         NULL,        -- 线索来源
    C_XSNR                varchar(300)                         NULL,        -- 线索内容
    D_XSTGRQ              timestamp                            NULL,        -- 线索提供日期
    C_XSZT                varchar(300)                         NULL,        -- 线索状态
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_GXXXZT              varchar(300)                         NULL,        -- 更新信息状态
    N_XSTGR               int                                  NULL,        -- 线索提供人
    C_XSTGDQTR            varchar(300)                         NULL,        -- 线索提供的其他人
    C_XSTGSDJD            varchar(300)                         NULL,        -- 线索提供时的阶段
    D_XSHSRQ              timestamp                            NULL,        -- 线索核实日期
constraint PK_HFZXZXXS primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 财产调查
-------------------------

drop table if exists T_HFZXCCDC;
create table T_HFZXCCDC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCCDC              int                                  NULL,        -- 序号_财产调查
    C_DCDW                varchar(300)                         NULL,        -- 调查单位
    C_DCDWFL              varchar(300)                         NULL,        -- 调查单位分类
    N_BDCR                int                                  NULL,        -- 被调查人
    D_DCSJ                timestamp                            NULL,        -- 调查时间
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_DCNR                varchar(300)                         NULL,        -- 调查内容
    C_DCJG                varchar(300)                         NULL,        -- 调查结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_DCYY                varchar(300)                         NULL,        -- 调查原因
    C_TZS                 text                                 NULL,        -- 通知书
    C_DCSZDW              varchar(300)                         NULL,        -- 调查所在单位
    C_DCJZD               varchar(300)                         NULL,        -- 调查居住地
    C_DCZSD               varchar(300)                         NULL,        -- 调查住所地
    C_DCJYCS              varchar(300)                         NULL,        -- 调查经营场所
    C_DCZFGJJ             varchar(300)                         NULL,        -- 调查住房公积金
    C_DCJRLCCP            varchar(300)                         NULL,        -- 调查金融理财产品
    C_DCSYLBX             varchar(300)                         NULL,        -- 调查收益类保险
    C_DCGXHL              varchar(300)                         NULL,        -- 调查股息红利
    C_DCSHJZ              varchar(300)                         NULL,        -- 调查生活居住
    C_DCLDJY              varchar(300)                         NULL,        -- 调查劳动就业
    C_DCSR                varchar(300)                         NULL,        -- 调查收入
    C_DCZQ                varchar(300)                         NULL,        -- 调查债权
    C_DCGQ                varchar(300)                         NULL,        -- 调查股权
    C_DCQYXZJSL           varchar(300)                         NULL,        -- 调查企业性质及设立
    C_DCHBFL              varchar(300)                         NULL,        -- 调查合并分立
    C_DCTZJY              varchar(300)                         NULL,        -- 调查投资经营
    C_DCZQZW              varchar(300)                         NULL,        -- 调查债权债务
    C_DCBGZZ              varchar(300)                         NULL,        -- 调查变更终止
    C_DCBL                varchar(300)                         NULL,        -- 调查笔录
constraint PK_HFZXCCDC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 约谈
-------------------------

drop table if exists T_HFZXYT;
create table T_HFZXYT
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYT                int                                  NULL,        -- 序号_约谈
    C_BYTR                text                                 NULL,        -- 被约谈人
    D_YTSJ                timestamp                            NULL,        -- 约谈时间
    C_YTFS                varchar(300)                         NULL,        -- 约谈方式
    N_TGXSQX              int                                  NULL,        -- 提供线索期限
    C_YTSY                varchar(300)                         NULL,        -- 约谈事由
    C_YTCS                varchar(300)                         NULL,        -- 约谈场所
    C_YTCJRY              text                                 NULL,        -- 约谈参加人员
    C_SFTYZB              varchar(300)                         NULL,        -- 是否同意终本
constraint PK_HFZXYT primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 传唤
-------------------------

drop table if exists T_HFZXCH;
create table T_HFZXCH
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCH                int                                  NULL,        -- 序号_传唤
    N_BCHR                int                                  NULL,        -- 被传唤人
    D_CHSJ                timestamp                            NULL,        -- 传唤时间
    C_GZDWHZZ             varchar(300)                         NULL,        -- 工作单位或住址
    C_YDCS                varchar(300)                         NULL,        -- 应到处所
    C_CHSY                varchar(300)                         NULL,        -- 传唤事由
    C_CHQK                varchar(300)                         NULL,        -- 传唤情况
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_CHWSXH              text                                 NULL,        -- 传唤文书序号
constraint PK_HFZXCH primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拘传
-------------------------

drop table if exists T_HFZXJC;
create table T_HFZXJC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHJC                int                                  NULL,        -- 序号_拘传
    N_BJCR                int                                  NULL,        -- 被拘传人
    C_JCYY                varchar(300)                         NULL,        -- 拘传原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_JCDD                varchar(300)                         NULL,        -- 拘传地点
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_JCP                 text                                 NULL,        -- 拘传票
    C_ZXJCQK              varchar(300)                         NULL,        -- 执行拘传情况
constraint PK_HFZXJC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 搜查
-------------------------

drop table if exists T_HFZXSC;
create table T_HFZXSC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSC                int                                  NULL,        -- 序号_搜查
    N_BSCR                int                                  NULL,        -- 被搜查人
    C_ZCRSFHZW            varchar(300)                         NULL,        -- 在场人身份和职务
    D_SCSJ                timestamp                            NULL,        -- 搜查时间
    C_SCDD                varchar(300)                         NULL,        -- 搜查地点
    C_NSCBDW              varchar(300)                         NULL,        -- 拟搜查标的物
    C_QZKQ                varchar(300)                         NULL,        -- 强制开启
    C_KQJG                varchar(300)                         NULL,        -- 开启结果
    C_TQDX                varchar(300)                         NULL,        -- 提取对象
    D_GHRQ                timestamp                            NULL,        -- 归还日期
    C_SCJG                varchar(300)                         NULL,        -- 搜查结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_SCWSXH              text                                 NULL,        -- 搜查文书序号
constraint PK_HFZXSC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 悬赏执行
-------------------------

drop table if exists T_HFZXXSZX;
create table T_HFZXXSZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXSZX              int                                  NULL,        -- 序号_悬赏执行
    N_BZXR                int                                  NULL,        -- 被执行人
    D_GGFBRQ              timestamp                            NULL,        -- 公告发布日期
    C_FBFS                varchar(300)                         NULL,        -- 发布方式
    C_GGNR                varchar(300)                         NULL,        -- 公告内容
    D_XSJSRQ              timestamp                            NULL,        -- 悬赏结束日期
    C_ZXQK                varchar(300)                         NULL,        -- 执行情况
    N_ZXJE                numeric(20, 4)                       NULL,        -- 执行金额
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQDXH            text                                 NULL,        -- 查明财产清单序号
    C_XSWSXH              text                                 NULL,        -- 悬赏文书序号
    D_XSZXSQRQ            timestamp                            NULL,        -- 悬赏执行申请日期
    C_MTFBPT              varchar(300)                         NULL,        -- 媒体发布平台
    D_ZTGGSJ              timestamp                            NULL,        -- 张贴公告时间
    C_ZTGGDZ              varchar(300)                         NULL,        -- 张贴公告地址
    C_QTFBPTMC            varchar(300)                         NULL,        -- 其他发布平台名称
    D_QTFBPTSJ            timestamp                            NULL,        -- 其他发布平台时间
    N_QTFBPTFY            numeric(20, 4)                       NULL,        -- 其他发布平台费用
    C_SFZXSQ              varchar(300)                         NULL,        -- 是否准许申请
    C_JSFF                varchar(300)                         NULL,        -- 计算方法
    C_LQTJ                varchar(300)                         NULL,        -- 领取条件
    N_GGWS                int                                  NULL,        -- 公告文书
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    N_SPR                 int                                  NULL,        -- 审批人
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_YGRYDSF             varchar(300)                         NULL,        -- 有关人员的身份
    C_XSZWQK              varchar(300)                         NULL,        -- 线索掌握情况
    C_SQZXRDZQSFSX        varchar(300)                         NULL,        -- 申请执行人的债权是否实现
    C_XSJESFFF            varchar(300)                         NULL,        -- 悬赏金额是否发放
    N_FFJE                numeric(20, 4)                       NULL,        -- 发放金额
    C_BFFDLY              varchar(300)                         NULL,        -- 不发放的理由
constraint PK_HFZXXSZX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 司法审计
-------------------------

drop table if exists T_HFZXSFSJ;
create table T_HFZXSFSJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFSJ              int                                  NULL,        -- 序号_司法审计
    N_BSJR                int                                  NULL,        -- 被审计人
    C_SJYY                varchar(300)                         NULL,        -- 审计原因
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_SJJG                varchar(300)                         NULL,        -- 审计机构
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    C_SFSJJG              varchar(300)                         NULL,        -- 审计结果
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMCCQD              text                                 NULL,        -- 查明财产清单
    C_SJWSXH              text                                 NULL,        -- 审计文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_SFZXSQ              varchar(300)                         NULL,        -- 是否准许申请
    C_BZXYY               varchar(300)                         NULL,        -- 不准许原因
    N_SJFFDR              int                                  NULL,        -- 审计费负担人
    C_BZXRFDLY            varchar(300)                         NULL,        -- 被执行人负担理由
    N_FDSE                numeric(20, 4)                       NULL,        -- 负担数额
    C_SFJN                varchar(300)                         NULL,        -- 是否缴纳
constraint PK_HFZXSFSJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产
-------------------------

drop table if exists T_HFZXYCMCC;
create table T_HFZXYCMCC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCMCC              int                                  NULL,        -- 序号_查明财产
    N_BZXR                int                                  NULL,        -- 被执行人
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMFS                varchar(300)                         NULL,        -- 查明方式
    D_CMRQ                timestamp                            NULL,        -- 查明日期
    C_CCLX                varchar(300)                         NULL,        -- 财产类型
    C_CCMC                varchar(300)                         NULL,        -- 财产名称
    C_CCZT                varchar(300)                         NULL,        -- 财产状态
    C_CCQDFJ              text                                 NULL,        -- 财产清单附件
    C_CCZBJG              varchar(300)                         NULL,        -- 财产甄别结果
    D_CCZBRQ              timestamp                            NULL,        -- 财产甄别日期
    C_CCBKZXYY            varchar(300)                         NULL,        -- 财产不可执行原因
    C_CCYJFL              varchar(300)                         NULL,        -- 财产一级分类
constraint PK_HFZXYCMCC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 查封
-------------------------

drop table if exists T_HFZXCF;
create table T_HFZXCF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCF                int                                  NULL,        -- 序号_查封
    C_CFLX                varchar(300)                         NULL,        -- 查封类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CFWSYR              int                                  NULL,        -- 查封物所有人
    C_CFQDXH              text                                 NULL,        -- 查封清单序号
    C_CFQD                text                                 NULL,        -- 查封清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_CFSXRQ              timestamp                            NULL,        -- 查封生效日期
    D_CFJMRQ              timestamp                            NULL,        -- 查封届满日期
    C_CFDD                varchar(300)                         NULL,        -- 查封地点
    C_CFFF                varchar(300)                         NULL,        -- 查封方法
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_CFWSXH              text                                 NULL,        -- 查封文书序号
    C_JCCFYY              varchar(300)                         NULL,        -- 解除查封原因
    D_JFRQ                timestamp                            NULL,        -- 解封日期
    C_JCCFWSXH            text                                 NULL,        -- 解除查封文书序号
constraint PK_HFZXCF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 扣押
-------------------------

drop table if exists T_HFZXKY;
create table T_HFZXKY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKY                int                                  NULL,        -- 序号_扣押
    C_KYLX                varchar(300)                         NULL,        -- 扣押类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_KYSXRQ              timestamp                            NULL,        -- 扣押生效日期
    D_KYJMRQ              timestamp                            NULL,        -- 扣押届满日期
    C_KYDD                varchar(300)                         NULL,        -- 扣押地点
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_KYQDXH              text                                 NULL,        -- 扣押清单序号
    C_KYQD                text                                 NULL,        -- 扣押清单
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_KYWSXH              text                                 NULL,        -- 扣押文书序号
    C_JCKYYY              varchar(300)                         NULL,        -- 解除扣押原因
    D_JKRQ                timestamp                            NULL,        -- 解扣日期
    C_JCKYWS              varchar(300)                         NULL,        -- 解除扣押文书
constraint PK_HFZXKY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 冻结
-------------------------

drop table if exists T_HFZXDJ;
create table T_HFZXDJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDJ                int                                  NULL,        -- 序号_冻结
    C_DJLX                varchar(300)                         NULL,        -- 冻结类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    C_DJQDXH              text                                 NULL,        -- 冻结清单序号
    C_DJQD                text                                 NULL,        -- 冻结清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_DJSXRQ              timestamp                            NULL,        -- 冻结生效日期
    D_DJJMRQ              timestamp                            NULL,        -- 冻结届满日期
    N_SJDJJE              numeric(20, 4)                       NULL,        -- 实际冻结金额
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_DJWSXH              text                                 NULL,        -- 冻结文书序号
    C_JCDJYY              varchar(300)                         NULL,        -- 解除冻结原因
    D_JDRQ                timestamp                            NULL,        -- 解冻日期
    C_JCDJWS              text                                 NULL,        -- 解除冻结文书
constraint PK_HFZXDJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 强制管理
-------------------------

drop table if exists T_HFZXQZGL;
create table T_HFZXQZGL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZGL              int                                  NULL,        -- 序号_强制管理
    N_BZXR                int                                  NULL,        -- 被执行人
    C_BGLCCXH             text                                 NULL,        -- 被管理财产序号
    C_BGLCC               varchar(300)                         NULL,        -- 被管理财产
    C_GLR                 varchar(300)                         NULL,        -- 管理人
    C_QZGLYY              varchar(300)                         NULL,        -- 强制管理原因
    D_CCCKRQ              timestamp                            NULL,        -- 财产查扣日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_QZGLWS              text                                 NULL,        -- 强制管理文书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCQZGLWS            text                                 NULL,        -- 解除强制管理文书
constraint PK_HFZXQZGL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 划拨
-------------------------

drop table if exists T_HFZXHB;
create table T_HFZXHB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHHB                int                                  NULL,        -- 序号_划拨
    N_SQZXR               int                                  NULL,        -- 申请执行人
    N_HBCKSYR             int                                  NULL,        -- 划拨存款所有人
    C_HBZHJZH             varchar(300)                         NULL,        -- 划拨账户及帐号
    N_HBJE                numeric(20, 4)                       NULL,        -- 划拨金额
    C_HBCCLX              varchar(300)                         NULL,        -- 划拨财产类型
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_HRZHJZH             varchar(300)                         NULL,        -- 划入帐户及帐号
    D_HBRQ                timestamp                            NULL,        -- 划拨日期
    C_HRZHSYR             varchar(300)                         NULL,        -- 划入帐号所有人
    C_KHWSXH              text                                 NULL,        -- 扣划文书序号
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_WNHBYY              varchar(300)                         NULL,        -- 未能划拨原因
    N_HBHZ                int                                  NULL,        -- 划拨回执
constraint PK_HFZXHB primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 评估
-------------------------

drop table if exists T_HFZXPG;
create table T_HFZXPG
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPG                int                                  NULL,        -- 序号_评估
    C_SQF                 text                                 NULL,        -- 申请方
    C_BSQF                text                                 NULL,        -- 被申请方
    D_PGJZRQ              timestamp                            NULL,        -- 评估基准日期
    C_YJPGFDSR            text                                 NULL,        -- 预交评估费当事人
    C_YSCL                text                                 NULL,        -- 移送材料
    C_BDWQKSM             text                                 NULL,        -- 标的物情况说明
    C_WTPGSX              text                                 NULL,        -- 委托评估事项
    C_WTPGYSB             text                                 NULL,        -- 委托评估移送表
    N_JBR                 int                                  NULL,        -- 经办人
    D_JBRQ                timestamp                            NULL,        -- 经办日期
    C_SFYY                varchar(300)                         NULL,        -- 是否异议
    C_YYR                 varchar(300)                         NULL,        -- 异议人
    D_TCYYSJ              timestamp                            NULL,        -- 提出异议时间
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    N_TCYYJBR             int                                  NULL,        -- 提出异议经办人
    D_TCYYJBRQ            timestamp                            NULL,        -- 提出异议经办日期
    C_YYCLWC              varchar(300)                         NULL,        -- 异议处理完成
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_YYCLSM              text                                 NULL,        -- 异议处理说明
    D_YYCLRQ              timestamp                            NULL,        -- 异议处理日期
    N_YYCLJBR             int                                  NULL,        -- 异议处理经办人
    D_YYCLJBRQ            timestamp                            NULL,        -- 异议处理经办日期
constraint PK_HFZXPG primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拍卖
-------------------------

drop table if exists T_HFZXPM;
create table T_HFZXPM
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPM                int                                  NULL,        -- 序号_拍卖
    C_SQF                 text                                 NULL,        -- 申请方
    C_BSQF                text                                 NULL,        -- 被申请方
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    N_PMCDSXH             int                                  NULL,        -- 拍卖裁定书序号
    D_PMCDRQ              timestamp                            NULL,        -- 拍卖裁定日期
    N_PMCDJBR             int                                  NULL,        -- 拍卖裁定经办人
    D_PMCDJBRQ            timestamp                            NULL,        -- 拍卖裁定经办日期
    C_SFTJPM              varchar(300)                         NULL,        -- 是否提交拍卖
    C_PMFS                varchar(300)                         NULL,        -- 拍卖方式
    C_SFQDPMJG            varchar(300)                         NULL,        -- 是否确定拍卖机构
    C_PMJGMC              varchar(300)                         NULL,        -- 拍卖机构名称
    C_JGXDFS              varchar(300)                         NULL,        -- 机构选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    C_JGLXR               varchar(300)                         NULL,        -- 机构联系人
    C_JGLXFS              varchar(300)                         NULL,        -- 机构联系方式
    C_PMWSXH              text                                 NULL,        -- 拍卖文书序号
    N_QDJGJBR             int                                  NULL,        -- 确定机构经办人
    D_QDJGJBRQ            timestamp                            NULL,        -- 确定机构经办日期
constraint PK_HFZXPM primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 变卖
-------------------------

drop table if exists T_HFZXBM;
create table T_HFZXBM
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBM                int                                  NULL,        -- 序号_变卖
    C_BMYY                varchar(300)                         NULL,        -- 变卖原因
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    N_BMCDSXH             int                                  NULL,        -- 变卖裁定书序号
    D_BMCDRQ              timestamp                            NULL,        -- 变卖裁定日期
    C_BMFS                varchar(300)                         NULL,        -- 变卖方式
    C_BMJGMC              varchar(300)                         NULL,        -- 变卖机构名称
    C_JGXDFS              varchar(300)                         NULL,        -- 机构选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    C_JGLXR               varchar(300)                         NULL,        -- 机构联系人
    C_BMWTWS              text                                 NULL,        -- 变卖委托文书
constraint PK_HFZXBM primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 以物抵债
-------------------------

drop table if exists T_HFZXYWDZ;
create table T_HFZXYWDZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYWDZ              int                                  NULL,        -- 序号_以物抵债
    C_YWDZYY              varchar(300)                         NULL,        -- 以物抵债原因
    C_BDWQDXH             text                                 NULL,        -- 标的物清单序号
    C_BDWQD               text                                 NULL,        -- 标的物清单
    N_SYQR                int                                  NULL,        -- 所有权人
    N_ZDJE                numeric(20, 4)                       NULL,        -- 折抵金额
    D_ZDRQ                timestamp                            NULL,        -- 折抵日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_YWDZWS              text                                 NULL,        -- 以物抵债文书
constraint PK_HFZXYWDZ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拍抵移交
-------------------------

drop table if exists T_HFZXPDYJ;
create table T_HFZXPDYJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPDYJ              int                                  NULL,        -- 序号_拍抵移交
    C_QSBGLX              varchar(300)                         NULL,        -- 权属变更类型
    C_BDWQDXH             text                                 NULL,        -- 标的物清单序号
    C_BDWQDMS             text                                 NULL,        -- 标的物清单描述
    C_YSYQR               text                                 NULL,        -- 原所有权人
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    C_QSBGWS              text                                 NULL,        -- 权属变更文书
    C_CCYJWB              varchar(300)                         NULL,        -- 财产移交完毕
    D_YJRQ                timestamp                            NULL,        -- 移交日期
    C_CCZYRSFJBYJ         varchar(300)                         NULL,        -- 财产占有人是否拒不移交
    C_QZZXQK              varchar(300)                         NULL,        -- 强制执行情况
constraint PK_HFZXPDYJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 扣留与提取
-------------------------

drop table if exists T_HFZXKLYTQ;
create table T_HFZXKLYTQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKLYTQ             int                                  NULL,        -- 序号_扣留与提取
    C_LB                  varchar(300)                         NULL,        -- 类别
    N_BZXR                int                                  NULL,        -- 被执行人
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    N_NKLTQJE             numeric(20, 4)                       NULL,        -- 拟扣留提取金额
    N_KLTQWSXH            int                                  NULL,        -- 扣留提取文书序号
    D_KLHTQRQ             timestamp                            NULL,        -- 扣留或提取日期
    C_TQZH                varchar(300)                         NULL,        -- 提取帐号
    N_KLTQJE              numeric(20, 4)                       NULL,        -- 扣留提取金额
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_XZZXR               varchar(300)                         NULL,        -- 协执执行人
    C_WNKLTQYY            varchar(300)                         NULL,        -- 未能扣留提取原因
constraint PK_HFZXKLYTQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 强制迁出与退出
-------------------------

drop table if exists T_HFZXQZQCYTC;
create table T_HFZXQZQCYTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZQCYTC           int                                  NULL,        -- 序号_强制迁出与退出
    N_BZXR                int                                  NULL,        -- 被执行人
    D_QQGGRQ              timestamp                            NULL,        -- 强迁公告日期
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_QQWSXH              text                                 NULL,        -- 强迁文书序号
    C_BQCRHBTCR           varchar(300)                         NULL,        -- 被迁出人或被退出人
    D_QCHTCRQ             timestamp                            NULL,        -- 迁出或退出日期
    C_JZR                 varchar(300)                         NULL,        -- 见证人
    C_ZXJG                varchar(300)                         NULL,        -- 执行结果
    C_CCCLQK              varchar(300)                         NULL,        -- 财产处理情况
constraint PK_HFZXQZQCYTC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 其他强制措施
-------------------------

drop table if exists T_HFZXQTQZCS;
create table T_HFZXQTQZCS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQTQZCS            int                                  NULL,        -- 序号_其他强制措施
    C_QZDX                text                                 NULL,        -- 强制对象
    C_CSMC                varchar(300)                         NULL,        -- 措施名称
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_WLXZWNR             varchar(300)                         NULL,        -- 未履行债务内容
    C_QTQZSSWS            text                                 NULL,        -- 其他强制实施文书
    D_SSRQ                timestamp                            NULL,        -- 实施日期
    C_SSDD                varchar(300)                         NULL,        -- 实施地点
    C_SSNR                varchar(300)                         NULL,        -- 实施内容
    C_SSJG                varchar(300)                         NULL,        -- 实施结果
constraint PK_HFZXQTQZCS primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 罚款
-------------------------

drop table if exists T_HFZXFK;
create table T_HFZXFK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFK                int                                  NULL,        -- 序号_罚款
    N_BFKR                int                                  NULL,        -- 被罚款人
    C_FKYY                varchar(300)                         NULL,        -- 罚款原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    D_FKRQ                timestamp                            NULL,        -- 罚款日期
    N_FKJE                numeric(20, 4)                       NULL,        -- 罚款金额
    C_FKWS                text                                 NULL,        -- 罚款文书
    D_LXRQ                timestamp                            NULL,        -- 履行日期
    N_LXJE                numeric(20, 4)                       NULL,        -- 履行金额
    N_FYXH                int                                  NULL,        -- 复议序号
    D_FYSQRQ              timestamp                            NULL,        -- 复议申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYSQS               int                                  NULL,        -- 复议申请书
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    C_DFYHXCL             varchar(300)                         NULL,        -- 对复议后续处理
    N_FYJDS               int                                  NULL,        -- 复议决定书
constraint PK_HFZXFK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拘留
-------------------------

drop table if exists T_HFZXJL;
create table T_HFZXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHJL                int                                  NULL,        -- 序号_拘留
    N_BJLR                int                                  NULL,        -- 被拘留人
    C_JLDD                varchar(300)                         NULL,        -- 拘留地点
    C_JLYY                varchar(300)                         NULL,        -- 拘留原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_JLYYSM              varchar(300)                         NULL,        -- 拘留原因说明
    N_JLTS                int                                  NULL,        -- 拘留天数
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_ZXJLDW              varchar(300)                         NULL,        -- 执行拘留单位
    C_JLJDS               text                                 NULL,        -- 拘留决定书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCJLWS              text                                 NULL,        -- 解除拘留文书
    N_FYXH                int                                  NULL,        -- 复议序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    N_FYSQS               int                                  NULL,        -- 复议申请书
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    N_FYJDS               int                                  NULL,        -- 复议决定书
constraint PK_HFZXJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 犯罪移送
-------------------------

drop table if exists T_HFZXFZYS;
create table T_HFZXFZYS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFZYS              int                                  NULL,        -- 序号_犯罪移送
    N_FZXYR               int                                  NULL,        -- 犯罪嫌疑人
    D_YSRQ                timestamp                            NULL,        -- 移送日期
    C_SYDW                varchar(300)                         NULL,        -- 受移单位
    C_YSYY                varchar(300)                         NULL,        -- 移送原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_SXFZSSXW            varchar(300)                         NULL,        -- 涉嫌犯罪事实行为
    N_YSCLFS              int                                  NULL,        -- 移送材料份数
    C_FZYSWS              text                                 NULL,        -- 犯罪移送文书
constraint PK_HFZXFZYS primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 赔偿责任
-------------------------

drop table if exists T_HFZXPCZR;
create table T_HFZXPCZR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPCZR              int                                  NULL,        -- 序号_赔偿责任
    N_PCZRR               int                                  NULL,        -- 赔偿责任人
    C_PCZRYY              varchar(300)                         NULL,        -- 赔偿责任原因
    D_FXRQ                timestamp                            NULL,        -- 发现日期
    D_CDPCRQ              timestamp                            NULL,        -- 裁定赔偿日期
    D_XZTZSJ              timestamp                            NULL,        -- 协执通知时间
    C_XZZXDSX             varchar(300)                         NULL,        -- 协助执行的事项
    C_JBLXDSSHLY          varchar(300)                         NULL,        -- 拒不履行的事实和理由
    D_JBLXYWDSJ           timestamp                            NULL,        -- 拒不履行义务的时间
    N_DJDJE               numeric(20, 4)                       NULL,        -- 冻结的金额
    N_ZYDJE               numeric(20, 4)                       NULL,        -- 转移的金额
    D_ZLZHTZSJ            timestamp                            NULL,        -- 责令追回通知时间
    D_ZLZHSJ              timestamp                            NULL,        -- 责令追回时间
    C_CKDCC               varchar(300)                         NULL,        -- 查扣冻财产
    D_CKDSJ               timestamp                            NULL,        -- 查扣冻时间
    C_BPCR                varchar(300)                         NULL,        -- 被赔偿人
    N_CDPCQX              int                                  NULL,        -- 裁定赔偿期限
    N_PCJE                numeric(20, 4)                       NULL,        -- 赔偿金额
    N_BPCRSSDSE           numeric(20, 4)                       NULL,        -- 被赔偿人损失的数额
    C_PCZRWS              text                                 NULL,        -- 赔偿责任文书
constraint PK_HFZXPCZR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 强制限制
-------------------------

drop table if exists T_HFZXQZXZ;
create table T_HFZXQZXZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHQZXZ              int                                  NULL,        -- 序号_强制限制
    N_BXZR                int                                  NULL,        -- 被限制人
    C_XZYY                varchar(300)                         NULL,        -- 限制原因
    C_XZZL                varchar(300)                         NULL,        -- 限制种类
    C_XZNR                varchar(300)                         NULL,        -- 限制内容
    C_XZDW                varchar(300)                         NULL,        -- 协执单位
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    N_QZXZWS              int                                  NULL,        -- 强制限制文书
    D_JCRQ                timestamp                            NULL,        -- 解除日期
    C_JCYY                varchar(300)                         NULL,        -- 解除原因
    C_JCQZXZWS            text                                 NULL,        -- 解除强制限制文书
    N_FYXH                int                                  NULL,        -- 复议序号
    D_FYSQRQ              timestamp                            NULL,        -- 复议申请日期
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    N_FYSQS               int                                  NULL,        -- 复议申请书
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYFY                int                                  NULL,        -- 复议法院
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    D_DFRQ                timestamp                            NULL,        -- 答复日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
constraint PK_HFZXQZXZ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 失信被执行人
-------------------------

drop table if exists T_HFZXSXBZXR;
create table T_HFZXSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHSXBZXR           varchar(300)                         NULL,        -- 流水号_失信被执行人
    C_TQFS                varchar(300)                         NULL,        -- 提起方式
    C_AH                  varchar(300)                         NULL,        -- 案号
    N_SXBZXR              int                                  NULL,        -- 失信被执行人
    C_BZXRMC              varchar(300)                         NULL,        -- 被执行人名称
    C_BZXRLX              varchar(300)                         NULL,        -- 被执行人类型
    C_XB                  varchar(300)                         NULL,        -- 性别
    N_NL                  int                                  NULL,        -- 年龄
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_JGFZRXM             varchar(300)                         NULL,        -- 机构负责人姓名
    C_FLWSQRDYW           text                                 NULL,        -- 法律文书确认的义务
    C_BZXRLXQK            varchar(300)                         NULL,        -- 被执行人履行情况
    C_YLXQK               text                                 NULL,        -- 已履行情况
    C_WLXQK               text                                 NULL,        -- 未履行情况
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXAYMC              varchar(300)                         NULL,        -- 执行案由名称
    C_ZXFYMC              varchar(300)                         NULL,        -- 执行法院名称
    C_ZXYJWH              varchar(300)                         NULL,        -- 执行依据文号
    D_FBSJ                timestamp                            NULL,        -- 发布时间
    C_SXBZXRXWQK          varchar(300)                         NULL,        -- 失信被执行人行为情况
    C_SXWSWH              varchar(300)                         NULL,        -- 失信文书文号
    C_NRSXJDS             text                                 NULL,        -- 纳入失信决定书
    N_ZXFY                int                                  NULL,        -- 执行法院
    C_SXZT                varchar(300)                         NULL,        -- 失信状态
    C_ZXYJZZDW            varchar(300)                         NULL,        -- 执行依据制作单位
    D_SQSJ                timestamp                            NULL,        -- 申请时间
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_JGFZRZJHM           varchar(300)                         NULL,        -- 机构负责人证件号码
constraint PK_HFZXSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 变更和追加当事人
-------------------------

drop table if exists T_HFZXBGHZJDSR;
create table T_HFZXBGHZJDSR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBGHZJ             int                                  NULL,        -- 序号_变更和追加
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_BGHZJBZXRLX         varchar(300)                         NULL,        -- 变更或追加被执行人类型
    C_BGHZJYY             varchar(300)                         NULL,        -- 变更或追加原因
    N_BGDYDSR             int                                  NULL,        -- 变更的原当事人
    N_BGHZJDXDSR          int                                  NULL,        -- 变更或追加的新当事人
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    N_CDWS                int                                  NULL,        -- 裁定文书
    C_BGHZJSY             varchar(300)                         NULL,        -- 变更或追加事由
    C_QDYY                varchar(300)                         NULL,        -- 启动原因
    C_BGHZJSQZXRLX        varchar(300)                         NULL,        -- 变更或追加申请执行人类型
constraint PK_HFZXBGHZJDSR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行费承担情况
-------------------------

drop table if exists T_HFZXZXFCDQK;
create table T_HFZXZXFCDQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFYJCD             int                                  NULL,        -- 序号_费用及承担
    N_CDR                 int                                  NULL,        -- 承担人
    N_AJSLF               numeric(20, 4)                       NULL,        -- 案件受理费
    N_SQF                 numeric(20, 4)                       NULL,        -- 申请费
    N_QTFY                numeric(20, 4)                       NULL,        -- 其他费用
    N_YCDFYE              numeric(20, 4)                       NULL,        -- 应承担费用额
constraint PK_HFZXZXFCDQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行费缴纳记录
-------------------------

drop table if exists T_HFZXZXFJNJL;
create table T_HFZXZXFJNJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXFJN             int                                  NULL,        -- 序号_执行费缴纳
    N_CDR                 int                                  NULL,        -- 承担人
    N_AJSLF               numeric(20, 4)                       NULL,        -- 案件受理费
    N_SQF                 numeric(20, 4)                       NULL,        -- 申请费
    N_QTFY                numeric(20, 4)                       NULL,        -- 其他费用
    N_JNZJE               numeric(20, 4)                       NULL,        -- 缴纳总金额
    C_JNR                 varchar(300)                         NULL,        -- 缴纳人
    D_JNRQ                timestamp                            NULL,        -- 交纳日期
    C_SJHM                varchar(300)                         NULL,        -- 收据号码
constraint PK_HFZXZXFJNJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行费司法救助情况
-------------------------

drop table if exists T_HFZXZXFSFJZQK;
create table T_HFZXZXFSFJZQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJZ              int                                  NULL,        -- 序号_司法救助
    N_SJZR                int                                  NULL,        -- 受救助人
    C_SQJZLX              varchar(300)                         NULL,        -- 申请救助类型
    N_SQJJJE              numeric(20, 4)                       NULL,        -- 申请减交金额
    C_SSYLY               varchar(300)                         NULL,        -- 事实与理由
    C_HJQX                varchar(300)                         NULL,        -- 缓交期限
    C_SQJZYY              varchar(300)                         NULL,        -- 申请救助原因
    N_PZR                 int                                  NULL,        -- 批准人
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    C_JJAJLX              varchar(300)                         NULL,        -- 救济案件类型
    C_JJDX                varchar(300)                         NULL,        -- 救济对象
constraint PK_HFZXZXFSFJZQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行款缴纳
-------------------------

drop table if exists T_HFZXZXKJN;
create table T_HFZXZXKJN
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKJN            varchar(300)                         NULL,        -- 流水号_执行款缴纳
    N_JNDSR               int                                  NULL,        -- 缴纳当事人
    C_JNR                 varchar(300)                         NULL,        -- 交纳人
    N_JNJE                numeric(20, 4)                       NULL,        -- 交纳金额
    C_JNKXLB              varchar(300)                         NULL,        -- 交纳款项类别
    D_JNRQ                timestamp                            NULL,        -- 交纳日期
    C_SJHM                varchar(300)                         NULL,        -- 收据号码
    C_DZFS                varchar(300)                         NULL,        -- 到账方式
    C_LYAH                varchar(300)                         NULL,        -- 来源案号
constraint PK_HFZXZXKJN primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行款发放
-------------------------

drop table if exists T_HFZXZXKFF;
create table T_HFZXZXKFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKFF            varchar(300)                         NULL,        -- 流水号_执行款发放
    N_BCFFZE              numeric(20, 4)                       NULL,        -- 本次发放总额
    D_SQRQ                timestamp                            NULL,        -- 申请日期
constraint PK_HFZXZXKFF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 对行为的执行
-------------------------

drop table if exists T_HFZXDXWDZX;
create table T_HFZXDXWDZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDXWDZX            int                                  NULL,        -- 序号_对行为的执行
    C_XWDNR               varchar(300)                         NULL,        -- 行为的内容
    D_XWLXQX              timestamp                            NULL,        -- 行为履行期限
constraint PK_HFZXDXWDZX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行到期债权
-------------------------

drop table if exists T_HFZXZXDQZQ;
create table T_HFZXZXDQZQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXDQZQ            int                                  NULL,        -- 序号_执行到期债权
    C_LY                  varchar(300)                         NULL,        -- 来源
    N_DQZWR               int                                  NULL,        -- 到期债务人
    N_ZQSE                numeric(20, 4)                       NULL,        -- 债权数额
    D_FCTZSRQ             timestamp                            NULL,        -- 发出通知书日期
    N_YYXH                int                                  NULL,        -- 异议序号
    D_YYRQ                timestamp                            NULL,        -- 异议日期
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_KBBCLYY             varchar(300)                         NULL,        -- 抗辩不成立原因
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    N_QDDZQSE             numeric(20, 4)                       NULL,        -- 确定的债权数额
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    N_TCYYR               int                                  NULL,        -- 提出异议人
    C_ZXYYLX              varchar(300)                         NULL,        -- 执行异议类型
    N_ZXYYCDWS            int                                  NULL,        -- 执行异议裁定文书
constraint PK_HFZXZXDQZQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 协助执行
-------------------------

drop table if exists T_HFZXXZZX;
create table T_HFZXXZZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXZZX              int                                  NULL,        -- 序号_协助执行
    C_XZYWRLX             varchar(300)                         NULL,        -- 协助义务人类型
    C_XZYWR               varchar(300)                         NULL,        -- 协助义务人
    C_XZSX                varchar(300)                         NULL,        -- 协助事项
    D_XZTZFCRQ            timestamp                            NULL,        -- 协助通知发出日期
    C_JYXZ                varchar(300)                         NULL,        -- 给予协助
    C_LXQK                varchar(300)                         NULL,        -- 履行情况
constraint PK_HFZXXZZX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 参与分配信息
-------------------------

drop table if exists T_HFZXCYFPXX;
create table T_HFZXCYFPXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCYFP              int                                  NULL,        -- 序号_参与分配
    C_FYLX                varchar(300)                         NULL,        -- 法院类型
    D_YJRQ                timestamp                            NULL,        -- 移交日期
    C_DFPCC               varchar(300)                         NULL,        -- 待分配财产
    N_DFPZJE              numeric(20, 4)                       NULL,        -- 待分配总金额
    C_CYFPJG              varchar(300)                         NULL,        -- 参与分配结果
constraint PK_HFZXCYFPXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 自动履行
-------------------------

drop table if exists T_HFZXZDLX;
create table T_HFZXZDLX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZDLX              int                                  NULL,        -- 序号_自动履行
    N_BZXR                int                                  NULL,        -- 被执行人
    N_SQR                 int                                  NULL,        -- 申请人
    N_LXJE                numeric(20, 4)                       NULL,        -- 履行金额
    C_LXBDW               varchar(300)                         NULL,        -- 履行标的物
    C_LXBDXW              varchar(300)                         NULL,        -- 履行标的行为
    D_LXRQ                timestamp                            NULL,        -- 履行日期
constraint PK_HFZXZDLX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 委托或移送执行
-------------------------

drop table if exists T_HFZXWTHYSZX;
create table T_HFZXWTHYSZX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YSYY                varchar(300)                         NULL,        -- 移送原因
    C_YSWS                text                                 NULL,        -- 移送文书
    D_AJYJRQ              timestamp                            NULL,        -- 案卷移交日期
    N_SYSFY               int                                  NULL,        -- 受移送法院
    D_HFRQ                timestamp                            NULL,        -- 回复日期
    C_HFNR                varchar(300)                         NULL,        -- 回复内容
    C_HFLAAH              varchar(300)                         NULL,        -- 回复立案案号
constraint PK_HFZXWTHYSZX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行异议
-------------------------

drop table if exists T_HFZXZXYY;
create table T_HFZXZXYY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXYY              int                                  NULL,        -- 序号_执行异议
    C_TCYYR               varchar(300)                         NULL,        -- 提出异议人
    D_TCYYRQ              timestamp                            NULL,        -- 提出异议日期
    C_ZXYYLX              varchar(300)                         NULL,        -- 执行异议类型
    C_YYNR                varchar(300)                         NULL,        -- 异议内容
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    C_CDJG                varchar(300)                         NULL,        -- 裁定结果
    D_SDFDYJTZRQ          timestamp                            NULL,        -- 收到反对意见通知日期
    N_ZXYYCDWS            int                                  NULL,        -- 执行异议裁定文书
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    N_SQFYXH              int                                  NULL,        -- 申请复议序号
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    C_CDAH                varchar(300)                         NULL,        -- 裁定案号
    C_CBRYJ               varchar(300)                         NULL,        -- 承办人意见
constraint PK_HFZXZXYY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_HFZXSDJL;
create table T_HFZXSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_HFZXSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_HFZXPBJL;
create table T_HFZXPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_HFZXPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 妨碍执行行为处理
-------------------------

drop table if exists T_HFZXFAZXXWCL;
create table T_HFZXFAZXXWCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFAZX              int                                  NULL,        -- 序号_妨碍执行
    N_XWR                 int                                  NULL,        -- 行为人
    C_XWLX                varchar(300)                         NULL,        -- 行为类型
    D_CLRQ                timestamp                            NULL,        -- 处理日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    N_FKJE                numeric(20, 4)                       NULL,        -- 罚款金额
    D_FKJNRQ              timestamp                            NULL,        -- 罚款缴纳日期
    N_JLTS                int                                  NULL,        -- 拘留天数
    C_JLCS                varchar(300)                         NULL,        -- 拘留场所
    C_CLWS                text                                 NULL,        -- 处理文书
constraint PK_HFZXFAZXXWCL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 回避情况
-------------------------

drop table if exists T_HFZXHBQK;
create table T_HFZXHBQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHHB                int                                  NULL,        -- 序号_回避
    C_HBLX                varchar(300)                         NULL,        -- 回避类型
    D_SQHBRQ              timestamp                            NULL,        -- 申请回避日期
    C_HBYY                varchar(300)                         NULL,        -- 回避原因
    N_HBR                 int                                  NULL,        -- 回避人
    N_HBSQR               int                                  NULL,        -- 回避申请人
    C_HBCLJG              varchar(300)                         NULL,        -- 回避处理结果
    C_HBJDR               varchar(300)                         NULL,        -- 回避决定人
    D_HBJDRQ              timestamp                            NULL,        -- 回避决定日期
    N_HBJDS               int                                  NULL,        -- 回避决定书
constraint PK_HFZXHBQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行担保情况
-------------------------

drop table if exists T_HFZXZXDBQK;
create table T_HFZXZXDBQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDB                int                                  NULL,        -- 序号_担保
    C_SY                  varchar(300)                         NULL,        -- 事由
    N_DSR                 int                                  NULL,        -- 当事人
    C_DBFS                varchar(300)                         NULL,        -- 担保方式
    N_DBR                 int                                  NULL,        -- 担保人
    C_YDSRGX              varchar(300)                         NULL,        -- 与当事人关系
    N_BZJE                numeric(20, 4)                       NULL,        -- 保证金额
    D_DBRQ                timestamp                            NULL,        -- 担保日期
    C_DBWMC               varchar(300)                         NULL,        -- 担保物名称
    C_DBFW                varchar(300)                         NULL,        -- 担保范围
    N_DBQX                int                                  NULL,        -- 担保期限
    D_CDRQ                timestamp                            NULL,        -- 裁定日期
    C_CDNR                varchar(300)                         NULL,        -- 裁定内容
    C_DBWSXH              text                                 NULL,        -- 担保文书序号
constraint PK_HFZXZXDBQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_HFZXSFJY;
create table T_HFZXSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_HFZXSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_HFZXAJPY;
create table T_HFZXAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_HFZXAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_HFZXSWHTL;
create table T_HFZXSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_HFZXSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行复议
-------------------------

drop table if exists T_HFZXZXFY;
create table T_HFZXZXFY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXFY              int                                  NULL,        -- 序号_执行复议
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYSQS               int                                  NULL,        -- 复议申请书
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    N_FYJDS               int                                  NULL,        -- 复议决定书
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    C_DFYDHXCL            varchar(300)                         NULL,        -- 对复议的后续处理
constraint PK_HFZXZXFY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_HFZXZXLCJD;
create table T_HFZXZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_HFZXZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_HFZXZXZTXX;
create table T_HFZXZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_HFZXZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行外勤
-------------------------

drop table if exists T_HFZXZXWQ;
create table T_HFZXZXWQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXWQ              int                                  NULL,        -- 序号_执行外勤
    C_ZXYWLB              varchar(300)                         NULL,        -- 执行业务类别
    C_SPMC                varchar(300)                         NULL,        -- 视频名称
    C_LMTDZ               varchar(300)                         NULL,        -- 流媒体地址
    D_ZXRQ                timestamp                            NULL,        -- 执行日期
    C_ZXDD                varchar(300)                         NULL,        -- 执行地点
    N_SZ                  int                                  NULL,        -- 时长
    N_SPWJDX              int                                  NULL,        -- 视频文件大小
    C_SPJJ                varchar(300)                         NULL,        -- 视频简介
    C_ZZR                 varchar(300)                         NULL,        -- 制作人
    C_DJR                 varchar(300)                         NULL,        -- 登记人
    D_DJRQ                timestamp                            NULL,        -- 登记日期
constraint PK_HFZXZXWQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 屏蔽被执行人
-------------------------

drop table if exists T_HFZXPBBZXR;
create table T_HFZXPBBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHPBBZXR           varchar(300)                         NULL,        -- 流水号_屏蔽被执行人
    N_PBBZXR              int                                  NULL,        -- 屏蔽被执行人
    C_PBYY                text                                 NULL,        -- 屏蔽原因
    D_PBSQRQ              timestamp                            NULL,        -- 屏蔽申请日期
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_HFZXPBBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_HFZXZXRZ;
create table T_HFZXZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_HFZXZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行督办事项
-------------------------

drop table if exists T_HFZXZXDBSX;
create table T_HFZXZXDBSX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    C_DBZT                varchar(300)                         NULL,        -- 督办主题
    D_DBQX                timestamp                            NULL,        -- 督办期限
    C_SXLX                varchar(300)                         NULL,        -- 事项类型
    C_ZXDBXFJL            text                                 NULL,        -- 执行督办下发记录
    D_XZSJ                timestamp                            NULL,        -- 下载时间
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_HFZXZXDBSX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行督办下发记录
-------------------------

drop table if exists T_HFZXZXDBXFJL;
create table T_HFZXZXDBXFJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    N_XH                  int                                  NULL,        -- 序号
    N_FQFY                int                                  NULL,        -- 发起法院
    C_DBYQ                text                                 NULL,        -- 督办要求
    D_XFSJ                timestamp                            NULL,        -- 下发时间
    D_JSDBXXSJ            timestamp                            NULL,        -- 接收督办信息时间
    C_JSDBXXRXM           varchar(300)                         NULL,        -- 接收督办信息人姓名
    C_WSXX                text                                 NULL,        -- 文书信息
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
constraint PK_HFZXZXDBXFJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行委托信息
-------------------------

drop table if exists T_HFZXZXWTXX;
create table T_HFZXZXWTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_STFY                int                                  NULL,        -- 受托法院
    C_SFSNWT              varchar(300)                         NULL,        -- 是否省内委托
    C_WTCJRXM             varchar(300)                         NULL,        -- 委托创建人姓名
    D_WTSJ                timestamp                            NULL,        -- 委托时间
    C_CBRLXFS             varchar(300)                         NULL,        -- 承办人联系方式
    D_BLQX                timestamp                            NULL,        -- 办理期限
    C_WTCKLCCPSX          varchar(300)                         NULL,        -- 委托存款理财产品事项
    C_WTBDCXYDJDDCSX      varchar(300)                         NULL,        -- 委托不动产需要登记的动产事项
    C_WTGQJQTTZQYSX       varchar(300)                         NULL,        -- 委托股权及其他投资权益事项
    C_WTSDFLWSSX          varchar(300)                         NULL,        -- 委托送达法律文书事项
    C_WTDCSX              varchar(300)                         NULL,        -- 委托调查事项
    C_WTXQ                text                                 NULL,        -- 委托详情
    C_WTSQWS              text                                 NULL,        -- 委托申请文书
    C_WTSXCLZT            varchar(300)                         NULL,        -- 委托事项处理状态
constraint PK_HFZXZXWTXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 委托受理
-------------------------

drop table if exists T_HFZXWTSL;
create table T_HFZXWTSL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    C_WTBH                varchar(300)                         NULL,        -- 委托编号
    D_SLSJ                timestamp                            NULL,        -- 受理时间
    C_SLRXM               varchar(300)                         NULL,        -- 受理人姓名
    C_SLRLXFS             varchar(300)                         NULL,        -- 受理人联系方式
constraint PK_HFZXWTSL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 委托办理
-------------------------

drop table if exists T_HFZXWTBL;
create table T_HFZXWTBL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    D_BJSJ                timestamp                            NULL,        -- 办结时间
    C_BJSM                text                                 NULL,        -- 办结说明
    C_PTTHYY              varchar(300)                         NULL,        -- 平台退回原因
    C_PTWTSXZT            varchar(300)                         NULL,        -- 平台委托事项状态
    C_LCXTWTBLWS          text                                 NULL,        -- 流程系统委托办理文书
constraint PK_HFZXWTBL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 委托办理确认
-------------------------

drop table if exists T_HFZXWTBLQR;
create table T_HFZXWTBLQR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_QRXH                int                                  NULL,        -- 确认序号
    C_QRJG                varchar(300)                         NULL,        -- 确认结果
    C_BLJGTHYY            varchar(300)                         NULL,        -- 办理结果退回原因
    D_QRRQ                timestamp                            NULL,        -- 确认日期
constraint PK_HFZXWTBLQR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 报告财产令
-------------------------

drop table if exists T_HFZXBGCCL;
create table T_HFZXBGCCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_BZXR                int                                  NULL,        -- 被执行人
    C_QDYY                varchar(300)                         NULL,        -- 启动原因
    D_BGCCLFCRQ           timestamp                            NULL,        -- 报告财产令发出日期
    D_CCBGQJJMRQ          timestamp                            NULL,        -- 财产报告期间届满日期
    C_BGCCL               text                                 NULL,        -- 报告财产令
    N_YQTS                int                                  NULL,        -- 延期天数
    C_YQYY                varchar(300)                         NULL,        -- 延期原因
    D_YQSQRQ              timestamp                            NULL,        -- 延期申请日期
    C_YQSPJL              varchar(300)                         NULL,        -- 延期审批结论
    C_YQSPYJ              varchar(300)                         NULL,        -- 延期审批意见
    N_YQSPR               int                                  NULL,        -- 延期审批人
    D_YQSPRQ              timestamp                            NULL,        -- 延期审批日期
    D_CCBGRQ              timestamp                            NULL,        -- 财产报告日期
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
constraint PK_HFZXBGCCL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 延缓发放
-------------------------

drop table if exists T_HFZXYHFF;
create table T_HFZXYHFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHAKDZLSH          varchar(300)                         NULL,        -- 流水号_案款到账流水号
    N_MXXH                int                                  NULL,        -- 明细序号
    C_YHYY                varchar(300)                         NULL,        -- 延缓原因
    N_YHTS                int                                  NULL,        -- 延缓天数
constraint PK_HFZXYHFF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行款提存
-------------------------

drop table if exists T_HFZXZXKTC;
create table T_HFZXZXKTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXKTCLSH         varchar(300)                         NULL,        -- 流水号_执行款提存流水号
    N_YE                  numeric(20, 4)                       NULL,        -- 余额
    N_TCJE                numeric(20, 4)                       NULL,        -- 提存金额
    C_TCYY                varchar(300)                         NULL,        -- 提存原因
    D_TCRQ                timestamp                            NULL,        -- 提存日期
constraint PK_HFZXZXKTC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行物登记
-------------------------

drop table if exists T_HFZXZXWDJ;
create table T_HFZXZXWDJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BH                  varchar(300)                         NULL,        -- 编号
    C_ZXWMC               varchar(300)                         NULL,        -- 执行物名称
    C_KWLX                varchar(300)                         NULL,        -- 款物类型
    N_BGFY                int                                  NULL,        -- 保管法院
    C_BGBM                varchar(300)                         NULL,        -- 保管部门
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    N_BZXRXMHMC           int                                  NULL,        -- 被执行人姓名或名称
    D_ZXRQ                timestamp                            NULL,        -- 执行日期
    C_SQPZ                varchar(300)                         NULL,        -- 收取凭证
constraint PK_HFZXZXWDJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行物发放
-------------------------

drop table if exists T_HFZXZXWFF;
create table T_HFZXZXWFF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_LSHZXWFF            int                                  NULL,        -- 流水号_执行物发放
    C_ZXWBH               varchar(300)                         NULL,        -- 执行物编号
    C_LQR                 varchar(300)                         NULL,        -- 领取人
    N_FFDSR               int                                  NULL,        -- 发放当事人
    C_SFFFWB              varchar(300)                         NULL,        -- 是否发放完毕
    C_LQRZJH              varchar(300)                         NULL,        -- 领取人证件号
    C_LQRZJLX             varchar(300)                         NULL,        -- 领取人证件类型
    D_LQRQ                timestamp                            NULL,        -- 领取日期
constraint PK_HFZXZXWFF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行物提存
-------------------------

drop table if exists T_HFZXZXWTC;
create table T_HFZXZXWTC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHZXWTCLSH         varchar(300)                         NULL,        -- 流水号_执行物提存流水号
    C_BZXRXMHMC           varchar(300)                         NULL,        -- 被执行人姓名或名称
    C_TCZXW               text                                 NULL,        -- 提存执行物
    C_TCYY                varchar(300)                         NULL,        -- 提存原因
    D_TCRQ                timestamp                            NULL,        -- 提存日期
constraint PK_HFZXZXWTC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_HFZXCPWSSWXX;
create table T_HFZXCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_HFZXCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_HFZXCPWSBSWXX;
create table T_HFZXCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_HFZXCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_HFZXZLJL;
create table T_HFZXZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_HFZXZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产现金
-------------------------

drop table if exists T_HFZXYCMCCXJ;
create table T_HFZXYCMCCXJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_BZ                  varchar(300)                         NULL,        -- 币种
constraint PK_HFZXYCMCCXJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产银行存款
-------------------------

drop table if exists T_HFZXYCMCCYHCK;
create table T_HFZXYCMCCYHCK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YHMC                varchar(300)                         NULL,        -- 银行名称
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_KHWD                varchar(300)                         NULL,        -- 开户网点
    C_KHWDDM              varchar(300)                         NULL,        -- 开户网点代码
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    D_XHSJ                timestamp                            NULL,        -- 销户时间
    C_BZ                  varchar(300)                         NULL,        -- 币种
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_SFZT                varchar(300)                         NULL,        -- 是否透支
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_GBZJZH              varchar(300)                         NULL,        -- 关联资金账户
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_HFZXYCMCCYHCK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产互联网金融信息
-------------------------

drop table if exists T_HFZXYCMCCHLWJRXX;
create table T_HFZXYCMCCHLWJRXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCRMC               varchar(300)                         NULL,        -- 注册人名称
    C_ZCRZJLX             varchar(300)                         NULL,        -- 注册人证件类型
    C_ZCRZJHM             varchar(300)                         NULL,        -- 注册人证件号码
    C_ZCRSJHM             varchar(300)                         NULL,        -- 注册人手机号码
    C_ZH                  varchar(300)                         NULL,        -- 账户
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    D_ZHZCSJ              timestamp                            NULL,        -- 账户注册时间
    C_JJBZ                varchar(300)                         NULL,        -- 计价币种
    N_ZCSE                numeric(20, 4)                       NULL,        -- 资产数额
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_HFZXYCMCCHLWJRXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他资金
-------------------------

drop table if exists T_HFZXYCMCCQTZJ;
create table T_HFZXYCMCCQTZJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZJMC                varchar(300)                         NULL,        -- 资金名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_KHYH                varchar(300)                         NULL,        -- 开户银行
    C_KHMC                varchar(300)                         NULL,        -- 开户名称
    D_CXSJ                timestamp                            NULL,        -- 查询时间
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_DWMC                varchar(300)                         NULL,        -- 单位名称
    C_DWZH                varchar(300)                         NULL,        -- 单位账号
constraint PK_HFZXYCMCCQTZJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产车辆
-------------------------

drop table if exists T_HFZXYCMCCCL;
create table T_HFZXYCMCCCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCDJJG              varchar(300)                         NULL,        -- 注册登记机关
    C_JDCDJBH             varchar(300)                         NULL,        -- 机动车登记编号
    C_HPZL                varchar(300)                         NULL,        -- 号牌种类
    C_CLPP                varchar(300)                         NULL,        -- 车辆品牌
    C_CLLX                varchar(300)                         NULL,        -- 车辆类型
    C_CLSBH               varchar(300)                         NULL,        -- 车辆识别号
    C_FDJH                varchar(300)                         NULL,        -- 发动机号
    C_CLXH                varchar(300)                         NULL,        -- 车辆型号
    D_ZCDJRQ              timestamp                            NULL,        -- 注册登记日期
    D_CLCCRQ              timestamp                            NULL,        -- 车辆出厂日期
    C_CLSYXZ              varchar(300)                         NULL,        -- 车辆使用性质
    C_CSYS                varchar(300)                         NULL,        -- 车身颜色
    C_JDCZT               varchar(300)                         NULL,        -- 机动车状态
    C_SFNS                varchar(300)                         NULL,        -- 是否年审
    C_NK                  varchar(300)                         NULL,        -- 年款
    C_CX                  varchar(300)                         NULL,        -- 车系
    C_PL                  varchar(300)                         NULL,        -- 排量
    N_XSLC                numeric(20, 4)                       NULL,        -- 行驶里程
    C_CK                  varchar(300)                         NULL,        -- 车况
    C_BXQK                varchar(300)                         NULL,        -- 保险情况
constraint PK_HFZXYCMCCCL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产住宅用房
-------------------------

drop table if exists T_HFZXYCMCCZZYF;
create table T_HFZXYCMCCZZYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    N_S                   int                                  NULL,        -- 室
    N_T                   int                                  NULL,        -- 厅
    N_W                   int                                  NULL,        -- 卫
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_HFZXYCMCCZZYF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产建设用地使用权
-------------------------

drop table if exists T_HFZXYCMCCJSYDSYQ;
create table T_HFZXYCMCCJSYDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    C_CQZH                varchar(300)                         NULL,        -- 产权证号
    N_TDMJ                numeric(20, 4)                       NULL,        -- 土地面积
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    N_FEBL                numeric(20, 4)                       NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型 
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    C_YT                  varchar(300)                         NULL,        -- 用途
    N_QLR                 int                                  NULL,        -- 权利人
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_HFZXYCMCCJSYDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产股票
-------------------------

drop table if exists T_HFZXYCMCCGP;
create table T_HFZXYCMCCGP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CYZQMC              varchar(300)                         NULL,        -- 持有证券名称
    C_KHJG                varchar(300)                         NULL,        -- 开户机构
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    C_ZQZHH               varchar(300)                         NULL,        -- 证券帐户号
    C_ZHLB                varchar(300)                         NULL,        -- 帐户类别
    N_ZHZJJE              numeric(20, 4)                       NULL,        -- 帐户资金金额
    C_ZHZT                varchar(300)                         NULL,        -- 帐户状态
    C_ZQDM                varchar(300)                         NULL,        -- 证券代码
    C_ZQJC                varchar(300)                         NULL,        -- 证券简称
    N_CGSL                numeric(20, 4)                       NULL,        -- 持股数量
    C_ZQXZ                varchar(300)                         NULL,        -- 证券性质
    C_ZHMC                varchar(300)                         NULL,        -- 账户名称
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_DQTGDY              varchar(300)                         NULL,        -- 当前托管单元
    C_JSCYRMC             varchar(300)                         NULL,        -- 结算参与人名称
    C_GFXZ                varchar(300)                         NULL,        -- 股份性质
    C_LTLX                varchar(300)                         NULL,        -- 流通类型
    C_QYLB                varchar(300)                         NULL,        -- 权益类别
    N_KJYSL               numeric(20, 4)                       NULL,        -- 可交易数量
constraint PK_HFZXYCMCCGP primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产基金
-------------------------

drop table if exists T_HFZXYCMCCJJ;
create table T_HFZXYCMCCJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_JJMC                varchar(300)                         NULL,        -- 基金名称
    N_JJSL                numeric(20, 4)                       NULL,        -- 基金数量
    C_JJXSDW              varchar(300)                         NULL,        -- 基金销售单位
    C_JJBH                varchar(300)                         NULL,        -- 基金编号
constraint PK_HFZXYCMCCJJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产债券
-------------------------

drop table if exists T_HFZXYCMCCZQ;
create table T_HFZXYCMCCZQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZQMC                varchar(300)                         NULL,        -- 债券名称
    N_ZQMZ                numeric(20, 4)                       NULL,        -- 债券面值
    C_ZQFXDW              varchar(300)                         NULL,        -- 债券发行单位
    C_ZQBH                varchar(300)                         NULL,        -- 债券编号
constraint PK_HFZXYCMCCZQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他财产性权益
-------------------------

drop table if exists T_HFZXYCMCCQTCCXQY;
create table T_HFZXYCMCCQTCCXQY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_QLMC                varchar(300)                         NULL,        -- 权利名称
    C_BH                  varchar(300)                         NULL,        -- 编号
    C_QLDJDW              varchar(300)                         NULL,        -- 权利登记单位
    N_DQGZ                numeric(20, 4)                       NULL,        -- 当前估值
constraint PK_HFZXYCMCCQTCCXQY primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产渔船
-------------------------

drop table if exists T_HFZXYCMCCYC;
create table T_HFZXYCMCCYC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YCBM                varchar(300)                         NULL,        -- 渔船编码
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_YCZL                varchar(300)                         NULL,        -- 渔船种类
    N_ZCCC                numeric(20, 4)                       NULL,        -- 渔船船长
    N_YCXK                numeric(20, 4)                       NULL,        -- 渔船形宽
    N_YCXS                numeric(20, 4)                       NULL,        -- 渔船形深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZJZGL               numeric(20, 4)                       NULL,        -- 主机总功率
    C_CTCZ                varchar(300)                         NULL,        -- 船体材质
    D_JZWGRQ              timestamp                            NULL,        -- 建造完工日期
    C_CBHHSBM             varchar(300)                         NULL,        -- 船舶呼号识别码
    C_CBSYRMC             varchar(300)                         NULL,        -- 船舶所有人名称
    C_CBSYRDZ             varchar(300)                         NULL,        -- 船舶所有人地址
    C_SYRZJHM             varchar(300)                         NULL,        -- 所有人证件号码
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    D_SYQDJSJ             timestamp                            NULL,        -- 所有权登记审批时间
constraint PK_HFZXYCMCCYC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产船舶
-------------------------

drop table if exists T_HFZXYCMCCCB;
create table T_HFZXYCMCCCB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CBSBH               varchar(300)                         NULL,        -- 船舶识别号
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_CBCYM               varchar(300)                         NULL,        -- 船舶曾用名
    C_IMOBH               varchar(300)                         NULL,        -- IMO编号
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    C_YCJG                varchar(300)                         NULL,        -- 原船籍港
    C_CBZL                varchar(300)                         NULL,        -- 船舶种类
    C_CBHH                varchar(300)                         NULL,        -- 船舶呼号
    C_ZCDD                varchar(300)                         NULL,        -- 造船地点
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    N_CBC                 numeric(20, 4)                       NULL,        -- 船舶长
    N_CBK                 numeric(20, 4)                       NULL,        -- 船舶宽
    N_CBS                 numeric(20, 4)                       NULL,        -- 船舶深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZZDW                numeric(20, 4)                       NULL,        -- 载重吨位
    N_GL                  numeric(20, 4)                       NULL,        -- 功率
constraint PK_HFZXYCMCCCB primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产股权
-------------------------

drop table if exists T_HFZXYCMCCGQ;
create table T_HFZXYCMCCGQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCH                 varchar(300)                         NULL,        -- 注册号
    C_CGGSMC              varchar(300)                         NULL,        -- 持股公司名称
    C_ZS                  varchar(300)                         NULL,        -- 住所
    C_ZCZB                varchar(300)                         NULL,        -- 注册资本
    C_GSLX                varchar(300)                         NULL,        -- 公司类型
    C_JYFW                varchar(300)                         NULL,        -- 经营范围
    D_CLSJ                timestamp                            NULL,        -- 成立时间
    C_YYQX                varchar(300)                         NULL,        -- 营业期限
    N_CZE                 numeric(20, 4)                       NULL,        -- 出资额
    N_CZBL                numeric(20, 4)                       NULL,        -- 出资比例
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_NJQK                varchar(300)                         NULL,        -- 年检情况
constraint PK_HFZXYCMCCGQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产税务
-------------------------

drop table if exists T_HFZXYCMCCSW;
create table T_HFZXYCMCCSW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_TSZH                varchar(300)                         NULL,        -- 退税账号
    N_TSJE                numeric(20, 4)                       NULL,        -- 退税金额
    D_TSSJ                timestamp                            NULL,        -- 退税时间
    C_NSZH                varchar(300)                         NULL,        -- 纳税账号
    N_NSJE                numeric(20, 4)                       NULL,        -- 纳税金额
    N_DKJE                numeric(20, 4)                       NULL,        -- 抵扣金额
constraint PK_HFZXYCMCCSW primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产债权
-------------------------

drop table if exists T_HFZXYCMCCZQXX;
create table T_HFZXYCMCCZQXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_ZWR                 varchar(300)                         NULL,        -- 债务人
constraint PK_HFZXYCMCCZQXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产查明机器设备
-------------------------

drop table if exists T_HFZXYCMCCCMJQSB;
create table T_HFZXYCMCCCMJQSB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SBZJJZ              numeric(20, 4)                       NULL,        -- 设备折旧价值
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
constraint PK_HFZXYCMCCCMJQSB primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产查明产品原材料
-------------------------

drop table if exists T_HFZXYCMCCCMCPYCL;
create table T_HFZXYCMCCCMCPYCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_HFZXYCMCCCMCPYCL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产知识产权
-------------------------

drop table if exists T_HFZXYCMCCZSCQ;
create table T_HFZXYCMCCZSCQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZZLX                varchar(300)                         NULL,        -- 证照类型
    C_ZZHM                varchar(300)                         NULL,        -- 证照号码
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
constraint PK_HFZXYCMCCZSCQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产古玩字画
-------------------------

drop table if exists T_HFZXYCMCCGWZH;
create table T_HFZXYCMCCGWZH
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_HFZXYCMCCGWZH primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产土地承包经营权
-------------------------

drop table if exists T_HFZXYCMCCTDCBJYQ;
create table T_HFZXYCMCCTDCBJYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_HFZXYCMCCTDCBJYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产宅基地使用权
-------------------------

drop table if exists T_HFZXYCMCCZJDSYQ;
create table T_HFZXYCMCCZJDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_HFZXYCMCCZJDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产海域使用权
-------------------------

drop table if exists T_HFZXYCMCCHYSYQ;
create table T_HFZXYCMCCHYSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YHLXA               varchar(300)                         NULL,        -- 用海类型A
    C_YHLXB               varchar(300)                         NULL,        -- 用海类型B
    C_HDMC                varchar(300)                         NULL,        -- 海岛名称
    C_HDWZ                varchar(300)                         NULL,        -- 海岛位置
    C_HDYT                varchar(300)                         NULL,        -- 海岛用途
    D_SYQQSSJ             timestamp                            NULL,        -- 使用权起始时间
    D_SYQJSSJ             timestamp                            NULL,        -- 使用权结束时间
constraint PK_HFZXYCMCCHYSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他土地使用权
-------------------------

drop table if exists T_HFZXYCMCCQTTDSYQ;
create table T_HFZXYCMCCQTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    C_QLXZ                varchar(300)                         NULL,        -- 权利性质
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    N_QLR                 int                                  NULL,        -- 权利人
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_HFZXYCMCCQTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产商业用房
-------------------------

drop table if exists T_HFZXYCMCCSYYF;
create table T_HFZXYCMCCSYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_HFZXYCMCCSYYF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产工业用房
-------------------------

drop table if exists T_HFZXYCMCCGYYF;
create table T_HFZXYCMCCGYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_HFZXYCMCCGYYF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他用房
-------------------------

drop table if exists T_HFZXYCMCCQTYF;
create table T_HFZXYCMCCQTYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_HFZXYCMCCQTYF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产航空器
-------------------------

drop table if exists T_HFZXYCMCCHKQ;
create table T_HFZXYCMCCHKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_HKQLX               varchar(300)                         NULL,        -- 航空器类型
    C_SBH                 varchar(300)                         NULL,        -- 识别号
    C_TFD                 varchar(300)                         NULL,        -- 停放地
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_HFZXYCMCCHKQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他交通运输工具
-------------------------

drop table if exists T_HFZXYCMCCQTJTYSGJ;
create table T_HFZXYCMCCQTJTYSGJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_PZ                  varchar(300)                         NULL,        -- 牌照
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_HFZXYCMCCQTJTYSGJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产一般动产
-------------------------

drop table if exists T_HFZXYCMCCYBDC;
create table T_HFZXYCMCCYBDC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  int                                  NULL,        -- 数量
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_WZ                  varchar(300)                         NULL,        -- 位置
constraint PK_HFZXYCMCCYBDC primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产住房公积金
-------------------------

drop table if exists T_HFZXYCMCCZFGJJ;
create table T_HFZXYCMCCZFGJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_HFZXYCMCCZFGJJ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产股息红利
-------------------------

drop table if exists T_HFZXYCMCCGXHL;
create table T_HFZXYCMCCGXHL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_HFZXYCMCCGXHL primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产收益类保险
-------------------------

drop table if exists T_HFZXYCMCCSYLBX;
create table T_HFZXYCMCCSYLBX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_HFZXYCMCCSYLBX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产金融理财产品
-------------------------

drop table if exists T_HFZXYCMCCJRLCCP;
create table T_HFZXYCMCCJRLCCP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_HFZXYCMCCJRLCCP primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产森林林木使用权
-------------------------

drop table if exists T_HFZXYCMCCSLLMSYQ;
create table T_HFZXYCMCCSLLMSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_HFZXYCMCCSLLMSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产集体土地所有权
-------------------------

drop table if exists T_HFZXYCMCCJTTDSYQ;
create table T_HFZXYCMCCJTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_HFZXYCMCCJTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产珠宝玉石首饰
-------------------------

drop table if exists T_HFZXYCMCCZBYSSS;
create table T_HFZXYCMCCZBYSSS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
constraint PK_HFZXYCMCCZBYSSS primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产探矿采矿权
-------------------------

drop table if exists T_HFZXYCMCCTKCKQ;
create table T_HFZXYCMCCTKCKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_KQMC                varchar(300)                         NULL,        -- 矿权名称
    C_XKZH                varchar(300)                         NULL,        -- 许可证号
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_HFZXYCMCCTKCKQ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 已查明财产其他
-------------------------

drop table if exists T_HFZXYCMCCQT;
create table T_HFZXYCMCCQT
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXYCMCC        char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
    C_BH                  varchar(300)                         NULL,        -- 编号
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
constraint PK_HFZXYCMCCQT primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 查封续封
-------------------------

drop table if exists T_HFZXCFXF;
create table T_HFZXCFXF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXCF           char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXF                int                                  NULL,        -- 序号_续封
    C_XFYY                varchar(300)                         NULL,        -- 续封原因
    D_CDXFRQ              timestamp                            NULL,        -- 裁定续封日期
    D_XFJMRQ              timestamp                            NULL,        -- 续封届满日期
    C_XFCCQDXH            text                                 NULL,        -- 续封财产清单序号
    C_XFCCQD              text                                 NULL,        -- 续封财产清单
    C_XFWSXH              text                                 NULL,        -- 续封文书序号
constraint PK_HFZXCFXF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 查封部分解封
-------------------------

drop table if exists T_HFZXCFBFJF;
create table T_HFZXCFBFJF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXCF           char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJF              int                                  NULL,        -- 序号_部分解封
    C_BFJCCFYY            varchar(300)                         NULL,        -- 部分解除查封原因
    C_BFJCCFWXH           text                                 NULL,        -- 部分解除查封物序号
    C_BFJCCFW             text                                 NULL,        -- 部分解除查封物
    C_BFSYCFW             text                                 NULL,        -- 部分剩余查封物
    D_BFJFRQ              timestamp                            NULL,        -- 部分解封日期
    C_BFJFWS              text                                 NULL,        -- 部分解封文书
constraint PK_HFZXCFBFJF primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 扣押续扣
-------------------------

drop table if exists T_HFZXKYXK;
create table T_HFZXKYXK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXKY           char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXK                int                                  NULL,        -- 序号_续扣
    D_CDXKRQ              timestamp                            NULL,        -- 裁定续扣日期
    D_XKJMRQ              timestamp                            NULL,        -- 续扣届满日期
    C_XKYY                varchar(300)                         NULL,        -- 续扣原因
    C_XKCCQDXH            text                                 NULL,        -- 续扣财产清单序号
    C_XKCCQD              text                                 NULL,        -- 续扣财产清单
    C_XKWSXH              text                                 NULL,        -- 续扣文书序号
constraint PK_HFZXKYXK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 扣押部分解扣
-------------------------

drop table if exists T_HFZXKYBFJK;
create table T_HFZXKYBFJK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXKY           char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJK              int                                  NULL,        -- 序号_部分解扣
    C_BFJCKYYY            varchar(300)                         NULL,        -- 部分解除扣押原因
    C_BFJCCFCCXH          text                                 NULL,        -- 部分解除查封财产序号
    C_BFJCKYWP            text                                 NULL,        -- 部分解除扣押物品
    C_SYKYW               text                                 NULL,        -- 剩余扣押物
    D_BFJKRQ              timestamp                            NULL,        -- 部分解扣日期
    C_BFJKWS              text                                 NULL,        -- 部分解扣文书
constraint PK_HFZXKYBFJK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 冻结续冻
-------------------------

drop table if exists T_HFZXDJXD;
create table T_HFZXDJXD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXDJ           char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXD                int                                  NULL,        -- 序号_续冻
    D_CDXDRQ              timestamp                            NULL,        -- 裁定续冻日期
    D_XDJMRQ              timestamp                            NULL,        -- 续冻届满日期
    C_XDYY                varchar(300)                         NULL,        -- 续冻原因
    C_XDCCQDXH            text                                 NULL,        -- 续冻财产清单序号
    C_XDCCQD              text                                 NULL,        -- 续冻财产清单
    C_XDWSXH              text                                 NULL,        -- 续冻文书序号
constraint PK_HFZXDJXD primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 冻结部分解冻
-------------------------

drop table if exists T_HFZXDJBFJD;
create table T_HFZXDJBFJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXDJ           char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJD              int                                  NULL,        -- 序号_部分解冻
    C_BFJCDJYY            varchar(300)                         NULL,        -- 部分解除冻结原因
    C_BFJCDJCCXH          text                                 NULL,        -- 部分解除冻结财产序号
    C_BFJCDJCC            text                                 NULL,        -- 部分解除冻结财产
    D_BFJDRQ              timestamp                            NULL,        -- 部分解冻日期
    C_BFJDWS              text                                 NULL,        -- 部分解冻文书
constraint PK_HFZXDJBFJD primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 评估评估标的物
-------------------------

drop table if exists T_HFZXPGPGBDW;
create table T_HFZXPGPGBDW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXPG           char(32)                             NOT NULL,    -- 评估ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHPGBDW             int                                  NULL,        -- 编号_评估标的物
    C_PGBDWMC             text                                 NULL,        -- 评估标的物名称
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SFQDPGJG            varchar(300)                         NULL,        -- 是否确定评估机构
    C_PGJGMC              varchar(300)                         NULL,        -- 评估机构名称
    C_XDFS                varchar(300)                         NULL,        -- 选定方式
    D_QDJGRQ              timestamp                            NULL,        -- 确定机构日期
    D_JGYJWCGZRQ          timestamp                            NULL,        -- 机构预计完成工作日期
    N_PGWTS               int                                  NULL,        -- 评估委托书
    N_QDJGJBR             int                                  NULL,        -- 确定机构经办人
    D_QDJGJBRQ            timestamp                            NULL,        -- 确定机构经办日期
    C_PGSFWC              varchar(300)                         NULL,        -- 评估是否完成
    D_PGKSRQ              timestamp                            NULL,        -- 评估开始日期
    D_PGJSRQ              timestamp                            NULL,        -- 评估结束日期
    D_FYSDPGBGRQ          timestamp                            NULL,        -- 法院收到评估报告日期
    D_FYSDRQ              timestamp                            NULL,        -- 法院送达日期
    C_PGJG                varchar(300)                         NULL,        -- 评估结果
    C_PGJGSM              varchar(300)                         NULL,        -- 评估结果说明
    N_PGJ                 numeric(20, 4)                       NULL,        -- 评估价
    N_PGFY                numeric(20, 4)                       NULL,        -- 评估费用
    D_PGJGYXJZRQ          timestamp                            NULL,        -- 评估结果有效截止日期
    N_PGJGWS              int                                  NULL,        -- 评估结果文书
    N_PGJGJBR             int                                  NULL,        -- 评估结果经办人
    D_PGJGJBRQ            timestamp                            NULL,        -- 评估结果经办日期
constraint PK_HFZXPGPGBDW primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拍卖拍卖标的物
-------------------------

drop table if exists T_HFZXPMPMBDW;
create table T_HFZXPMPMBDW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXPM           char(32)                             NOT NULL,    -- 拍卖ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHPMBDW             int                                  NULL,        -- 编号_拍卖标的物
    C_BDWMC               text                                 NULL,        -- 标的物名称
    D_KZRQ                timestamp                            NULL,        -- 控制日期
    C_KZFS                varchar(300)                         NULL,        -- 控制方式
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_XCQK                text                                 NULL,        -- 瑕疵情况
    N_PGJ                 numeric(20, 4)                       NULL,        -- 评估价
    N_SCJ                 numeric(20, 4)                       NULL,        -- 市场价
    N_PMFY                numeric(20, 4)                       NULL,        -- 拍卖费用
    D_DYCPMGGRQ           timestamp                            NULL,        -- 第一次拍卖公告日期
    D_DYCPMRQ             timestamp                            NULL,        -- 第一次拍卖日期
    N_DYCQPJ              numeric(20, 4)                       NULL,        -- 第一次起拍价
    N_DYCBLJ              numeric(20, 4)                       NULL,        -- 第一次保留价
    C_DYCPMJG             varchar(300)                         NULL,        -- 第一次拍卖结果
    N_DYCJCJ              numeric(20, 4)                       NULL,        -- 第一次成交价
    C_DYCLPYY             varchar(300)                         NULL,        -- 第一次流拍原因
    D_DECPMGGRQ           timestamp                            NULL,        -- 第二次拍卖公告日期
    D_DECPMRQ             timestamp                            NULL,        -- 第二次拍卖日期
    N_DECQPJ              numeric(20, 4)                       NULL,        -- 第二次起拍价
    N_DECBLJ              numeric(20, 4)                       NULL,        -- 第二次保留价
    C_DECPMJG             varchar(300)                         NULL,        -- 第二次拍卖结果
    N_DECJCJ              numeric(20, 4)                       NULL,        -- 第二次成交价
    C_DECLPYY             varchar(300)                         NULL,        -- 第二次流拍原因
    D_DSCPMGGRQ           timestamp                            NULL,        -- 第三次拍卖公告日期
    D_DSCPMRQ             timestamp                            NULL,        -- 第三次拍卖日期
    N_DSCQPJ              numeric(20, 4)                       NULL,        -- 第三次起拍价
    N_DSCBLJ              numeric(20, 4)                       NULL,        -- 第三次保留价
    C_DSCPMJG             varchar(300)                         NULL,        -- 第三次拍卖结果
    N_DSCJCJ              numeric(20, 4)                       NULL,        -- 第三次成交价
    C_DSCLPYY             varchar(300)                         NULL,        -- 第三次流拍原因
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    N_WKJNQX              int                                  NULL,        -- 尾款交纳期限
    N_PMCJQRS             int                                  NULL,        -- 拍卖成交确认书
    N_PMDJJBR             int                                  NULL,        -- 拍卖登记经办人
    D_PMDJJBRQ            timestamp                            NULL,        -- 拍卖登记经办日期
constraint PK_HFZXPMPMBDW primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 拍卖拍卖标的物优先购买情况
-------------------------

drop table if exists T_HFZXPMPMBDWYXGMQK;
create table T_HFZXPMPMBDWYXGMQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXPMPMBDW      char(32)                             NOT NULL,    -- 拍卖标的物ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYXGMQK            int                                  NULL,        -- 序号_优先购买情况
    C_YXGMRXM             varchar(300)                         NULL,        -- 优先购买人姓名
    C_YXQKMS              text                                 NULL,        -- 优先情况描述
constraint PK_HFZXPMPMBDWYXGMQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 变卖变卖明细
-------------------------

drop table if exists T_HFZXBMBMMX;
create table T_HFZXBMBMMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXBM           char(32)                             NOT NULL,    -- 变卖ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHBMBDW             int                                  NULL,        -- 编号_变卖标的物
    C_BDWMC               text                                 NULL,        -- 标的物名称
    D_KZRQ                timestamp                            NULL,        -- 控制日期
    C_KZFS                varchar(300)                         NULL,        -- 控制方式
    C_BDLB                varchar(300)                         NULL,        -- 标的类别
    C_SYQR                varchar(300)                         NULL,        -- 所有权人
    C_XCQK                text                                 NULL,        -- 瑕疵情况
    D_BMKSRQ              timestamp                            NULL,        -- 变卖开始日期
    D_BMJSRQ              timestamp                            NULL,        -- 变卖结束日期
    N_CKJG                numeric(20, 4)                       NULL,        -- 参考价格
    N_BMZE                numeric(20, 4)                       NULL,        -- 变卖总额
    C_BMJG                varchar(300)                         NULL,        -- 变卖结果
    C_MSR                 varchar(300)                         NULL,        -- 买受人
    C_MSRZJZL             varchar(300)                         NULL,        -- 买受人证件种类
    C_MSRZJHM             varchar(300)                         NULL,        -- 买受人证件号码
    N_BMJGWSXH            int                                  NULL,        -- 变卖结果文书序号
    N_CJQRSXH             int                                  NULL,        -- 成交确认书序号
constraint PK_HFZXBMBMMX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 纠正失信被执行人
-------------------------

drop table if exists T_HFZXJZSXBZXR;
create table T_HFZXJZSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHJZSXBZXR         varchar(300)                         NULL,        -- 流水号_纠正失信被执行人
    C_AH                  varchar(300)                         NULL,        -- 案号
    N_SXBZXR              int                                  NULL,        -- 失信被执行人
    C_BZXRMC              varchar(300)                         NULL,        -- 被执行人名称
    C_BZXRLX              varchar(300)                         NULL,        -- 被执行人类型
    C_XB                  varchar(300)                         NULL,        -- 性别
    N_NL                  int                                  NULL,        -- 年龄
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_JGFZRXM             varchar(300)                         NULL,        -- 机构负责人姓名
    C_FLWSQRDYW           text                                 NULL,        -- 法律文书确认的义务
    C_BZXRLXQK            varchar(300)                         NULL,        -- 被执行人履行情况
    C_YLXQK               text                                 NULL,        -- 已履行情况
    C_WLXQK               text                                 NULL,        -- 未履行情况
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXAYMC              varchar(300)                         NULL,        -- 执行案由名称
    C_ZXFYMC              varchar(300)                         NULL,        -- 执行法院名称
    C_ZXYJWH              varchar(300)                         NULL,        -- 执行依据文号
    D_FBSJ                timestamp                            NULL,        -- 发布时间
    C_SXBZXRXWQK          varchar(300)                         NULL,        -- 失信被执行人行为情况
    D_JZSQSJ              timestamp                            NULL,        -- 纠正申请时间
    C_JZJDS               text                                 NULL,        -- 纠正决定书
    C_ZXYJZZDW            varchar(300)                         NULL,        -- 执行依据制作单位
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    C_JGFZRZJHM           varchar(300)                         NULL,        -- 机构负责人证件号码
constraint PK_HFZXJZSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 撤销失信被执行人
-------------------------

drop table if exists T_HFZXCXSXBZXR;
create table T_HFZXCXSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHCXSXBZXR         varchar(300)                         NULL,        -- 流水号_撤销失信被执行人
    D_CXSQSJ              timestamp                            NULL,        -- 撤销申请时间
    C_CXYY                varchar(300)                         NULL,        -- 撤销原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_HFZXCXSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 屏蔽失信被执行人
-------------------------

drop table if exists T_HFZXPBSXBZXR;
create table T_HFZXPBSXBZXR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXSXBZXR       char(32)                             NOT NULL,    -- 失信被执行人ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_LSHPBSXBZXR         varchar(300)                         NULL,        -- 流水号_屏蔽失信被执行人
    D_PBSQSJ              timestamp                            NULL,        -- 屏蔽申请时间
    C_PBYY                varchar(300)                         NULL,        -- 屏蔽原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    N_SPR                 int                                  NULL,        -- 审批人
    D_SPSJ                timestamp                            NULL,        -- 审批时间
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
constraint PK_HFZXPBSXBZXR primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行款发放明细
-------------------------

drop table if exists T_HFZXZXKFFMX;
create table T_HFZXZXKFFMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXZXKFF        char(32)                             NOT NULL,    -- 执行款发放ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_JSDSR               int                                  NULL,        -- 接受当事人
    C_JSR                 varchar(300)                         NULL,        -- 接受人
    N_FFJE                numeric(20, 4)                       NULL,        -- 发放金额
    C_FFKXLB              varchar(300)                         NULL,        -- 发放款项类别
    C_JSRKHYH             varchar(300)                         NULL,        -- 接受人开户银行
    C_JSRKHMC             varchar(300)                         NULL,        -- 接受人开户名称
    C_JSRKHZH             varchar(300)                         NULL,        -- 接受人开户账号
    D_ZFRQ              timestamp                            NULL,        -- 支付日期
constraint PK_HFZXZXKFFMX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 对行为执行情况
-------------------------

drop table if exists T_HFZXDXWZXQK;
create table T_HFZXDXWZXQK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXDXWDZX       char(32)                             NOT NULL,    -- 对行为的执行ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDXWDZXQK          int                                  NULL,        -- 序号_对行为的执行情况
    D_QZZXRQ              timestamp                            NULL,        -- 强制执行日期
    C_CLJG                varchar(300)                         NULL,        -- 处理结果
    C_ZXQK                varchar(300)                         NULL,        -- 执行情况
constraint PK_HFZXDXWZXQK primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 参与分配明细
-------------------------

drop table if exists T_HFZXCYFPMX;
create table T_HFZXCYFPMX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXCYFPXX       char(32)                             NOT NULL,    -- 参与分配信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_MXXH                int                                  NULL,        -- 明细序号
    N_SQZXR               int                                  NULL,        -- 申请执行人
    C_SQSNR               varchar(300)                         NULL,        -- 申请书内容
    C_CYFPYJ              varchar(300)                         NULL,        -- 参与分配依据
    N_SQFPJE              numeric(20, 4)                       NULL,        -- 申请分配金额
    C_JYYXQ               varchar(300)                         NULL,        -- 具有优先权
    C_YXQNR               varchar(300)                         NULL,        -- 优先权内容
    D_YXQSXRQ             timestamp                            NULL,        -- 优先权生效日期
    D_FPRQ                timestamp                            NULL,        -- 分配日期
    N_FPJE                numeric(20, 4)                       NULL,        -- 分配金额
    N_TCYYXH              int                                  NULL,        -- 提出异议序号
    C_YYCLJG              varchar(300)                         NULL,        -- 异议处理结果
    C_SQCYFPAWR           varchar(300)                         NULL,        -- 申请参与分配案外人
constraint PK_HFZXCYFPMX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_HFZXZXZTXXZJXX;
create table T_HFZXZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZXZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_HFZXZXZTXXZJXX primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 追究拒执罪
-------------------------

drop table if exists T_HFZXZJJZZ;
create table T_HFZXZJJZZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    N_BZJR                int                                  NULL,        -- 被追究人
    C_SSXZ                varchar(300)                         NULL,        -- 诉讼性质
    C_SFJYJZXF            varchar(300)                         NULL,        -- 是否给予拒执刑罚
    C_BXFYY               varchar(300)                         NULL,        -- 不刑罚原因
    C_GSJG                varchar(300)                         NULL,        -- 公诉机关
    C_JBFY                varchar(300)                         NULL,        -- 经办法院
    C_XSAJAH              varchar(300)                         NULL,        -- 刑事案件案号
    D_LARQ                timestamp                            NULL,        -- 立案日期
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_ZSR                 int                                  NULL,        -- 自诉人
    C_ZSLY                varchar(300)                         NULL,        -- 自诉理由
    C_JZPCQK              varchar(300)                         NULL,        -- 拒执判处情况
    C_JZXGWZLY            varchar(300)                         NULL,        -- 拒执宣告无罪理由
    C_JZBFXSZRYY          varchar(300)                         NULL,        -- 拒执不负刑事责任原因
    C_JZZZSLYY            varchar(300)                         NULL,        -- 拒执终止审理原因
    C_JZZXZL              varchar(300)                         NULL,        -- 拒执主刑种类
    N_XQN                 int                                  NULL,        -- 刑期年
    N_XQY                 int                                  NULL,        -- 刑期月
    C_PCHX                varchar(300)                         NULL,        -- 判处缓刑
    N_HXN                 int                                  NULL,        -- 缓刑年
    N_HXY                 int                                  NULL,        -- 缓刑月
    C_FJLX                varchar(300)                         NULL,        -- 罚金类型
    N_FJSE                numeric(20, 4)                       NULL,        -- 罚金数额
constraint PK_HFZXZJJZZ primary key( C_ID )
);

 commit; 

set search_path to DB_HFZX;
commit;

-------------------------
-- 执行救助信息
-------------------------

drop table if exists T_HFZXZXJZXX;
create table T_HFZXZXJZXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_HFZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号_执行救助
    C_SJZR                varchar(300)                         NULL,        -- 受救助人
    N_JZJE                numeric(20, 4)                       NULL,        -- 救助金额
    C_JZYY                varchar(300)                         NULL,        -- 救助原因
    C_JZJLY               varchar(300)                         NULL,        -- 救助金来源
constraint PK_HFZXZXJZXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 财产保全执行案件主表
-------------------------

drop table if exists T_CCBQZX;
create table T_CCBQZX
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    C_ZXHZSY              varchar(300)                         NULL,        -- 执行回转事由
    C_HFZXSY              varchar(300)                         NULL,        -- 恢复执行事由
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    C_ZXBDNR              varchar(300)                         NULL,        -- 执行标的内容
    C_YZXBDXW             varchar(300)                         NULL,        -- 应执行标的行为
    C_YZXBDW              varchar(300)                         NULL,        -- 应执行标的物
    C_CCXQY               varchar(300)                         NULL,        -- 财产性权益
    N_YZXBDJE             numeric(20, 4)                       NULL,        -- 应执行标的金额
    N_YGSQZXF             numeric(20, 4)                       NULL,        -- 预估申请执行费
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    C_BQAH                varchar(300)                         NULL,        -- 保全案号
    N_FYDM                int                                  NULL,        -- 法院代码
    C_BQCDLX              varchar(300)                         NULL,        -- 保全裁定类型
    C_SQZBHZXCYLXLXQQ     varchar(300)                         NULL,        -- 申请中包含执行迟延履行利息请求
    N_SQZYMQCYLXLXSE      numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行利息数额
    C_SQZBHZXCYLXJQQ      varchar(300)                         NULL,        -- 申请中包含执行迟延履行金请求
    N_SQZYMQCYLXJSE       numeric(20, 4)                       NULL,        -- 申请中已明确迟延履行金数额
    C_SCZXAH              varchar(300)                         NULL,        -- 首次执行案号
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    C_CFAJQX              varchar(300)                         NULL,        -- 拆分案件情形
    N_FQLXZQS             int                                  NULL,        -- 分期履行总期数
    N_YLXQS               int                                  NULL,        -- 已履行期数
    C_SQGFQSNY            varchar(300)                         NULL,        -- 申请给付起始年月
    C_SQGFJZNY            varchar(300)                         NULL,        -- 申请给付截止年月
    C_SQZXNR              varchar(300)                         NULL,        -- 申请执行内容
    C_WCNR                varchar(300)                         NULL,        -- 未成年人
    C_DYSJ                varchar(300)                         NULL,        -- 地域涉及
    C_AJSJ                varchar(300)                         NULL,        -- 案件涉及
    C_DA                  varchar(300)                         NULL,        -- 大案
    C_YA                  varchar(300)                         NULL,        -- 要案
    C_XLXAJ               varchar(300)                         NULL,        -- 新类型案件
    C_YNAJ                varchar(300)                         NULL,        -- 疑难案件
    C_JTAJ                varchar(300)                         NULL,        -- 集团案件
    C_MDJHAJ              varchar(300)                         NULL,        -- 矛盾激化案件
    C_BYZDAJ              varchar(300)                         NULL,        -- 本院重点案件
    C_ZXYJLX              varchar(300)                         NULL,        -- 执行依据类型
    C_ZCZXYJDW            varchar(300)                         NULL,        -- 作出执行依据单位
    C_ZXYJWSWH            varchar(300)                         NULL,        -- 执行依据文书文号
    C_ZXYJZW              text                                 NULL,        -- 执行依据主文
    D_ZXYJWSSXRQ          timestamp                            NULL,        -- 执行依据文书生效日期
    D_ZXYJWSLXZHQX        timestamp                            NULL,        -- 执行依据文书履行最后期限
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    C_FQZX                varchar(300)                         NULL,        -- 分期执行
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    D_JARQ                timestamp                            NULL,        -- 结案日期
    C_ZXWBSY              varchar(300)                         NULL,        -- 执行完毕事由
    C_BYSLYY              varchar(300)                         NULL,        -- 不予受理原因
    C_BYZXLY              varchar(300)                         NULL,        -- 不予执行理由
    C_ZJBCZXSY            varchar(300)                         NULL,        -- 终结本次执行事由
    C_ZJZXSY              varchar(300)                         NULL,        -- 终结执行事由
    C_XASY                varchar(300)                         NULL,        -- 销案事由
    N_JABDJE              numeric(20, 4)                       NULL,        -- 结案标的金额
    N_SJDWJE              numeric(20, 4)                       NULL,        -- 实际到位金额
    N_SQRFQBDJE           numeric(20, 4)                       NULL,        -- 申请人放弃标的金额
    N_SWZXBDJE            numeric(20, 4)                       NULL,        -- 尚未执行标的金额
    N_QZCYLXJ             numeric(20, 4)                       NULL,        -- 其中迟延履行金
    N_QZCYLXLX            numeric(20, 4)                       NULL,        -- 其中迟延履行利息
    C_TDWDWQK             varchar(300)                         NULL,        -- 特定物到位情况
    C_XWLXQK              varchar(300)                         NULL,        -- 行为履行情况
    C_CCXQYZXQK           varchar(300)                         NULL,        -- 财产性权益执行情况
    N_JAWS                int                                  NULL,        -- 结案文书
    C_SJBZ                varchar(300)                         NULL,        -- 实结标志
    C_SQRSQZJBCZXCX       varchar(300)                         NULL,        -- 申请人申请终结本次执行程序
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_CCBQZX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_CCBQZXYZXAJXX;
create table T_CCBQZXYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_CCBQZXYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_CCBQZXZXZZCYZC;
create table T_CCBQZXZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_CCBQZXZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_CCBQZXZXZZCYBGJL;
create table T_CCBQZXZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_CCBQZXZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_CCBQZXKCZXQXJL;
create table T_CCBQZXKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_CCBQZXKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_CCBQZXYZZXQXJL;
create table T_CCBQZXYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_CCBQZXYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产
-------------------------

drop table if exists T_CCBQZXYCMCC;
create table T_CCBQZXYCMCC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCMCC              int                                  NULL,        -- 序号_查明财产
    N_BZXR                int                                  NULL,        -- 被执行人
    C_ZXXSXH              text                                 NULL,        -- 执行线索序号
    C_CMFS                varchar(300)                         NULL,        -- 查明方式
    D_CMRQ                timestamp                            NULL,        -- 查明日期
    C_CCLX                varchar(300)                         NULL,        -- 财产类型
    C_CCMC                varchar(300)                         NULL,        -- 财产名称
    C_CCZT                varchar(300)                         NULL,        -- 财产状态
    C_CCQDFJ              text                                 NULL,        -- 财产清单附件
    C_CCZBJG              varchar(300)                         NULL,        -- 财产甄别结果
    D_CCZBRQ              timestamp                            NULL,        -- 财产甄别日期
    C_CCBKZXYY            varchar(300)                         NULL,        -- 财产不可执行原因
    C_CCYJFL              varchar(300)                         NULL,        -- 财产一级分类
constraint PK_CCBQZXYCMCC primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 查封
-------------------------

drop table if exists T_CCBQZXCF;
create table T_CCBQZXCF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCF                int                                  NULL,        -- 序号_查封
    C_CFLX                varchar(300)                         NULL,        -- 查封类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CFWSYR              int                                  NULL,        -- 查封物所有人
    C_CFQDXH              text                                 NULL,        -- 查封清单序号
    C_CFQD                text                                 NULL,        -- 查封清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_CFSXRQ              timestamp                            NULL,        -- 查封生效日期
    D_CFJMRQ              timestamp                            NULL,        -- 查封届满日期
    C_CFDD                varchar(300)                         NULL,        -- 查封地点
    C_CFFF                varchar(300)                         NULL,        -- 查封方法
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_CFWSXH              text                                 NULL,        -- 查封文书序号
    C_JCCFYY              varchar(300)                         NULL,        -- 解除查封原因
    D_JFRQ                timestamp                            NULL,        -- 解封日期
    C_JCCFWSXH            text                                 NULL,        -- 解除查封文书序号
constraint PK_CCBQZXCF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 扣押
-------------------------

drop table if exists T_CCBQZXKY;
create table T_CCBQZXKY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKY                int                                  NULL,        -- 序号_扣押
    C_KYLX                varchar(300)                         NULL,        -- 扣押类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_KYSXRQ              timestamp                            NULL,        -- 扣押生效日期
    D_KYJMRQ              timestamp                            NULL,        -- 扣押届满日期
    C_KYDD                varchar(300)                         NULL,        -- 扣押地点
    C_BGR                 varchar(300)                         NULL,        -- 保管人
    C_BGDD                varchar(300)                         NULL,        -- 保管地点
    C_KYQDXH              text                                 NULL,        -- 扣押清单序号
    C_KYQD                text                                 NULL,        -- 扣押清单
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_KYWSXH              text                                 NULL,        -- 扣押文书序号
    C_JCKYYY              varchar(300)                         NULL,        -- 解除扣押原因
    D_JKRQ                timestamp                            NULL,        -- 解扣日期
    C_JCKYWS              varchar(300)                         NULL,        -- 解除扣押文书
constraint PK_CCBQZXKY primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 冻结
-------------------------

drop table if exists T_CCBQZXDJ;
create table T_CCBQZXDJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHDJ                int                                  NULL,        -- 序号_冻结
    C_DJLX                varchar(300)                         NULL,        -- 冻结类型
    C_TQFS                varchar(300)                         NULL,        -- 提请方式
    N_CCSYQR              int                                  NULL,        -- 财产所有权人
    C_DJQDXH              text                                 NULL,        -- 冻结清单序号
    C_DJQD                text                                 NULL,        -- 冻结清单
    N_NZXBDE              numeric(20, 4)                       NULL,        -- 拟执行标的额
    D_DJSXRQ              timestamp                            NULL,        -- 冻结生效日期
    D_DJJMRQ              timestamp                            NULL,        -- 冻结届满日期
    N_SJDJJE              numeric(20, 4)                       NULL,        -- 实际冻结金额
    C_YWLXQK              varchar(300)                         NULL,        -- 义务履行情况
    C_DJWSXH              text                                 NULL,        -- 冻结文书序号
    C_JCDJYY              varchar(300)                         NULL,        -- 解除冻结原因
    D_JDRQ                timestamp                            NULL,        -- 解冻日期
    C_JCDJWS              text                                 NULL,        -- 解除冻结文书
constraint PK_CCBQZXDJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_CCBQZXZXLCJD;
create table T_CCBQZXZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_CCBQZXZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_CCBQZXZXZTXX;
create table T_CCBQZXZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_CCBQZXZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行外勤
-------------------------

drop table if exists T_CCBQZXZXWQ;
create table T_CCBQZXZXWQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXWQ              int                                  NULL,        -- 序号_执行外勤
    C_ZXYWLB              varchar(300)                         NULL,        -- 执行业务类别
    C_SPMC                varchar(300)                         NULL,        -- 视频名称
    C_LMTDZ               varchar(300)                         NULL,        -- 流媒体地址
    D_ZXRQ                timestamp                            NULL,        -- 执行日期
    C_ZXDD                varchar(300)                         NULL,        -- 执行地点
    N_SZ                  int                                  NULL,        -- 时长
    N_SPWJDX              int                                  NULL,        -- 视频文件大小
    C_SPJJ                varchar(300)                         NULL,        -- 视频简介
    C_ZZR                 varchar(300)                         NULL,        -- 制作人
    C_DJR                 varchar(300)                         NULL,        -- 登记人
    D_DJRQ                timestamp                            NULL,        -- 登记日期
constraint PK_CCBQZXZXWQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_CCBQZXZXRZ;
create table T_CCBQZXZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_CCBQZXZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行督办事项
-------------------------

drop table if exists T_CCBQZXZXDBSX;
create table T_CCBQZXZXDBSX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    C_DBZT                varchar(300)                         NULL,        -- 督办主题
    D_DBQX                timestamp                            NULL,        -- 督办期限
    C_SXLX                varchar(300)                         NULL,        -- 事项类型
    C_ZXDBXFJL            text                                 NULL,        -- 执行督办下发记录
    D_XZSJ                timestamp                            NULL,        -- 下载时间
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_CCBQZXZXDBSX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行督办下发记录
-------------------------

drop table if exists T_CCBQZXZXDBXFJL;
create table T_CCBQZXZXDBXFJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DBBH                varchar(300)                         NULL,        -- 督办编号
    N_XH                  int                                  NULL,        -- 序号
    N_FQFY                int                                  NULL,        -- 发起法院
    C_DBYQ                text                                 NULL,        -- 督办要求
    D_XFSJ                timestamp                            NULL,        -- 下发时间
    D_JSDBXXSJ            timestamp                            NULL,        -- 接收督办信息时间
    C_JSDBXXRXM           varchar(300)                         NULL,        -- 接收督办信息人姓名
    C_WSXX                text                                 NULL,        -- 文书信息
    C_JDYWXH              varchar(300)                         NULL,        -- 节点业务序号
constraint PK_CCBQZXZXDBXFJL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行委托信息
-------------------------

drop table if exists T_CCBQZXZXWTXX;
create table T_CCBQZXZXWTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_STFY                int                                  NULL,        -- 受托法院
    C_SFSNWT              varchar(300)                         NULL,        -- 是否省内委托
    C_WTCJRXM             varchar(300)                         NULL,        -- 委托创建人姓名
    D_WTSJ                timestamp                            NULL,        -- 委托时间
    C_CBRLXFS             varchar(300)                         NULL,        -- 承办人联系方式
    D_BLQX                timestamp                            NULL,        -- 办理期限
    C_WTCKLCCPSX          varchar(300)                         NULL,        -- 委托存款理财产品事项
    C_WTBDCXYDJDDCSX      varchar(300)                         NULL,        -- 委托不动产需要登记的动产事项
    C_WTGQJQTTZQYSX       varchar(300)                         NULL,        -- 委托股权及其他投资权益事项
    C_WTSDFLWSSX          varchar(300)                         NULL,        -- 委托送达法律文书事项
    C_WTDCSX              varchar(300)                         NULL,        -- 委托调查事项
    C_WTXQ                text                                 NULL,        -- 委托详情
    C_WTSQWS              text                                 NULL,        -- 委托申请文书
    C_WTSXCLZT            varchar(300)                         NULL,        -- 委托事项处理状态
constraint PK_CCBQZXZXWTXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 委托受理
-------------------------

drop table if exists T_CCBQZXWTSL;
create table T_CCBQZXWTSL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    C_WTBH                varchar(300)                         NULL,        -- 委托编号
    D_SLSJ                timestamp                            NULL,        -- 受理时间
    C_SLRXM               varchar(300)                         NULL,        -- 受理人姓名
    C_SLRLXFS             varchar(300)                         NULL,        -- 受理人联系方式
constraint PK_CCBQZXWTSL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 委托办理
-------------------------

drop table if exists T_CCBQZXWTBL;
create table T_CCBQZXWTBL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    D_BJSJ                timestamp                            NULL,        -- 办结时间
    C_BJSM                text                                 NULL,        -- 办结说明
    C_PTTHYY              varchar(300)                         NULL,        -- 平台退回原因
    C_PTWTSXZT            varchar(300)                         NULL,        -- 平台委托事项状态
    C_LCXTWTBLWS          text                                 NULL,        -- 流程系统委托办理文书
constraint PK_CCBQZXWTBL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 委托办理确认
-------------------------

drop table if exists T_CCBQZXWTBLQR;
create table T_CCBQZXWTBLQR
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_WTID                varchar(300)                         NULL,        -- 委托ID
    N_QRXH                int                                  NULL,        -- 确认序号
    C_QRJG                varchar(300)                         NULL,        -- 确认结果
    C_BLJGTHYY            varchar(300)                         NULL,        -- 办理结果退回原因
    D_QRRQ                timestamp                            NULL,        -- 确认日期
constraint PK_CCBQZXWTBLQR primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_CCBQZXCPWSSWXX;
create table T_CCBQZXCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_CCBQZXCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_CCBQZXCPWSBSWXX;
create table T_CCBQZXCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZX           char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_CCBQZXCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_CCBQZXZLJL;
create table T_CCBQZXZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_CCBQZXZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产现金
-------------------------

drop table if exists T_CCBQZXYCMCCXJ;
create table T_CCBQZXYCMCCXJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_BZ                  varchar(300)                         NULL,        -- 币种
constraint PK_CCBQZXYCMCCXJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产银行存款
-------------------------

drop table if exists T_CCBQZXYCMCCYHCK;
create table T_CCBQZXYCMCCYHCK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YHMC                varchar(300)                         NULL,        -- 银行名称
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_KHWD                varchar(300)                         NULL,        -- 开户网点
    C_KHWDDM              varchar(300)                         NULL,        -- 开户网点代码
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    D_XHSJ                timestamp                            NULL,        -- 销户时间
    C_BZ                  varchar(300)                         NULL,        -- 币种
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_SFZT                varchar(300)                         NULL,        -- 是否透支
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_GBZJZH              varchar(300)                         NULL,        -- 关联资金账户
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_CCBQZXYCMCCYHCK primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产互联网金融信息
-------------------------

drop table if exists T_CCBQZXYCMCCHLWJRXX;
create table T_CCBQZXYCMCCHLWJRXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCRMC               varchar(300)                         NULL,        -- 注册人名称
    C_ZCRZJLX             varchar(300)                         NULL,        -- 注册人证件类型
    C_ZCRZJHM             varchar(300)                         NULL,        -- 注册人证件号码
    C_ZCRSJHM             varchar(300)                         NULL,        -- 注册人手机号码
    C_ZH                  varchar(300)                         NULL,        -- 账户
    C_ZHLB                varchar(300)                         NULL,        -- 账户类别
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    D_ZHZCSJ              timestamp                            NULL,        -- 账户注册时间
    C_JJBZ                varchar(300)                         NULL,        -- 计价币种
    N_ZCSE                numeric(20, 4)                       NULL,        -- 资产数额
    N_KYZCSE              numeric(20, 4)                       NULL,        -- 可用资产数额
    C_TXDZ                varchar(300)                         NULL,        -- 通讯地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
constraint PK_CCBQZXYCMCCHLWJRXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他资金
-------------------------

drop table if exists T_CCBQZXYCMCCQTZJ;
create table T_CCBQZXYCMCCQTZJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZJMC                varchar(300)                         NULL,        -- 资金名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_BZ                  varchar(300)                         NULL,        -- 币种
    C_KHZH                varchar(300)                         NULL,        -- 开户账号
    C_KHYH                varchar(300)                         NULL,        -- 开户银行
    C_KHMC                varchar(300)                         NULL,        -- 开户名称
    D_CXSJ                timestamp                            NULL,        -- 查询时间
    C_ZHZT                varchar(300)                         NULL,        -- 账户状态
    C_DWMC                varchar(300)                         NULL,        -- 单位名称
    C_DWZH                varchar(300)                         NULL,        -- 单位账号
constraint PK_CCBQZXYCMCCQTZJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产车辆
-------------------------

drop table if exists T_CCBQZXYCMCCCL;
create table T_CCBQZXYCMCCCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCDJJG              varchar(300)                         NULL,        -- 注册登记机关
    C_JDCDJBH             varchar(300)                         NULL,        -- 机动车登记编号
    C_HPZL                varchar(300)                         NULL,        -- 号牌种类
    C_CLPP                varchar(300)                         NULL,        -- 车辆品牌
    C_CLLX                varchar(300)                         NULL,        -- 车辆类型
    C_CLSBH               varchar(300)                         NULL,        -- 车辆识别号
    C_FDJH                varchar(300)                         NULL,        -- 发动机号
    C_CLXH                varchar(300)                         NULL,        -- 车辆型号
    D_ZCDJRQ              timestamp                            NULL,        -- 注册登记日期
    D_CLCCRQ              timestamp                            NULL,        -- 车辆出厂日期
    C_CLSYXZ              varchar(300)                         NULL,        -- 车辆使用性质
    C_CSYS                varchar(300)                         NULL,        -- 车身颜色
    C_JDCZT               varchar(300)                         NULL,        -- 机动车状态
    C_SFNS                varchar(300)                         NULL,        -- 是否年审
    C_NK                  varchar(300)                         NULL,        -- 年款
    C_CX                  varchar(300)                         NULL,        -- 车系
    C_PL                  varchar(300)                         NULL,        -- 排量
    N_XSLC                numeric(20, 4)                       NULL,        -- 行驶里程
    C_CK                  varchar(300)                         NULL,        -- 车况
    C_BXQK                varchar(300)                         NULL,        -- 保险情况
constraint PK_CCBQZXYCMCCCL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产住宅用房
-------------------------

drop table if exists T_CCBQZXYCMCCZZYF;
create table T_CCBQZXYCMCCZZYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    N_S                   int                                  NULL,        -- 室
    N_T                   int                                  NULL,        -- 厅
    N_W                   int                                  NULL,        -- 卫
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_CCBQZXYCMCCZZYF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产建设用地使用权
-------------------------

drop table if exists T_CCBQZXYCMCCJSYDSYQ;
create table T_CCBQZXYCMCCJSYDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    C_CQZH                varchar(300)                         NULL,        -- 产权证号
    N_TDMJ                numeric(20, 4)                       NULL,        -- 土地面积
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    N_FEBL                numeric(20, 4)                       NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型 
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    C_YT                  varchar(300)                         NULL,        -- 用途
    N_QLR                 int                                  NULL,        -- 权利人
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_CCBQZXYCMCCJSYDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产股票
-------------------------

drop table if exists T_CCBQZXYCMCCGP;
create table T_CCBQZXYCMCCGP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CYZQMC              varchar(300)                         NULL,        -- 持有证券名称
    C_KHJG                varchar(300)                         NULL,        -- 开户机构
    D_KHSJ                timestamp                            NULL,        -- 开户时间
    C_ZQZHH               varchar(300)                         NULL,        -- 证券帐户号
    C_ZHLB                varchar(300)                         NULL,        -- 帐户类别
    N_ZHZJJE              numeric(20, 4)                       NULL,        -- 帐户资金金额
    C_ZHZT                varchar(300)                         NULL,        -- 帐户状态
    C_ZQDM                varchar(300)                         NULL,        -- 证券代码
    C_ZQJC                varchar(300)                         NULL,        -- 证券简称
    N_CGSL                numeric(20, 4)                       NULL,        -- 持股数量
    C_ZQXZ                varchar(300)                         NULL,        -- 证券性质
    C_ZHMC                varchar(300)                         NULL,        -- 账户名称
    D_FKJGSJ              timestamp                            NULL,        -- 反馈结果时间
    C_DQTGDY              varchar(300)                         NULL,        -- 当前托管单元
    C_JSCYRMC             varchar(300)                         NULL,        -- 结算参与人名称
    C_GFXZ                varchar(300)                         NULL,        -- 股份性质
    C_LTLX                varchar(300)                         NULL,        -- 流通类型
    C_QYLB                varchar(300)                         NULL,        -- 权益类别
    N_KJYSL               numeric(20, 4)                       NULL,        -- 可交易数量
constraint PK_CCBQZXYCMCCGP primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产基金
-------------------------

drop table if exists T_CCBQZXYCMCCJJ;
create table T_CCBQZXYCMCCJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_JJMC                varchar(300)                         NULL,        -- 基金名称
    N_JJSL                numeric(20, 4)                       NULL,        -- 基金数量
    C_JJXSDW              varchar(300)                         NULL,        -- 基金销售单位
    C_JJBH                varchar(300)                         NULL,        -- 基金编号
constraint PK_CCBQZXYCMCCJJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产债券
-------------------------

drop table if exists T_CCBQZXYCMCCZQ;
create table T_CCBQZXYCMCCZQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZQMC                varchar(300)                         NULL,        -- 债券名称
    N_ZQMZ                numeric(20, 4)                       NULL,        -- 债券面值
    C_ZQFXDW              varchar(300)                         NULL,        -- 债券发行单位
    C_ZQBH                varchar(300)                         NULL,        -- 债券编号
constraint PK_CCBQZXYCMCCZQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他财产性权益
-------------------------

drop table if exists T_CCBQZXYCMCCQTCCXQY;
create table T_CCBQZXYCMCCQTCCXQY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_QLMC                varchar(300)                         NULL,        -- 权利名称
    C_BH                  varchar(300)                         NULL,        -- 编号
    C_QLDJDW              varchar(300)                         NULL,        -- 权利登记单位
    N_DQGZ                numeric(20, 4)                       NULL,        -- 当前估值
constraint PK_CCBQZXYCMCCQTCCXQY primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产渔船
-------------------------

drop table if exists T_CCBQZXYCMCCYC;
create table T_CCBQZXYCMCCYC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_YCBM                varchar(300)                         NULL,        -- 渔船编码
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_YCZL                varchar(300)                         NULL,        -- 渔船种类
    N_ZCCC                numeric(20, 4)                       NULL,        -- 渔船船长
    N_YCXK                numeric(20, 4)                       NULL,        -- 渔船形宽
    N_YCXS                numeric(20, 4)                       NULL,        -- 渔船形深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZJZGL               numeric(20, 4)                       NULL,        -- 主机总功率
    C_CTCZ                varchar(300)                         NULL,        -- 船体材质
    D_JZWGRQ              timestamp                            NULL,        -- 建造完工日期
    C_CBHHSBM             varchar(300)                         NULL,        -- 船舶呼号识别码
    C_CBSYRMC             varchar(300)                         NULL,        -- 船舶所有人名称
    C_CBSYRDZ             varchar(300)                         NULL,        -- 船舶所有人地址
    C_SYRZJHM             varchar(300)                         NULL,        -- 所有人证件号码
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    D_SYQDJSJ             timestamp                            NULL,        -- 所有权登记审批时间
constraint PK_CCBQZXYCMCCYC primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产船舶
-------------------------

drop table if exists T_CCBQZXYCMCCCB;
create table T_CCBQZXYCMCCCB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CBSBH               varchar(300)                         NULL,        -- 船舶识别号
    C_CM                  varchar(300)                         NULL,        -- 船名
    C_CBCYM               varchar(300)                         NULL,        -- 船舶曾用名
    C_IMOBH               varchar(300)                         NULL,        -- IMO编号
    C_CJG                 varchar(300)                         NULL,        -- 船籍港
    C_YCJG                varchar(300)                         NULL,        -- 原船籍港
    C_CBZL                varchar(300)                         NULL,        -- 船舶种类
    C_CBHH                varchar(300)                         NULL,        -- 船舶呼号
    C_ZCDD                varchar(300)                         NULL,        -- 造船地点
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    N_CBC                 numeric(20, 4)                       NULL,        -- 船舶长
    N_CBK                 numeric(20, 4)                       NULL,        -- 船舶宽
    N_CBS                 numeric(20, 4)                       NULL,        -- 船舶深
    N_ZDW                 numeric(20, 4)                       NULL,        -- 总吨位
    N_JDW                 numeric(20, 4)                       NULL,        -- 净吨位
    N_ZZDW                numeric(20, 4)                       NULL,        -- 载重吨位
    N_GL                  numeric(20, 4)                       NULL,        -- 功率
constraint PK_CCBQZXYCMCCCB primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产股权
-------------------------

drop table if exists T_CCBQZXYCMCCGQ;
create table T_CCBQZXYCMCCGQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZCH                 varchar(300)                         NULL,        -- 注册号
    C_CGGSMC              varchar(300)                         NULL,        -- 持股公司名称
    C_ZS                  varchar(300)                         NULL,        -- 住所
    C_ZCZB                varchar(300)                         NULL,        -- 注册资本
    C_GSLX                varchar(300)                         NULL,        -- 公司类型
    C_JYFW                varchar(300)                         NULL,        -- 经营范围
    D_CLSJ                timestamp                            NULL,        -- 成立时间
    C_YYQX                varchar(300)                         NULL,        -- 营业期限
    N_CZE                 numeric(20, 4)                       NULL,        -- 出资额
    N_CZBL                numeric(20, 4)                       NULL,        -- 出资比例
    C_ZZJGDM              varchar(300)                         NULL,        -- 组织机构代码
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_NJQK                varchar(300)                         NULL,        -- 年检情况
constraint PK_CCBQZXYCMCCGQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产税务
-------------------------

drop table if exists T_CCBQZXYCMCCSW;
create table T_CCBQZXYCMCCSW
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_TSZH                varchar(300)                         NULL,        -- 退税账号
    N_TSJE                numeric(20, 4)                       NULL,        -- 退税金额
    D_TSSJ                timestamp                            NULL,        -- 退税时间
    C_NSZH                varchar(300)                         NULL,        -- 纳税账号
    N_NSJE                numeric(20, 4)                       NULL,        -- 纳税金额
    N_DKJE                numeric(20, 4)                       NULL,        -- 抵扣金额
constraint PK_CCBQZXYCMCCSW primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产债权
-------------------------

drop table if exists T_CCBQZXYCMCCZQXX;
create table T_CCBQZXYCMCCZQXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SE                  numeric(20, 4)                       NULL,        -- 数额
    C_ZWR                 varchar(300)                         NULL,        -- 债务人
constraint PK_CCBQZXYCMCCZQXX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产查明机器设备
-------------------------

drop table if exists T_CCBQZXYCMCCCMJQSB;
create table T_CCBQZXYCMCCCMJQSB
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SBZJJZ              numeric(20, 4)                       NULL,        -- 设备折旧价值
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
constraint PK_CCBQZXYCMCCCMJQSB primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产查明产品原材料
-------------------------

drop table if exists T_CCBQZXYCMCCCMCPYCL;
create table T_CCBQZXYCMCCCMCPYCL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_CCBQZXYCMCCCMCPYCL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产知识产权
-------------------------

drop table if exists T_CCBQZXYCMCCZSCQ;
create table T_CCBQZXYCMCCZSCQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZZLX                varchar(300)                         NULL,        -- 证照类型
    C_ZZHM                varchar(300)                         NULL,        -- 证照号码
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
constraint PK_CCBQZXYCMCCZSCQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产古玩字画
-------------------------

drop table if exists T_CCBQZXYCMCCGWZH;
create table T_CCBQZXYCMCCGWZH
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_ZL                  varchar(300)                         NULL,        -- 种类
    C_PM                  varchar(300)                         NULL,        -- 品名
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
constraint PK_CCBQZXYCMCCGWZH primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产土地承包经营权
-------------------------

drop table if exists T_CCBQZXYCMCCTDCBJYQ;
create table T_CCBQZXYCMCCTDCBJYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_CCBQZXYCMCCTDCBJYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产宅基地使用权
-------------------------

drop table if exists T_CCBQZXYCMCCZJDSYQ;
create table T_CCBQZXYCMCCZJDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_CCBQZXYCMCCZJDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产海域使用权
-------------------------

drop table if exists T_CCBQZXYCMCCHYSYQ;
create table T_CCBQZXYCMCCHYSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YHLXA               varchar(300)                         NULL,        -- 用海类型A
    C_YHLXB               varchar(300)                         NULL,        -- 用海类型B
    C_HDMC                varchar(300)                         NULL,        -- 海岛名称
    C_HDWZ                varchar(300)                         NULL,        -- 海岛位置
    C_HDYT                varchar(300)                         NULL,        -- 海岛用途
    D_SYQQSSJ             timestamp                            NULL,        -- 使用权起始时间
    D_SYQJSSJ             timestamp                            NULL,        -- 使用权结束时间
constraint PK_CCBQZXYCMCCHYSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他土地使用权
-------------------------

drop table if exists T_CCBQZXYCMCCQTTDSYQ;
create table T_CCBQZXYCMCCQTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_BDCQZSH             varchar(300)                         NULL,        -- 不动产权证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机构
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    C_QLXZ                varchar(300)                         NULL,        -- 权利性质
    C_QSLB                varchar(300)                         NULL,        -- 权属类别
    C_GTZYDZHQSSM         varchar(300)                         NULL,        -- 国土资源地址或权属说明
    N_QLR                 int                                  NULL,        -- 权利人
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_SYQLX               varchar(300)                         NULL,        -- 使用权类型
    N_SYQMJ               numeric(20, 4)                       NULL,        -- 使用权面积
    N_DYMJ                numeric(20, 4)                       NULL,        -- 独用面积
    N_FTMJ                numeric(20, 4)                       NULL,        -- 分摊面积
    D_ZZRQ                timestamp                            NULL,        -- 终止日期
    C_SYQRDJKXB           text                                 NULL,        -- 使用权人登记卡续表
constraint PK_CCBQZXYCMCCQTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产商业用房
-------------------------

drop table if exists T_CCBQZXYCMCCSYYF;
create table T_CCBQZXYCMCCSYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SZXQ                int                                  NULL,        -- 所在小区
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_CCBQZXYCMCCSYYF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产工业用房
-------------------------

drop table if exists T_CCBQZXYCMCCGYYF;
create table T_CCBQZXYCMCCGYYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_CCBQZXYCMCCGYYF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他用房
-------------------------

drop table if exists T_CCBQZXYCMCCQTYF;
create table T_CCBQZXYCMCCQTYF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_FCZH                varchar(300)                         NULL,        -- 房产证号
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_FCZL                varchar(300)                         NULL,        -- 房产坐落
    C_GHYTHFCLX           varchar(300)                         NULL,        -- 规划用途或房产类型
    C_FWXZ                varchar(300)                         NULL,        -- 房屋性质
    N_JZMJ                numeric(20, 4)                       NULL,        -- 建筑面积
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    N_DJJG                numeric(20, 4)                       NULL,        -- 登记价格
    C_DH                  varchar(300)                         NULL,        -- 地号
    C_FH                  varchar(300)                         NULL,        -- 房号
    C_FWBM                varchar(300)                         NULL,        -- 房屋编码
    C_FCDJJG              varchar(300)                         NULL,        -- 房产登记机关
    C_SZLC                varchar(300)                         NULL,        -- 所在楼层
    C_QBLC                varchar(300)                         NULL,        -- 全部楼层
    C_JZCX                varchar(300)                         NULL,        -- 建筑朝向
    C_DT                  varchar(300)                         NULL,        -- 电梯
    D_JCRQ                timestamp                            NULL,        -- 建成日期
    C_ZXCD                varchar(300)                         NULL,        -- 装修程度
constraint PK_CCBQZXYCMCCQTYF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产航空器
-------------------------

drop table if exists T_CCBQZXYCMCCHKQ;
create table T_CCBQZXYCMCCHKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_HKQLX               varchar(300)                         NULL,        -- 航空器类型
    C_SBH                 varchar(300)                         NULL,        -- 识别号
    C_TFD                 varchar(300)                         NULL,        -- 停放地
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_CCBQZXYCMCCHKQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他交通运输工具
-------------------------

drop table if exists T_CCBQZXYCMCCQTJTYSGJ;
create table T_CCBQZXYCMCCQTJTYSGJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_PZ                  varchar(300)                         NULL,        -- 牌照
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_CCBQZXYCMCCQTJTYSGJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产一般动产
-------------------------

drop table if exists T_CCBQZXYCMCCYBDC;
create table T_CCBQZXYCMCCYBDC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  int                                  NULL,        -- 数量
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_WZ                  varchar(300)                         NULL,        -- 位置
constraint PK_CCBQZXYCMCCYBDC primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产住房公积金
-------------------------

drop table if exists T_CCBQZXYCMCCZFGJJ;
create table T_CCBQZXYCMCCZFGJJ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_CCBQZXYCMCCZFGJJ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产股息红利
-------------------------

drop table if exists T_CCBQZXYCMCCGXHL;
create table T_CCBQZXYCMCCGXHL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_CCBQZXYCMCCGXHL primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产收益类保险
-------------------------

drop table if exists T_CCBQZXYCMCCSYLBX;
create table T_CCBQZXYCMCCSYLBX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_CCBQZXYCMCCSYLBX primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产金融理财产品
-------------------------

drop table if exists T_CCBQZXYCMCCJRLCCP;
create table T_CCBQZXYCMCCJRLCCP
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_JE                  numeric(20, 4)                       NULL,        -- 金额
    C_ZH                  varchar(300)                         NULL,        -- 账号
constraint PK_CCBQZXYCMCCJRLCCP primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产森林林木使用权
-------------------------

drop table if exists T_CCBQZXYCMCCSLLMSYQ;
create table T_CCBQZXYCMCCSLLMSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_CCBQZXYCMCCSLLMSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产集体土地所有权
-------------------------

drop table if exists T_CCBQZXYCMCCJTTDSYQ;
create table T_CCBQZXYCMCCJTTDSYQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_ZSH                 varchar(300)                         NULL,        -- 证书号
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JLDW                varchar(300)                         NULL,        -- 计量单位
    N_JZ                  numeric(20, 4)                       NULL,        -- 价值
    C_GYQK                varchar(300)                         NULL,        -- 共有情况
    C_FEBL                varchar(300)                         NULL,        -- 份额比例
    D_DJSJ                timestamp                            NULL,        -- 登记时间
    C_YT                  varchar(300)                         NULL,        -- 用途
    D_SYCBQXQ             timestamp                            NULL,        -- 使用_承包期限起
    D_SYCBQXZ             timestamp                            NULL,        -- 使用_承包期限止
constraint PK_CCBQZXYCMCCJTTDSYQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产珠宝玉石首饰
-------------------------

drop table if exists T_CCBQZXYCMCCZBYSSS;
create table T_CCBQZXYCMCCZBYSSS
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_JTXX                varchar(300)                         NULL,        -- 具体信息
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
constraint PK_CCBQZXYCMCCZBYSSS primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产探矿采矿权
-------------------------

drop table if exists T_CCBQZXYCMCCTKCKQ;
create table T_CCBQZXYCMCCTKCKQ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_KQMC                varchar(300)                         NULL,        -- 矿权名称
    C_XKZH                varchar(300)                         NULL,        -- 许可证号
    C_WZ                  varchar(300)                         NULL,        -- 位置
    C_DJJG                varchar(300)                         NULL,        -- 登记机关
constraint PK_CCBQZXYCMCCTKCKQ primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 已查明财产其他
-------------------------

drop table if exists T_CCBQZXYCMCCQT;
create table T_CCBQZXYCMCCQT
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXYCMCC      char(32)                             NOT NULL,    -- 已查明财产ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_CFWZ                varchar(300)                         NULL,        -- 存放位置
    C_BH                  varchar(300)                         NULL,        -- 编号
    N_SL                  numeric(20, 4)                       NULL,        -- 数量
    C_DW                  varchar(300)                         NULL,        -- 单位
    C_PP                  varchar(300)                         NULL,        -- 品牌
constraint PK_CCBQZXYCMCCQT primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 查封续封
-------------------------

drop table if exists T_CCBQZXCFXF;
create table T_CCBQZXCFXF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXCF         char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXF                int                                  NULL,        -- 序号_续封
    C_XFYY                varchar(300)                         NULL,        -- 续封原因
    D_CDXFRQ              timestamp                            NULL,        -- 裁定续封日期
    D_XFJMRQ              timestamp                            NULL,        -- 续封届满日期
    C_XFCCQDXH            text                                 NULL,        -- 续封财产清单序号
    C_XFCCQD              text                                 NULL,        -- 续封财产清单
    C_XFWSXH              text                                 NULL,        -- 续封文书序号
constraint PK_CCBQZXCFXF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 查封部分解封
-------------------------

drop table if exists T_CCBQZXCFBFJF;
create table T_CCBQZXCFBFJF
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXCF         char(32)                             NOT NULL,    -- 查封ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJF              int                                  NULL,        -- 序号_部分解封
    C_BFJCCFYY            varchar(300)                         NULL,        -- 部分解除查封原因
    C_BFJCCFWXH           text                                 NULL,        -- 部分解除查封物序号
    C_BFJCCFW             text                                 NULL,        -- 部分解除查封物
    C_BFSYCFW             text                                 NULL,        -- 部分剩余查封物
    D_BFJFRQ              timestamp                            NULL,        -- 部分解封日期
    C_BFJFWS              text                                 NULL,        -- 部分解封文书
constraint PK_CCBQZXCFBFJF primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 扣押续扣
-------------------------

drop table if exists T_CCBQZXKYXK;
create table T_CCBQZXKYXK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXKY         char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXK                int                                  NULL,        -- 序号_续扣
    D_CDXKRQ              timestamp                            NULL,        -- 裁定续扣日期
    D_XKJMRQ              timestamp                            NULL,        -- 续扣届满日期
    C_XKYY                varchar(300)                         NULL,        -- 续扣原因
    C_XKCCQDXH            text                                 NULL,        -- 续扣财产清单序号
    C_XKCCQD              text                                 NULL,        -- 续扣财产清单
    C_XKWSXH              text                                 NULL,        -- 续扣文书序号
constraint PK_CCBQZXKYXK primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 扣押部分解扣
-------------------------

drop table if exists T_CCBQZXKYBFJK;
create table T_CCBQZXKYBFJK
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXKY         char(32)                             NOT NULL,    -- 扣押ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJK              int                                  NULL,        -- 序号_部分解扣
    C_BFJCKYYY            varchar(300)                         NULL,        -- 部分解除扣押原因
    C_BFJCCFCCXH          text                                 NULL,        -- 部分解除查封财产序号
    C_BFJCKYWP            text                                 NULL,        -- 部分解除扣押物品
    C_SYKYW               text                                 NULL,        -- 剩余扣押物
    D_BFJKRQ              timestamp                            NULL,        -- 部分解扣日期
    C_BFJKWS              text                                 NULL,        -- 部分解扣文书
constraint PK_CCBQZXKYBFJK primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 冻结续冻
-------------------------

drop table if exists T_CCBQZXDJXD;
create table T_CCBQZXDJXD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXDJ         char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHXD                int                                  NULL,        -- 序号_续冻
    D_CDXDRQ              timestamp                            NULL,        -- 裁定续冻日期
    D_XDJMRQ              timestamp                            NULL,        -- 续冻届满日期
    C_XDYY                varchar(300)                         NULL,        -- 续冻原因
    C_XDCCQDXH            text                                 NULL,        -- 续冻财产清单序号
    C_XDCCQD              text                                 NULL,        -- 续冻财产清单
    C_XDWSXH              text                                 NULL,        -- 续冻文书序号
constraint PK_CCBQZXDJXD primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 冻结部分解冻
-------------------------

drop table if exists T_CCBQZXDJBFJD;
create table T_CCBQZXDJBFJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXDJ         char(32)                             NOT NULL,    -- 冻结ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHBFJD              int                                  NULL,        -- 序号_部分解冻
    C_BFJCDJYY            varchar(300)                         NULL,        -- 部分解除冻结原因
    C_BFJCDJCCXH          text                                 NULL,        -- 部分解除冻结财产序号
    C_BFJCDJCC            text                                 NULL,        -- 部分解除冻结财产
    D_BFJDRQ              timestamp                            NULL,        -- 部分解冻日期
    C_BFJDWS              text                                 NULL,        -- 部分解冻文书
constraint PK_CCBQZXDJBFJD primary key( C_ID )
);

 commit; 

set search_path to DB_CCBQZX;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_CCBQZXZXZTXXZJXX;
create table T_CCBQZXZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_CCBQZXZXZTXX     char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_CCBQZXZXZTXXZJXX primary key( C_ID )
);

 commit; 



-- auto create by SMD

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行异议案件主表
-------------------------

drop table if exists T_ZXYY;
create table T_ZXYY
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXYYSX              varchar(300)                         NULL,        -- 执行异议事项
    C_FYSX                varchar(300)                         NULL,        -- 复议事项
    C_JDSX                varchar(300)                         NULL,        -- 监督事项
    C_XDSX                varchar(300)                         NULL,        -- 协调事项
    C_QTSX                varchar(300)                         NULL,        -- 其他事项
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    N_FYDM                int                                  NULL,        -- 法院代码
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    N_JAWS                int                                  NULL,        -- 结案文书
    D_JAWSSDRQ            timestamp                            NULL,        -- 结案文书送达日期
    C_JAWSSDFS            varchar(300)                         NULL,        -- 结案文书送达方式
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_ZXYY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_ZXYYYZXAJXX;
create table T_ZXYYYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_ZXYYYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_ZXYYZXZZCYZC;
create table T_ZXYYZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_ZXYYZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_ZXYYZXZZCYBGJL;
create table T_ZXYYZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_ZXYYZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_ZXYYKCZXQXJL;
create table T_ZXYYKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXYYKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_ZXYYYZZXQXJL;
create table T_ZXYYYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXYYYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_ZXYYFTSYJL;
create table T_ZXYYFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_ZXYYFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_ZXYYSDJL;
create table T_ZXYYSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_ZXYYSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_ZXYYPBJL;
create table T_ZXYYPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_ZXYYPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_ZXYYSFJY;
create table T_ZXYYSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_ZXYYSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_ZXYYAJPY;
create table T_ZXYYAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXYYAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_ZXYYSWHTL;
create table T_ZXYYSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXYYSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行复议
-------------------------

drop table if exists T_ZXYYZXFY;
create table T_ZXYYZXFY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXFY              int                                  NULL,        -- 序号_执行复议
    C_FYLX                varchar(300)                         NULL,        -- 复议类型
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_FYNR                varchar(300)                         NULL,        -- 复议内容
    N_FYSQS               int                                  NULL,        -- 复议申请书
    N_FYFY                int                                  NULL,        -- 复议法院
    D_YSFYFYRQ            timestamp                            NULL,        -- 移送复议法院日期
    C_FYJG                varchar(300)                         NULL,        -- 复议结果
    N_FYJDS               int                                  NULL,        -- 复议决定书
    D_FYDFRQ              timestamp                            NULL,        -- 复议答复日期
    C_DFYDHXCL            varchar(300)                         NULL,        -- 对复议的后续处理
constraint PK_ZXYYZXFY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_ZXYYZXLCJD;
create table T_ZXYYZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_ZXYYZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_ZXYYZXZTXX;
create table T_ZXYYZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_ZXYYZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_ZXYYZXRZ;
create table T_ZXYYZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_ZXYYZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_ZXYYCPWSSWXX;
create table T_ZXYYCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_ZXYYCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_ZXYYCPWSBSWXX;
create table T_ZXYYCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_ZXYYCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_ZXYYZLJL;
create table T_ZXYYZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_ZXYYZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXYY;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_ZXYYZXZTXXZJXX;
create table T_ZXYYZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXYYZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_ZXYYZXZTXXZJXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行复议案件主表
-------------------------

drop table if exists T_ZXFY;
create table T_ZXFY
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXYYSX              varchar(300)                         NULL,        -- 执行异议事项
    C_FYSX                varchar(300)                         NULL,        -- 复议事项
    C_JDSX                varchar(300)                         NULL,        -- 监督事项
    C_XDSX                varchar(300)                         NULL,        -- 协调事项
    C_QTSX                varchar(300)                         NULL,        -- 其他事项
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    N_FYDM                int                                  NULL,        -- 法院代码
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    N_JAWS                int                                  NULL,        -- 结案文书
    D_JAWSSDRQ            timestamp                            NULL,        -- 结案文书送达日期
    C_JAWSSDFS            varchar(300)                         NULL,        -- 结案文书送达方式
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_ZXFY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_ZXFYYZXAJXX;
create table T_ZXFYYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_ZXFYYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_ZXFYZXZZCYZC;
create table T_ZXFYZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_ZXFYZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_ZXFYZXZZCYBGJL;
create table T_ZXFYZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_ZXFYZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_ZXFYKCZXQXJL;
create table T_ZXFYKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXFYKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_ZXFYYZZXQXJL;
create table T_ZXFYYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXFYYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_ZXFYFTSYJL;
create table T_ZXFYFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_ZXFYFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_ZXFYSDJL;
create table T_ZXFYSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_ZXFYSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_ZXFYPBJL;
create table T_ZXFYPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_ZXFYPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_ZXFYSFJY;
create table T_ZXFYSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_ZXFYSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_ZXFYAJPY;
create table T_ZXFYAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXFYAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_ZXFYSWHTL;
create table T_ZXFYSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXFYSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_ZXFYZXLCJD;
create table T_ZXFYZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_ZXFYZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_ZXFYZXZTXX;
create table T_ZXFYZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_ZXFYZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_ZXFYZXRZ;
create table T_ZXFYZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_ZXFYZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_ZXFYCPWSSWXX;
create table T_ZXFYCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_ZXFYCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_ZXFYCPWSBSWXX;
create table T_ZXFYCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFY             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_ZXFYCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_ZXFYZLJL;
create table T_ZXFYZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_ZXFYZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXFY;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_ZXFYZXZTXXZJXX;
create table T_ZXFYZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXFYZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_ZXFYZXZTXXZJXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行监督案件主表
-------------------------

drop table if exists T_ZXJD;
create table T_ZXJD
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXYYSX              varchar(300)                         NULL,        -- 执行异议事项
    C_FYSX                varchar(300)                         NULL,        -- 复议事项
    C_JDSX                varchar(300)                         NULL,        -- 监督事项
    C_XDSX                varchar(300)                         NULL,        -- 协调事项
    C_QTSX                varchar(300)                         NULL,        -- 其他事项
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    N_FYDM                int                                  NULL,        -- 法院代码
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    N_JAWS                int                                  NULL,        -- 结案文书
    D_JAWSSDRQ            timestamp                            NULL,        -- 结案文书送达日期
    C_JAWSSDFS            varchar(300)                         NULL,        -- 结案文书送达方式
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_ZXJD primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_ZXJDYZXAJXX;
create table T_ZXJDYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_ZXJDYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_ZXJDZXZZCYZC;
create table T_ZXJDZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_ZXJDZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_ZXJDZXZZCYBGJL;
create table T_ZXJDZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_ZXJDZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_ZXJDKCZXQXJL;
create table T_ZXJDKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXJDKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_ZXJDYZZXQXJL;
create table T_ZXJDYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXJDYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_ZXJDFTSYJL;
create table T_ZXJDFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_ZXJDFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_ZXJDSDJL;
create table T_ZXJDSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_ZXJDSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_ZXJDPBJL;
create table T_ZXJDPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_ZXJDPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_ZXJDSFJY;
create table T_ZXJDSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_ZXJDSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_ZXJDAJPY;
create table T_ZXJDAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXJDAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_ZXJDSWHTL;
create table T_ZXJDSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXJDSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_ZXJDZXLCJD;
create table T_ZXJDZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_ZXJDZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_ZXJDZXZTXX;
create table T_ZXJDZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_ZXJDZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_ZXJDZXRZ;
create table T_ZXJDZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_ZXJDZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_ZXJDCPWSSWXX;
create table T_ZXJDCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_ZXJDCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_ZXJDCPWSBSWXX;
create table T_ZXJDCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJD             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_ZXJDCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_ZXJDZLJL;
create table T_ZXJDZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_ZXJDZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXJD;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_ZXJDZXZTXXZJXX;
create table T_ZXJDZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXJDZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_ZXJDZXZTXXZJXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行协调案件主表
-------------------------

drop table if exists T_ZXXT;
create table T_ZXXT
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXYYSX              varchar(300)                         NULL,        -- 执行异议事项
    C_FYSX                varchar(300)                         NULL,        -- 复议事项
    C_JDSX                varchar(300)                         NULL,        -- 监督事项
    C_XDSX                varchar(300)                         NULL,        -- 协调事项
    C_QTSX                varchar(300)                         NULL,        -- 其他事项
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    N_FYDM                int                                  NULL,        -- 法院代码
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    N_JAWS                int                                  NULL,        -- 结案文书
    D_JAWSSDRQ            timestamp                            NULL,        -- 结案文书送达日期
    C_JAWSSDFS            varchar(300)                         NULL,        -- 结案文书送达方式
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_ZXXT primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_ZXXTYZXAJXX;
create table T_ZXXTYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_ZXXTYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_ZXXTZXZZCYZC;
create table T_ZXXTZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_ZXXTZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_ZXXTZXZZCYBGJL;
create table T_ZXXTZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_ZXXTZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_ZXXTKCZXQXJL;
create table T_ZXXTKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXXTKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_ZXXTYZZXQXJL;
create table T_ZXXTYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_ZXXTYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_ZXXTFTSYJL;
create table T_ZXXTFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_ZXXTFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_ZXXTSDJL;
create table T_ZXXTSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_ZXXTSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_ZXXTPBJL;
create table T_ZXXTPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_ZXXTPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_ZXXTSFJY;
create table T_ZXXTSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_ZXXTSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_ZXXTAJPY;
create table T_ZXXTAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXXTAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_ZXXTSWHTL;
create table T_ZXXTSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_ZXXTSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_ZXXTZXLCJD;
create table T_ZXXTZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_ZXXTZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_ZXXTZXZTXX;
create table T_ZXXTZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_ZXXTZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_ZXXTZXRZ;
create table T_ZXXTZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_ZXXTZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_ZXXTCPWSSWXX;
create table T_ZXXTCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_ZXXTCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_ZXXTCPWSBSWXX;
create table T_ZXXTCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXT             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_ZXXTCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_ZXXTZLJL;
create table T_ZXXTZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_ZXXTZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_ZXXT;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_ZXXTZXZTXXZJXX;
create table T_ZXXTZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_ZXXTZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_ZXXTZXZTXXZJXX primary key( C_ID )
);

 commit; 


-- auto create by SMD

set search_path to DB_QTZX;
commit;

-------------------------
-- 其他执行案件主表
-------------------------

drop table if exists T_QTZX;
create table T_QTZX
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    C_AH                  varchar(300)                         NULL,        -- 案号
    C_AJJZJD              varchar(300)                         NULL,        -- 案件进展阶段
    C_AJZLX               varchar(300)                         NULL,        -- 案件子类型
    C_AJLY                varchar(300)                         NULL,        -- 案件来源
    D_SDCLRQ              timestamp                            NULL,        -- 收到材料日期
    N_LAAY                int                                  NULL,        -- 立案案由
    C_LAAYMS              varchar(300)                         NULL,        -- 立案案由描述
    N_LABMBS              int                                  NULL,        -- 立案部门标识
    N_SADJR               int                                  NULL,        -- 收案登记人
    D_SARQ                timestamp                            NULL,        -- 收案日期
    N_SCR                 int                                  NULL,        -- 审查人
    D_SCRQ                timestamp                            NULL,        -- 审查日期
    C_SCYJ                varchar(300)                         NULL,        -- 审查意见
    N_SPR                 int                                  NULL,        -- 审批人
    D_LASPRQ              timestamp                            NULL,        -- 立案审批日期
    C_SPYJ                varchar(300)                         NULL,        -- 审批意见
    D_LARQ                timestamp                            NULL,        -- 立案日期
    C_ZXYYSX              varchar(300)                         NULL,        -- 执行异议事项
    C_FYSX                varchar(300)                         NULL,        -- 复议事项
    C_JDSX                varchar(300)                         NULL,        -- 监督事项
    C_XDSX                varchar(300)                         NULL,        -- 协调事项
    C_QTSX                varchar(300)                         NULL,        -- 其他事项
    N_AJXH                int                                  NULL,        -- 案件序号
    C_AJLXDZ              varchar(300)                         NULL,        -- 案件类型代字
    N_AJLXDM              int                                  NULL,        -- 案件类型代码
    N_FYDM                int                                  NULL,        -- 法院代码
    C_DQAJZTHBZ           varchar(300)                         NULL,        -- 当前案件止停缓标志
    N_CBBMBS              int                                  NULL,        -- 承办部门标识
    N_CBR                 int                                  NULL,        -- 承办人
    N_SPZ                 int                                  NULL,        -- 审判长
    C_HYTCY               varchar(300)                         NULL,        -- 合议庭成员
    N_SJY                 int                                  NULL,        -- 书记员
    D_FARQ                timestamp                            NULL,        -- 分案日期
    D_YSAJRQ              timestamp                            NULL,        -- 移送案件日期
    D_JSAJRQ              timestamp                            NULL,        -- 接收案件日期
    D_LAQXJMRQ            timestamp                            NULL,        -- 立案期限届满日期
    N_FDLAQX              int                                  NULL,        -- 法定立案期限
    N_SJLATS              int                                  NULL,        -- 实际立案天数
    N_LACQTS              int                                  NULL,        -- 立案超期天数
    D_ZXQXQSRQ            timestamp                            NULL,        -- 执行期限起始日期
    D_ZXQXJMRQ            timestamp                            NULL,        -- 执行期限届满日期
    N_FDZXQX              int                                  NULL,        -- 法定执行期限
    N_SJZXTS              int                                  NULL,        -- 实际执行天数
    N_ZXCQTS              int                                  NULL,        -- 执行超期天数
    C_ZXCQYY              varchar(300)                         NULL,        -- 执行超期原因
    C_ZHZX                varchar(300)                         NULL,        -- 暂缓执行
    N_ZHZXQX              int                                  NULL,        -- 暂缓执行期限
    D_JARQ                timestamp                            NULL,        -- 结案日期
    N_JAAY                int                                  NULL,        -- 结案案由
    C_JAFS                varchar(300)                         NULL,        -- 结案方式
    N_JAWS                int                                  NULL,        -- 结案文书
    D_JAWSSDRQ            timestamp                            NULL,        -- 结案文书送达日期
    C_JAWSSDFS            varchar(300)                         NULL,        -- 结案文书送达方式
    N_LJR                 int                                  NULL,        -- 立卷人
    N_TJR                 int                                  NULL,        -- 提交人
    D_TJRQ                timestamp                            NULL,        -- 提交日期
    N_JSR                 int                                  NULL,        -- 接收人
    D_JSRQ                timestamp                            NULL,        -- 接收日期
    C_MLH                 varchar(300)                         NULL,        -- 目录号
    C_JZH                 varchar(300)                         NULL,        -- 卷宗号
    N_ZJCS                int                                  NULL,        -- 正卷册数
    N_FJCS                int                                  NULL,        -- 副卷册数
    N_ZJYS                int                                  NULL,        -- 正卷页数
    N_FJYS                int                                  NULL,        -- 副卷页数
    N_QTJCS               int                                  NULL,        -- 其他卷册数
    N_QTJYS               int                                  NULL,        -- 其他卷页数
    C_BJQK                varchar(300)                         NULL,        -- 并卷情况
    C_MJ                  varchar(300)                         NULL,        -- 密级
    C_BGQX                varchar(300)                         NULL,        -- 保管期限
    C_GDH                 varchar(300)                         NULL,        -- 归档号
    C_QZH                 varchar(300)                         NULL,        -- 全宗号
constraint PK_QTZX primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 原执行案件信息
-------------------------

drop table if exists T_QTZXYZXAJXX;
create table T_QTZXYZXAJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZXAJ             int                                  NULL,        -- 序号_原执行案件
    N_YZXAJBS             numeric(19, 0)                       NULL,        -- 原执行案件标识
    N_YZXFY               int                                  NULL,        -- 原执行法院
    C_YZXAH               varchar(300)                         NULL,        -- 原执行案号
    D_YLARQ               timestamp                            NULL,        -- 原立案日期
    D_YJARQ               timestamp                            NULL,        -- 原结案日期
    C_YJAFS               varchar(300)                         NULL,        -- 原结案方式
constraint PK_QTZXYZXAJXX primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行组织成员组成
-------------------------

drop table if exists T_QTZXZXZZCYZC;
create table T_QTZXZXZZCYZC
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_CY                  int                                  NULL,        -- 成员
    C_JS                  varchar(300)                         NULL,        -- 角色
constraint PK_QTZXZXZZCYZC primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行组织成员变更记录
-------------------------

drop table if exists T_QTZXZXZZCYBGJL;
create table T_QTZXZXZZCYBGJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHCY                int                                  NULL,        -- 序号_成员
    N_YCY                 int                                  NULL,        -- 原成员
    C_YCYJS               varchar(300)                         NULL,        -- 原成员角色
    N_XCY                 int                                  NULL,        -- 新成员
    D_BGRQ                timestamp                            NULL,        -- 变更日期
    C_BGYY                varchar(300)                         NULL,        -- 变更原因
constraint PK_QTZXZXZZCYBGJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 扣除执行期限记录
-------------------------

drop table if exists T_QTZXKCZXQXJL;
create table T_QTZXKCZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHKCQX              int                                  NULL,        -- 序号_扣除期限
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_ZZSY                varchar(300)                         NULL,        -- 中止事由
    C_YQZXSY              varchar(300)                         NULL,        -- 延期执行事由
    C_QTSY                varchar(300)                         NULL,        -- 其他事由
    D_QSRQ                timestamp                            NULL,        -- 起始日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_QTZXKCZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 延长执行期限记录
-------------------------

drop table if exists T_QTZXYZZXQXJL;
create table T_QTZXYZZXQXJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHYZQX              int                                  NULL,        -- 序号_延长期限
    C_YY                  varchar(300)                         NULL,        -- 原因
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_PZJG                varchar(300)                         NULL,        -- 批准机关
    D_PZRQ                timestamp                            NULL,        -- 批准日期
    D_KSRQ                timestamp                            NULL,        -- 开始日期
    C_YZQJ                varchar(300)                         NULL,        -- 延长期间
    N_XGWS                int                                  NULL,        -- 相关文书
constraint PK_QTZXYZZXQXJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 法庭使用记录
-------------------------

drop table if exists T_QTZXFTSYJL;
create table T_QTZXFTSYJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHFTSY              int                                  NULL,        -- 序号_法庭使用
    C_FTYT                varchar(300)                         NULL,        -- 法庭用途
    N_TC                  int                                  NULL,        -- 庭次
    D_KSSJ                timestamp                            NULL,        -- 开始时间
    D_JSSJ                timestamp                            NULL,        -- 结束时间
    C_DD                  varchar(300)                         NULL,        -- 地点
    C_GKTZ                varchar(300)                         NULL,        -- 公开听证
    C_DTDSR               text                                 NULL,        -- 到庭当事人
    C_JBDTDSR             text                                 NULL,        -- 拒不到庭当事人
    C_WZDLYZTTTDSR        text                                 NULL,        -- 无正当理由中途退庭当事人
    C_DTDLR               text                                 NULL,        -- 到庭代理人
    C_CTZZDZR             text                                 NULL,        -- 出庭作证的证人
    C_JJJXBHHDL           varchar(300)                         NULL,        -- 拒绝继续辩护或代理
    C_DWXC                varchar(300)                         NULL,        -- 对外宣传
    N_PTRS                int                                  NULL,        -- 旁听人数
    N_RDDBPTRS            int                                  NULL,        -- 人大代表旁听人数
    N_ZXWYPTRS            int                                  NULL,        -- 政协委员旁听人数
    C_SWHWYDTTA           varchar(300)                         NULL,        -- 审委会委员到庭听案
    N_BL                  int                                  NULL,        -- 笔录
    C_TZCJQK              varchar(300)                         NULL,        -- 听证裁决情况
    D_FCTZTZRQ            timestamp                            NULL,        -- 发出听证通知日期
constraint PK_QTZXFTSYJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 送达记录
-------------------------

drop table if exists T_QTZXSDJL;
create table T_QTZXSDJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSD                int                                  NULL,        -- 序号_送达
    C_WS                  text                                 NULL,        -- 文书
    D_YSDRQ               timestamp                            NULL,        -- 应送达日期
    D_KSSDRQ              timestamp                            NULL,        -- 开始送达日期
    C_SDFS                varchar(300)                         NULL,        -- 送达方式
    N_STFY                int                                  NULL,        -- 受托法院
    D_GGRQ                timestamp                            NULL,        -- 公告日期
    D_JYRQ                timestamp                            NULL,        -- 交邮日期
    D_SDRQ                timestamp                            NULL,        -- 送达日期
    N_SDR                 int                                  NULL,        -- 送达人
    N_SSDR                int                                  NULL,        -- 受送达人
    C_QSR                 varchar(300)                         NULL,        -- 签收人
    C_DQRHZJR             varchar(300)                         NULL,        -- 代签人或转交人
    D_QSSJ                timestamp                            NULL,        -- 签收时间
    C_JBQS                varchar(300)                         NULL,        -- 拒不签收
    C_WSDYY               varchar(300)                         NULL,        -- 未送达原因
constraint PK_QTZXSDJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 批办记录
-------------------------

drop table if exists T_QTZXPBJL;
create table T_QTZXPBJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPB                int                                  NULL,        -- 序号_批办
    C_PBJG                varchar(300)                         NULL,        -- 批办机关
    C_PBLD                varchar(300)                         NULL,        -- 批办领导
    D_PBRQ                timestamp                            NULL,        -- 批办日期
    C_PBWH                varchar(300)                         NULL,        -- 批办文号
    C_PBYQ                varchar(300)                         NULL,        -- 批办要求
    C_BGJG                varchar(300)                         NULL,        -- 报告结果
    D_YBJGRQ              timestamp                            NULL,        -- 应报结果日期
    N_PBSX                int                                  NULL,        -- 批办时限
    C_DQHB                varchar(300)                         NULL,        -- 定期汇报
    C_GPDB                varchar(300)                         NULL,        -- 挂牌督办
constraint PK_QTZXPBJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 司法建议
-------------------------

drop table if exists T_QTZXSFJY;
create table T_QTZXSFJY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSFJY              int                                  NULL,        -- 序号_司法建议
    D_TCRQ                timestamp                            NULL,        -- 提出日期
    C_JYDX                varchar(300)                         NULL,        -- 建议对象
    N_JYS                 int                                  NULL,        -- 建议书
    D_FKRQ                timestamp                            NULL,        -- 反馈日期
    C_FKYJ                text                                 NULL,        -- 反馈意见
constraint PK_QTZXSFJY primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 案件评议
-------------------------

drop table if exists T_QTZXAJPY;
create table T_QTZXAJPY
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHPY                int                                  NULL,        -- 序号_评议
    C_PYLX                varchar(300)                         NULL,        -- 评议类型
    D_PYRQ                timestamp                            NULL,        -- 评议日期
    C_CBRYJ               text                                 NULL,        -- 承办人意见
    C_SPZYJ               text                                 NULL,        -- 审判长意见
    C_QTCYYJ              text                                 NULL,        -- 其他成员意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_PYBL                int                                  NULL,        -- 评议笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_QTZXAJPY primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 审委会讨论
-------------------------

drop table if exists T_QTZXSWHTL;
create table T_QTZXSWHTL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHSWHTL             int                                  NULL,        -- 序号_审委会讨论
    D_TLRQ                timestamp                            NULL,        -- 讨论日期
    C_YTLX                varchar(300)                         NULL,        -- 议题类型
    C_CJRY                text                                 NULL,        -- 参加人员
    C_TLYJ                text                                 NULL,        -- 讨论意见
    C_DSRYJ               text                                 NULL,        -- 多数人意见
    N_TLBL                int                                  NULL,        -- 讨论笔录
    C_TLJG                varchar(300)                         NULL,        -- 讨论结果
constraint PK_QTZXSWHTL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行流程节点
-------------------------

drop table if exists T_QTZXZXLCJD;
create table T_QTZXZXLCJD
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_BHLCJDBH            int                                  NULL,        -- 编号_流程节点编号
    N_XHLCJDXH            int                                  NULL,        -- 序号_流程节点序号
    D_QDRQ                timestamp                            NULL,        -- 启动日期
    D_JSRQ                timestamp                            NULL,        -- 结束日期
    D_JMRQ                timestamp                            NULL,        -- 届满日期
    C_JDZT                varchar(300)                         NULL,        -- 节点状态
    C_DYYWXH              varchar(300)                         NULL,        -- 对应业务序号
    C_JDMC                varchar(300)                         NULL,        -- 节点名称
    C_CLR                 varchar(300)                         NULL,        -- 处理人
    N_QX                  int                                  NULL,        -- 期限
    N_SJWCTS              int                                  NULL,        -- 实际完成天数
    C_YWMS                varchar(300)                         NULL,        -- 业务描述
constraint PK_QTZXZXLCJD primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行主体信息
-------------------------

drop table if exists T_QTZXZXZTXX;
create table T_QTZXZXZTXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_LY                  varchar(300)                         NULL,        -- 来源
    C_DSR                 varchar(300)                         NULL,        -- 当事人
    C_DSRFLDW             varchar(300)                         NULL,        -- 当事人法律地位
    C_YAFLDW              varchar(300)                         NULL,        -- 原案法律地位
    C_LX                  varchar(300)                         NULL,        -- 类型
    C_MC                  varchar(300)                         NULL,        -- 名称
    C_DZ                  varchar(300)                         NULL,        -- 地址
    C_SDDZ                varchar(300)                         NULL,        -- 送达地址
    C_YZBM                varchar(300)                         NULL,        -- 邮政编码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_LXDH                varchar(300)                         NULL,        -- 联系电话
    C_DZYX                varchar(300)                         NULL,        -- 电子邮箱
    C_QTLXFF              varchar(300)                         NULL,        -- 其他联系方法
    C_TSZT                varchar(300)                         NULL,        -- 特殊主体
    C_YXZH                text                                 NULL,        -- 银行账号
    C_DSRAJCXMM           varchar(300)                         NULL,        -- 当事人案件查询密码
    C_DLR                 text                                 NULL,        -- 代理人
    C_XGDSR               text                                 NULL,        -- 相关当事人
    C_JS                  varchar(300)                         NULL,        -- 角色
    C_SFSFYZ              varchar(300)                         NULL,        -- 是否身份验证
    C_SFYZJG              varchar(300)                         NULL,        -- 身份验证结果
    C_QTZXZTLX            varchar(300)                         NULL,        -- 其他执行主体类型
    C_SFDSZDQZQ           varchar(300)                         NULL,        -- 是否第三者到期债权
    C_SFLHGXR             varchar(300)                         NULL,        -- 是否利害关系人
    C_SFSQSYWLCK          varchar(300)                         NULL,        -- 是否申请使用网络查控
    C_SFGK                varchar(300)                         NULL,        -- 是否公开
    C_SFYZZBJG            varchar(300)                         NULL,        -- 身份验证甄别结果
    N_SFYZZBSPR           int                                  NULL,        -- 身份验证甄别审批人
    D_SFYZZBSPRQ          timestamp                            NULL,        -- 身份验证甄别审批日期
    C_SFYZZBCL            text                                 NULL,        -- 身份验证甄别材料
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                varchar(300)                         NULL,        -- 出生日期
    N_NL                  int                                  NULL,        -- 年龄
    C_GJ                  varchar(300)                         NULL,        -- 国籍
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_SF                  varchar(300)                         NULL,        -- 身份
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_XYJRSF              varchar(300)                         NULL,        -- 现役军人身份
    C_JGZWXZ              varchar(300)                         NULL,        -- 军官职务性质
    C_JGHWZGBJB           varchar(300)                         NULL,        -- 军官或文职干部级别
    C_QTSFZJZL            varchar(300)                         NULL,        -- 其他身份证件种类
    C_QTSFZJHM            varchar(300)                         NULL,        -- 其他身份证件号码
    C_ZY                  varchar(300)                         NULL,        -- 职业
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_SZDW                varchar(300)                         NULL,        -- 所在单位
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_TSSF                varchar(300)                         NULL,        -- 特殊身份
    C_TSSLHBL             varchar(300)                         NULL,        -- 特殊生理或病理
    C_HJSZD               varchar(300)                         NULL,        -- 户籍所在地
    C_JL                  text                                 NULL,        -- 简历
    C_JTJJZK              varchar(300)                         NULL,        -- 家庭经济状况
    C_CYM                 varchar(300)                         NULL,        -- 曾用名
    C_GJHDQ               varchar(300)                         NULL,        -- 国家或地区
    C_TYSHXYDM            varchar(300)                         NULL,        -- 统一社会信用代码
    C_DWXZ                varchar(300)                         NULL,        -- 单位性质
    C_TSHY                varchar(300)                         NULL,        -- 特殊行业
    C_FDDBR               varchar(300)                         NULL,        -- 法定代表人
    C_DBRZJZL             varchar(300)                         NULL,        -- 代表人证件种类
    C_DBRZJHM             varchar(300)                         NULL,        -- 代表人证件号码
constraint PK_QTZXZXZTXX primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行日志
-------------------------

drop table if exists T_QTZXZXRZ;
create table T_QTZXZXRZ
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHZXRZ              int                                  NULL,        -- 序号_执行日志
    D_SJ                  timestamp                            NULL,        -- 时间
    C_SX                  varchar(300)                         NULL,        -- 事项
    C_CLR                 varchar(300)                         NULL,        -- 处理人
constraint PK_QTZXZXRZ primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 裁判文书上网信息
-------------------------

drop table if exists T_QTZXCPWSSWXX;
create table T_QTZXCPWSSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_SWWSMC              varchar(300)                         NULL,        -- 上网文书名称
    N_SWWSXH              int                                  NULL,        -- 上网文书序号
    D_SWRQ                timestamp                            NULL,        -- 上网日期
constraint PK_QTZXCPWSSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 裁判文书不上网信息
-------------------------

drop table if exists T_QTZXCPWSBSWXX;
create table T_QTZXCPWSBSWXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZX             char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_WSMC                varchar(300)                         NULL,        -- 文书名称
    N_WSXH                int                                  NULL,        -- 文书序号
    D_SQRQ                timestamp                            NULL,        -- 申请日期
    C_BSWYY               varchar(300)                         NULL,        -- 不上网原因
    C_BSWQTYY             varchar(300)                         NULL,        -- 不上网其他原因
    C_SPJL                varchar(300)                         NULL,        -- 审批结论
    D_SPRQ                timestamp                            NULL,        -- 审批日期
    N_SPR                 int                                  NULL,        -- 审批人
constraint PK_QTZXCPWSBSWXX primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_QTZXZLJL;
create table T_QTZXZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_QTZXZLJL primary key( C_ID )
);

 commit; 

set search_path to DB_QTZX;
commit;

-------------------------
-- 执行主体信息证件信息
-------------------------

drop table if exists T_QTZXZXZTXXZJXX;
create table T_QTZXZXZTXXZJXX
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    C_ID_QTZXZXZTXX       char(32)                             NOT NULL,    -- 执行主体信息ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XH                  int                                  NULL,        -- 序号
    C_ZJLX                varchar(300)                         NULL,        -- 证件类型
    C_ZJHM                varchar(300)                         NULL,        -- 证件号码
constraint PK_QTZXZXZTXXZJXX primary key( C_ID )
);

 commit; 



-- auto create by SMD

set search_path to DB_WS;
commit;

-------------------------
-- 文书
-------------------------

drop table if exists T_WS;
create table T_WS
(
    C_ID                  char(32)                             NOT NULL,    -- 案件ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    N_XHWS                int                                  NULL,        -- 序号_文书
    C_LB                  varchar(300)                         NULL,        -- 类别
    C_MC                  varchar(300)                         NULL,        -- 名称
    N_ZZR                 int                                  NULL,        -- 制作人
    D_ZZSJ                timestamp                            NULL,        -- 制作时间
    C_NR                  text                                 NULL,        -- 内容
    C_YSBZ                varchar(300)                         NULL,        -- 压缩标志
    C_WJGS                varchar(300)                         NULL,        -- 文件格式
    N_QFR                 int                                  NULL,        -- 签发人
    D_QFRQ                timestamp                            NULL,        -- 签发日期
constraint PK_WS primary key( C_ID )
);

 commit; 

set search_path to DB_WS;
commit;

-------------------------
-- 增量记录
-------------------------

drop table if exists T_WSZLJL;
create table T_WSZLJL
(
    C_ID                  char(32)                             NOT NULL,    -- 主键ID
    N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
    D_UPDATETIME          timestamp                            NULL,        -- 更新时间
    N_ZT                  int                                  NULL,        -- 修改状态
constraint PK_WSZLJL primary key( C_ID )
);

 commit; 


 
 
 -- auto create by SMD

set search_path to DB_FY;
commit;

-------------------------
-- 组织机构
-------------------------

drop table if exists T_JG;
create table T_JG
(
    C_ZZJGID              char(32)                             NOT NULL,    -- 组织机构ID
    N_JGBS                int                                  NOT NULL,    -- 机构标识
    C_JGMC                varchar(300)                         NULL,        -- 机构名称
    C_JGLX                varchar(300)                         NULL,        -- 机构类型
    C_YX                  varchar(300)                         NULL,        -- 有效
    N_FYDM                int                                  NULL,        -- 法院代码
    N_LSJGBS              int                                  NULL,        -- 隶属机构标识
    C_SFPCFT              varchar(300)                         NULL,        -- 是否派出法庭
    C_BMJC                varchar(300)                         NULL,        -- 部门简称
constraint PK_JG primary key( C_ZZJGID )
);

 commit; 

set search_path to DB_FY;
commit;

-------------------------
-- 组织人员
-------------------------

drop table if exists T_RY;
create table T_RY
(
    C_ZZRYID              char(32)                             NOT NULL,    -- 主键ID
    N_RYBS                int                                  NULL,        -- 人员标识
    C_XM                  varchar(300)                         NULL,        -- 姓名
    C_DLBS                varchar(300)                         NULL,        -- 登录标识
    C_XB                  varchar(300)                         NULL,        -- 性别
    D_CSRQ                timestamp                            NULL,        -- 出生日期
    C_MZ                  varchar(300)                         NULL,        -- 民族
    C_WHCD                varchar(300)                         NULL,        -- 文化程度
    C_HYZK                varchar(300)                         NULL,        -- 婚姻状况
    C_SFZHM               varchar(300)                         NULL,        -- 身份证号码
    C_ZZMM                varchar(300)                         NULL,        -- 政治面貌
    C_XZJB                varchar(300)                         NULL,        -- 行政级别
    C_ZW                  varchar(300)                         NULL,        -- 职务
    C_BZ                  varchar(300)                         NULL,        -- 编制
    C_DHHM                varchar(300)                         NULL,        -- 电话号码
    C_SJHM                varchar(300)                         NULL,        -- 手机号码
    C_YX                  varchar(300)                         NULL,        -- 有效
    C_FGDJ                varchar(300)                         NULL,        -- 法官等级
    C_FJDJ                varchar(300)                         NULL,        -- 法警等级
    N_SZJG                int                                  NOT NULL,    -- 所在机构
constraint PK_RY primary key( C_ZZRYID )
);

 commit; 




set search_path to db_xa;
commit;

drop table if exists T_SCZX;
create table T_SCZX
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_SCZX primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_HFZX;
create table T_HFZX
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_HFZX primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_CCBQZX;
create table T_CCBQZX
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_CCBQZX primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_ZXYY;
create table T_ZXYY
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_ZXYY primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_ZXFY;
create table T_ZXFY
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_ZXFY primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_ZXJD;
create table T_ZXJD
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_ZXJD primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_ZXXT;
create table T_ZXXT
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_ZXXT primary key( C_ID )
);
commit;


set search_path to db_xa;
commit;

drop table if exists T_QTZX;
create table T_QTZX
(
C_ID                  char(32)                             NOT NULL,    -- 案件ID
N_AJBS                numeric(19, 0)                       NULL,        -- 案件标识
C_BAAH                varchar(300)                         NULL,        -- 本案案号
N_JBFY                int                                  NULL,        -- 经办法院
D_LARQ                timestamp                            NULL,        -- 立案日期
C_LAAY                text                                 NULL,        -- 立案案由
D_JARQ                timestamp                            NULL,        -- 结案日期
C_JAAY                text                                 NULL,        -- 结案案由
C_JAFS                varchar(300)                         NULL,        -- 结案方式
D_SCRQ                timestamp                            NULL,        -- 删除日期
C_SCYY                varchar(240)                         NULL,        -- 删除原因
N_SPRBS               int                                  NULL,        -- 审批人标识 
C_SPR                 varchar(100)                         NULL,        -- 审批人
N_SHRBS               int                                  NULL,        -- 审核人标识
C_SHR                 varchar(100)                         NULL,        -- 审核人
C_SHJG                varchar(10)                          NULL,        -- 审核结果
C_BTYYY               varchar(240)                         NULL,        -- 
D_SHSJ                timestamp                            NULL,        -- 审核时间
D_CRSJ                timestamp                            NULL,        -- 本审核记录插入时间
C_ID_TASK             varchar(32)                          NULL,        -- 任务编号
constraint PK_QTZX primary key( C_ID )
);
commit;


 
 













