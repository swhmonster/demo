-- auto create by SMD

set search_path to DB_SCZX;
commit;

comment on table  T_SCZX                                  is '首次执行案件主表';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ID                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AH                             is '案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AJZLX                             is '案件子类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AJLY                             is '案件来源';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXHZSY                             is '执行回转事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_HFZXSY                             is '恢复执行事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXBDNR                             is '执行标的内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_YZXBDXW                             is '应执行标的行为';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_YZXBDW                             is '应执行标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_CCXQY                             is '财产性权益';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_YZXBDJE                             is '应执行标的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_YGSQZXF                             is '预估申请执行费';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_LAAY                             is '立案案由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_LAAYMS                             is '立案案由描述';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_LABMBS                             is '立案部门标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SADJR                             is '收案登记人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_SARQ                             is '收案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SCR                             is '审查人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_SCRQ                             is '审查日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SCYJ                             is '审查意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_LASPRQ                             is '立案审批日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SPYJ                             is '审批意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_LARQ                             is '立案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_AJXH                             is '案件序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_AJLXDM                             is '案件类型代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BQAH                             is '保全案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FYDM                             is '法院代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BQCDLX                             is '保全裁定类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQZBHZXCYLXLXQQ                             is '申请中包含执行迟延履行利息请求';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SQZYMQCYLXLXSE                             is '申请中已明确迟延履行利息数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQZBHZXCYLXJQQ                             is '申请中包含执行迟延履行金请求';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SQZYMQCYLXJSE                             is '申请中已明确迟延履行金数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SCZXAH                             is '首次执行案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_CFAJQX                             is '拆分案件情形';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FQLXZQS                             is '分期履行总期数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_YLXQS                             is '已履行期数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQGFQSNY                             is '申请给付起始年月';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQGFJZNY                             is '申请给付截止年月';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQZXNR                             is '申请执行内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_WCNR                             is '未成年人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_DYSJ                             is '地域涉及';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_AJSJ                             is '案件涉及';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_DA                             is '大案';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_YA                             is '要案';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_XLXAJ                             is '新类型案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_YNAJ                             is '疑难案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_JTAJ                             is '集团案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_MDJHAJ                             is '矛盾激化案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BYZDAJ                             is '本院重点案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXYJLX                             is '执行依据类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZCZXYJDW                             is '作出执行依据单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXYJWSWH                             is '执行依据文书文号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXYJZW                             is '执行依据主文';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_ZXYJWSSXRQ                             is '执行依据文书生效日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_ZXYJWSLXZHQX                             is '执行依据文书履行最后期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_CBBMBS                             is '承办部门标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_CBR                             is '承办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SPZ                             is '审判长';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_HYTCY                             is '合议庭成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SJY                             is '书记员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_FARQ                             is '分案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FDLAQX                             is '法定立案期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SJLATS                             is '实际立案天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_LACQTS                             is '立案超期天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FDZXQX                             is '法定执行期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SJZXTS                             is '实际执行天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZHZX                             is '暂缓执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_FCZXTZSRQ                             is '发出执行通知书日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_CCBGQX                             is '财产报告期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_CBRCSRQ                             is '承办人初审日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SFYCC                             is '是否有财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXTZS                             is '执行通知书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXTZWSMC                             is '执行通知文书名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZQSE                             is '债权数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_FFYY                             is '发放原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_FFRQ                             is '发放日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZQPZBH                             is '债权凭证编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZQRBGQK                             is '债权人变更情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZQBHQK                             is '债权变化情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_JXRQ                             is '激销日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_ZXRQ                             is '注销日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_FQZX                             is '分期执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_JAAY                             is '结案案由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_JAFS                             is '结案方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_JARQ                             is '结案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZXWBSY                             is '执行完毕事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BYSLYY                             is '不予受理原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BYZXLY                             is '不予执行理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZJBCZXSY                             is '终结本次执行事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZJZXSY                             is '终结执行事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_XASY                             is '销案事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_JABDJE                             is '结案标的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SJDWJE                             is '实际到位金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SQRFQBDJE                             is '申请人放弃标的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SWZXBDJE                             is '尚未执行标的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_QZCYLXJ                             is '其中迟延履行金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_QZCYLXLX                             is '其中迟延履行利息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_TDWDWQK                             is '特定物到位情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_XWLXQK                             is '行为履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_CCXQYZXQK                             is '财产性权益执行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_JAWS                             is '结案文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SJBZ                             is '实结标志';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SQRSQZJBCZXCX                             is '申请人申请终结本次执行程序';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_LJR                             is '立卷人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_TJR                             is '提交人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_TJRQ                             is '提交日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_JSR                             is '接收人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_JSRQ                             is '接收日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_MLH                             is '目录号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_JZH                             is '卷宗号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZJCS                             is '正卷册数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FJCS                             is '副卷册数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZJYS                             is '正卷页数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_FJYS                             is '副卷页数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_QTJCS                             is '其他卷册数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_QTJYS                             is '其他卷页数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BJQK                             is '并卷情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_MJ                             is '密级';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_BGQX                             is '保管期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_GDH                             is '归档号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_QZH                             is '全宗号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_SFYZXWB                             is '是否已执行完毕';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_ZBGLR                             is '终本管理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_GKHPBZT                             is '公开或屏蔽状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.N_SYZXBDJE                             is '剩余执行标的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.D_CCBGZJRQ                             is '财产报告终结日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZJQX                             is '终结情形';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_CDS                             is '裁定书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_KHYX                             is '开户银行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_ZHMC                             is '账户名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZX.C_KHZH                             is '开户账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYZXAJXX                                  is '原执行案件信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.N_CY                             is '成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYZC.C_JS                             is '角色';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_LX                             is '类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.C_YY                             is '原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXFTSYJL                                  is '法庭使用记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_TC                             is '庭次';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_DD                             is '地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.N_BL                             is '笔录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXXS                                  is '执行线索';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.N_XHXS                             is '序号_线索';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_XSLY                             is '线索来源';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_XSNR                             is '线索内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.D_XSTGRQ                             is '线索提供日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_XSZT                             is '线索状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_HFNR                             is '回复内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_GXXXZT                             is '更新信息状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.N_XSTGR                             is '线索提供人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_XSTGDQTR                             is '线索提供的其他人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.C_XSTGSDJD                             is '线索提供时的阶段';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXXS.D_XSHSRQ                             is '线索核实日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCCDC                                  is '财产调查';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.N_XHCCDC                             is '序号_财产调查';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCDW                             is '调查单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCDWFL                             is '调查单位分类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.N_BDCR                             is '被调查人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.D_DCSJ                             is '调查时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_HFNR                             is '回复内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCNR                             is '调查内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCJG                             is '调查结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCYY                             is '调查原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_TZS                             is '通知书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCSZDW                             is '调查所在单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCJZD                             is '调查居住地';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCZSD                             is '调查住所地';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCJYCS                             is '调查经营场所';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCZFGJJ                             is '调查住房公积金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCJRLCCP                             is '调查金融理财产品';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCSYLBX                             is '调查收益类保险';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCGXHL                             is '调查股息红利';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCSHJZ                             is '调查生活居住';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCLDJY                             is '调查劳动就业';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCSR                             is '调查收入';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCZQ                             is '调查债权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCGQ                             is '调查股权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCQYXZJSL                             is '调查企业性质及设立';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCHBFL                             is '调查合并分立';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCTZJY                             is '调查投资经营';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCZQZW                             is '调查债权债务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCBGZZ                             is '调查变更终止';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCCDC.C_DCBL                             is '调查笔录';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYT                                  is '约谈';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.N_XHYT                             is '序号_约谈';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_BYTR                             is '被约谈人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.D_YTSJ                             is '约谈时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_YTFS                             is '约谈方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.N_TGXSQX                             is '提供线索期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_YTSY                             is '约谈事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_YTCS                             is '约谈场所';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_YTCJRY                             is '约谈参加人员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYT.C_SFTYZB                             is '是否同意终本';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCH                                  is '传唤';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.N_XHCH                             is '序号_传唤';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.N_BCHR                             is '被传唤人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.D_CHSJ                             is '传唤时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_GZDWHZZ                             is '工作单位或住址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_YDCS                             is '应到处所';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_CHSY                             is '传唤事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_CHQK                             is '传唤情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCH.C_CHWSXH                             is '传唤文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXJC                                  is '拘传';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.N_XHJC                             is '序号_拘传';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.N_BJCR                             is '被拘传人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_JCYY                             is '拘传原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.D_FXRQ                             is '发现日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_JCDD                             is '拘传地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.D_KSSJ                             is '开始时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.D_JSSJ                             is '结束时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_JCP                             is '拘传票';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJC.C_ZXJCQK                             is '执行拘传情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSC                                  is '搜查';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.N_XHSC                             is '序号_搜查';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.N_BSCR                             is '被搜查人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_ZCRSFHZW                             is '在场人身份和职务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.D_SCSJ                             is '搜查时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_SCDD                             is '搜查地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_NSCBDW                             is '拟搜查标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_QZKQ                             is '强制开启';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_KQJG                             is '开启结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_TQDX                             is '提取对象';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.D_GHRQ                             is '归还日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_SCJG                             is '搜查结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSC.C_SCWSXH                             is '搜查文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXXSZX                                  is '悬赏执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_XHXSZX                             is '序号_悬赏执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_GGFBRQ                             is '公告发布日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_FBFS                             is '发布方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_GGNR                             is '公告内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_XSJSRQ                             is '悬赏结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_ZXQK                             is '执行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_ZXJE                             is '执行金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_XSWSXH                             is '悬赏文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_XSZXSQRQ                             is '悬赏执行申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_MTFBPT                             is '媒体发布平台';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_ZTGGSJ                             is '张贴公告时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_ZTGGDZ                             is '张贴公告地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_QTFBPTMC                             is '其他发布平台名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_QTFBPTSJ                             is '其他发布平台时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_QTFBPTFY                             is '其他发布平台费用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_SFZXSQ                             is '是否准许申请';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_JSFF                             is '计算方法';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_LQTJ                             is '领取条件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_GGWS                             is '公告文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.D_SPSJ                             is '审批时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_SPYJ                             is '审批意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_YGRYDSF                             is '有关人员的身份';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_XSZWQK                             is '线索掌握情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_SQZXRDZQSFSX                             is '申请执行人的债权是否实现';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_XSJESFFF                             is '悬赏金额是否发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.N_FFJE                             is '发放金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXSZX.C_BFFDLY                             is '不发放的理由';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSFSJ                                  is '司法审计';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.N_XHSFSJ                             is '序号_司法审计';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.N_BSJR                             is '被审计人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SJYY                             is '审计原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.D_KSRQ                             is '开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SJJG                             is '审计机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.D_JSRQ                             is '结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SFSJJG                             is '审计结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_CLJG                             is '处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_CMCCQD                             is '查明财产清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SJWSXH                             is '审计文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SFZXSQ                             is '是否准许申请';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_BZXYY                             is '不准许原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.N_SJFFDR                             is '审计费负担人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_BZXRFDLY                             is '被执行人负担理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.N_FDSE                             is '负担数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFSJ.C_SFJN                             is '是否缴纳';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCC                                  is '已查明财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.N_XHCMCC                             is '序号_查明财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CMFS                             is '查明方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.D_CMRQ                             is '查明日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCLX                             is '财产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCMC                             is '财产名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCZT                             is '财产状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCQDFJ                             is '财产清单附件';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCZBJG                             is '财产甄别结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.D_CCZBRQ                             is '财产甄别日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCBKZXYY                             is '财产不可执行原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCC.C_CCYJFL                             is '财产一级分类';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCF                                  is '查封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.N_XHCF                             is '序号_查封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFLX                             is '查封类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_TQFS                             is '提请方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.N_CFWSYR                             is '查封物所有人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFQDXH                             is '查封清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFQD                             is '查封清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.D_CFSXRQ                             is '查封生效日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.D_CFJMRQ                             is '查封届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFDD                             is '查封地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFFF                             is '查封方法';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_BGR                             is '保管人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_BGDD                             is '保管地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_CFWSXH                             is '查封文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_JCCFYY                             is '解除查封原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.D_JFRQ                             is '解封日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCF.C_JCCFWSXH                             is '解除查封文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXKY                                  is '扣押';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.N_XHKY                             is '序号_扣押';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_KYLX                             is '扣押类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_TQFS                             is '提请方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.N_CCSYQR                             is '财产所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.D_KYSXRQ                             is '扣押生效日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.D_KYJMRQ                             is '扣押届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_KYDD                             is '扣押地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_BGR                             is '保管人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_BGDD                             is '保管地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_KYQDXH                             is '扣押清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_KYQD                             is '扣押清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_KYWSXH                             is '扣押文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_JCKYYY                             is '解除扣押原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.D_JKRQ                             is '解扣日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKY.C_JCKYWS                             is '解除扣押文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXDJ                                  is '冻结';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.N_XHDJ                             is '序号_冻结';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_DJLX                             is '冻结类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_TQFS                             is '提请方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.N_CCSYQR                             is '财产所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_DJQDXH                             is '冻结清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_DJQD                             is '冻结清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.D_DJSXRQ                             is '冻结生效日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.D_DJJMRQ                             is '冻结届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.N_SJDJJE                             is '实际冻结金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_DJWSXH                             is '冻结文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_JCDJYY                             is '解除冻结原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.D_JDRQ                             is '解冻日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJ.C_JCDJWS                             is '解除冻结文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXQZGL                                  is '强制管理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.N_XHQZGL                             is '序号_强制管理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_BGLCCXH                             is '被管理财产序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_BGLCC                             is '被管理财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_GLR                             is '管理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_QZGLYY                             is '强制管理原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.D_CCCKRQ                             is '财产查扣日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.D_KSRQ                             is '开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_QZGLWS                             is '强制管理文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.D_JCRQ                             is '解除日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_JCYY                             is '解除原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZGL.C_JCQZGLWS                             is '解除强制管理文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXHB                                  is '划拨';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_XHHB                             is '序号_划拨';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_SQZXR                             is '申请执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_HBCKSYR                             is '划拨存款所有人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_HBZHJZH                             is '划拨账户及帐号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_HBJE                             is '划拨金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_HBCCLX                             is '划拨财产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_HRZHJZH                             is '划入帐户及帐号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.D_HBRQ                             is '划拨日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_HRZHSYR                             is '划入帐号所有人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_KHWSXH                             is '扣划文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_BZ                             is '币种';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.C_WNHBYY                             is '未能划拨原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHB.N_HBHZ                             is '划拨回执';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPG                                  is '评估';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.N_XHPG                             is '序号_评估';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_SQF                             is '申请方';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_BSQF                             is '被申请方';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_PGJZRQ                             is '评估基准日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YJPGFDSR                             is '预交评估费当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YSCL                             is '移送材料';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_BDWQKSM                             is '标的物情况说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_WTPGSX                             is '委托评估事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_WTPGYSB                             is '委托评估移送表';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.N_JBR                             is '经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_JBRQ                             is '经办日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_SFYY                             is '是否异议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YYR                             is '异议人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_TCYYSJ                             is '提出异议时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YYNR                             is '异议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.N_TCYYJBR                             is '提出异议经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_TCYYJBRQ                             is '提出异议经办日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YYCLWC                             is '异议处理完成';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YYCLJG                             is '异议处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.C_YYCLSM                             is '异议处理说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_YYCLRQ                             is '异议处理日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.N_YYCLJBR                             is '异议处理经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPG.D_YYCLJBRQ                             is '异议处理经办日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPM                                  is '拍卖';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.N_XHPM                             is '序号_拍卖';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_SQF                             is '申请方';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_BSQF                             is '被申请方';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.N_PMCDSXH                             is '拍卖裁定书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.D_PMCDRQ                             is '拍卖裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.N_PMCDJBR                             is '拍卖裁定经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.D_PMCDJBRQ                             is '拍卖裁定经办日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_SFTJPM                             is '是否提交拍卖';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_PMFS                             is '拍卖方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_SFQDPMJG                             is '是否确定拍卖机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_PMJGMC                             is '拍卖机构名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_JGXDFS                             is '机构选定方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_JGLXR                             is '机构联系人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_JGLXFS                             is '机构联系方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.C_PMWSXH                             is '拍卖文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.N_QDJGJBR                             is '确定机构经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPM.D_QDJGJBRQ                             is '确定机构经办日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXBM                                  is '变卖';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.N_XHBM                             is '序号_变卖';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_BMYY                             is '变卖原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.N_BMCDSXH                             is '变卖裁定书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.D_BMCDRQ                             is '变卖裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_BMFS                             is '变卖方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_BMJGMC                             is '变卖机构名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_JGXDFS                             is '机构选定方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_JGLXR                             is '机构联系人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBM.C_BMWTWS                             is '变卖委托文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYWDZ                                  is '以物抵债';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.N_XHYWDZ                             is '序号_以物抵债';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_YWDZYY                             is '以物抵债原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_BDWQDXH                             is '标的物清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_BDWQD                             is '标的物清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.N_SYQR                             is '所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.N_ZDJE                             is '折抵金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.D_ZDRQ                             is '折抵日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYWDZ.C_YWDZWS                             is '以物抵债文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPDYJ                                  is '拍抵移交';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.N_XHPDYJ                             is '序号_拍抵移交';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_QSBGLX                             is '权属变更类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_BDWQDXH                             is '标的物清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_BDWQDMS                             is '标的物清单描述';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_YSYQR                             is '原所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_MSR                             is '买受人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_QSBGWS                             is '权属变更文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_CCYJWB                             is '财产移交完毕';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.D_YJRQ                             is '移交日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_CCZYRSFJBYJ                             is '财产占有人是否拒不移交';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPDYJ.C_QZZXQK                             is '强制执行情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXKLYTQ                                  is '扣留与提取';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_XHKLYTQ                             is '序号_扣留与提取';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_LB                             is '类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_NKLTQJE                             is '拟扣留提取金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_KLTQWSXH                             is '扣留提取文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.D_KLHTQRQ                             is '扣留或提取日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_TQZH                             is '提取帐号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.N_KLTQJE                             is '扣留提取金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_BZ                             is '币种';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_XZZXR                             is '协执执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKLYTQ.C_WNKLTQYY                             is '未能扣留提取原因';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXQZQCYTC                                  is '强制迁出与退出';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.N_XHQZQCYTC                             is '序号_强制迁出与退出';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.D_QQGGRQ                             is '强迁公告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_QQWSXH                             is '强迁文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_BQCRHBTCR                             is '被迁出人或被退出人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.D_QCHTCRQ                             is '迁出或退出日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_JZR                             is '见证人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_ZXJG                             is '执行结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZQCYTC.C_CCCLQK                             is '财产处理情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXQTQZCS                                  is '其他强制措施';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.N_XHQTQZCS                             is '序号_其他强制措施';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_QZDX                             is '强制对象';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_CSMC                             is '措施名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_YWLXQK                             is '义务履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_QTQZSSWS                             is '其他强制实施文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.D_SSRQ                             is '实施日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_SSDD                             is '实施地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_SSNR                             is '实施内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQTQZCS.C_SSJG                             is '实施结果';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXFK                                  is '罚款';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_XHFK                             is '序号_罚款';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_BFKR                             is '被罚款人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_FKYY                             is '罚款原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_FXRQ                             is '发现日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_FKRQ                             is '罚款日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_FKJE                             is '罚款金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_FKWS                             is '罚款文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_LXRQ                             is '履行日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_LXJE                             is '履行金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_FYXH                             is '复议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_FYSQRQ                             is '复议申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_FYLX                             is '复议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_FYNR                             is '复议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_FYSQS                             is '复议申请书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_FYFY                             is '复议法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_FYJG                             is '复议结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.C_DFYHXCL                             is '对复议后续处理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFK.N_FYJDS                             is '复议决定书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXJL                                  is '拘留';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_XHJL                             is '序号_拘留';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_BJLR                             is '被拘留人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JLDD                             is '拘留地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JLYY                             is '拘留原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_FXRQ                             is '发现日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JLYYSM                             is '拘留原因说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_JLTS                             is '拘留天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_KSRQ                             is '开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_ZXJLDW                             is '执行拘留单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JLJDS                             is '拘留决定书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_JCRQ                             is '解除日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JCYY                             is '解除原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_JCJLWS                             is '解除拘留文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_FYXH                             is '复议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_FYLX                             is '复议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_FYNR                             is '复议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_FYFY                             is '复议法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_FYSQS                             is '复议申请书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.C_FYJG                             is '复议结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJL.N_FYJDS                             is '复议决定书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXFZYS                                  is '犯罪移送';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.N_XHFZYS                             is '序号_犯罪移送';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.N_FZXYR                             is '犯罪嫌疑人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.D_YSRQ                             is '移送日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_SYDW                             is '受移单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_YSYY                             is '移送原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.D_FXRQ                             is '发现日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_CLJG                             is '处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_SXFZSSXW                             is '涉嫌犯罪事实行为';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.N_YSCLFS                             is '移送材料份数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFZYS.C_FZYSWS                             is '犯罪移送文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPCZR                                  is '赔偿责任';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_XHPCZR                             is '序号_赔偿责任';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_PCZRR                             is '赔偿责任人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_PCZRYY                             is '赔偿责任原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_FXRQ                             is '发现日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_CDPCRQ                             is '裁定赔偿日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_XZTZSJ                             is '协执通知时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_XZZXDSX                             is '协助执行的事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_JBLXDSSHLY                             is '拒不履行的事实和理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_JBLXYWDSJ                             is '拒不履行义务的时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_DJDJE                             is '冻结的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_ZYDJE                             is '转移的金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_ZLZHTZSJ                             is '责令追回通知时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_ZLZHSJ                             is '责令追回时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_CKDCC                             is '查扣冻财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.D_CKDSJ                             is '查扣冻时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_BPCR                             is '被赔偿人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_CDPCQX                             is '裁定赔偿期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_PCJE                             is '赔偿金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.N_BPCRSSDSE                             is '被赔偿人损失的数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPCZR.C_PCZRWS                             is '赔偿责任文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXQZXZ                                  is '强制限制';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_XHQZXZ                             is '序号_强制限制';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_BXZR                             is '被限制人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_XZYY                             is '限制原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_XZZL                             is '限制种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_XZNR                             is '限制内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_XZDW                             is '协执单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.D_KSRQ                             is '开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_QZXZWS                             is '强制限制文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.D_JCRQ                             is '解除日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_JCYY                             is '解除原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_JCQZXZWS                             is '解除强制限制文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_FYXH                             is '复议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.D_FYSQRQ                             is '复议申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_FYLX                             is '复议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_FYSQS                             is '复议申请书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_FYNR                             is '复议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.N_FYFY                             is '复议法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_FYJG                             is '复议结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.D_DFRQ                             is '答复日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXQZXZ.C_CLJG                             is '处理结果';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSXBZXR                                  is '失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_LSHSXBZXR                             is '流水号_失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_TQFS                             is '提起方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_AH                             is '案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.N_SXBZXR                             is '失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_BZXRMC                             is '被执行人名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_BZXRLX                             is '被执行人类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_XB                             is '性别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.N_NL                             is '年龄';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZJLX                             is '证件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZJHM                             is '证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_JGFZRXM                             is '机构负责人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_FLWSQRDYW                             is '法律文书确认的义务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_BZXRLXQK                             is '被执行人履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_YLXQK                             is '已履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_WLXQK                             is '未履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.D_LARQ                             is '立案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZXAYMC                             is '执行案由名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZXFYMC                             is '执行法院名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZXYJWH                             is '执行依据文号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.D_FBSJ                             is '发布时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_SXBZXRXWQK                             is '失信被执行人行为情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_SXWSWH                             is '失信文书文号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_NRSXJDS                             is '纳入失信决定书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.N_ZXFY                             is '执行法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_SXZT                             is '失信状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_ZXYJZZDW                             is '执行依据制作单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.D_SQSJ                             is '申请时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_SPYJ                             is '审批意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSXBZXR.C_JGFZRZJHM                             is '机构负责人证件号码';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXBGHZJDSR                                  is '变更和追加当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.N_XHBGHZJ                             is '序号_变更和追加';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_LX                             is '类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_BGHZJBZXRLX                             is '变更或追加被执行人类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_BGHZJYY                             is '变更或追加原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.N_BGDYDSR                             is '变更的原当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.N_BGHZJDXDSR                             is '变更或追加的新当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.D_CDRQ                             is '裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.N_CDWS                             is '裁定文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_BGHZJSY                             is '变更或追加事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_QDYY                             is '启动原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGHZJDSR.C_BGHZJSQZXRLX                             is '变更或追加申请执行人类型';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXFCDQK                                  is '执行费承担情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_XHFYJCD                             is '序号_费用及承担';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_CDR                             is '承担人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_AJSLF                             is '案件受理费';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_SQF                             is '申请费';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_QTFY                             is '其他费用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFCDQK.N_YCDFYE                             is '应承担费用额';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXFJNJL                                  is '执行费缴纳记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_XHZXFJN                             is '序号_执行费缴纳';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_CDR                             is '承担人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_AJSLF                             is '案件受理费';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_SQF                             is '申请费';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_QTFY                             is '其他费用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.N_JNZJE                             is '缴纳总金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.C_JNR                             is '缴纳人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.D_JNRQ                             is '交纳日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFJNJL.C_SJHM                             is '收据号码';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXFSFJZQK                                  is '执行费司法救助情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.N_XHSFJZ                             is '序号_司法救助';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.N_SJZR                             is '受救助人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_SQJZLX                             is '申请救助类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.N_SQJJJE                             is '申请减交金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_SSYLY                             is '事实与理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_HJQX                             is '缓交期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_SQJZYY                             is '申请救助原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.N_PZR                             is '批准人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.D_PZRQ                             is '批准日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_JJAJLX                             is '救济案件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFSFJZQK.C_JJDX                             is '救济对象';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXKJN                                  is '执行款缴纳';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_LSHZXKJN                             is '流水号_执行款缴纳';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.N_JNDSR                             is '缴纳当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_JNR                             is '交纳人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.N_JNJE                             is '交纳金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_JNKXLB                             is '交纳款项类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.D_JNRQ                             is '交纳日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_SJHM                             is '收据号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_DZFS                             is '到账方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKJN.C_LYAH                             is '来源案号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXKFF                                  is '执行款发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.C_LSHZXKFF                             is '流水号_执行款发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.N_BCFFZE                             is '本次发放总额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFF.D_SQRQ                             is '申请日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXDXWDZX                                  is '对行为的执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.N_XHDXWDZX                             is '序号_对行为的执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.C_XWDNR                             is '行为的内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWDZX.D_XWLXQX                             is '行为履行期限';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXDQZQ                                  is '执行到期债权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_XHZXDQZQ                             is '序号_执行到期债权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_LY                             is '来源';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_DQZWR                             is '到期债务人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_ZQSE                             is '债权数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.D_FCTZSRQ                             is '发出通知书日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_YYXH                             is '异议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.D_YYRQ                             is '异议日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_YYNR                             is '异议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_YYCLJG                             is '异议处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_KBBCLYY                             is '抗辩不成立原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.D_CDRQ                             is '裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_QDDZQSE                             is '确定的债权数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_CDNR                             is '裁定内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_TCYYR                             is '提出异议人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.C_ZXYYLX                             is '执行异议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDQZQ.N_ZXYYCDWS                             is '执行异议裁定文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXXZZX                                  is '协助执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.N_XHXZZX                             is '序号_协助执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_XZYWRLX                             is '协助义务人类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_XZYWR                             is '协助义务人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_XZSX                             is '协助事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.D_XZTZFCRQ                             is '协助通知发出日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_JYXZ                             is '给予协助';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXXZZX.C_LXQK                             is '履行情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCYFPXX                                  is '参与分配信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.N_XHCYFP                             is '序号_参与分配';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.C_FYLX                             is '法院类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.D_YJRQ                             is '移交日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.C_DFPCC                             is '待分配财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.N_DFPZJE                             is '待分配总金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPXX.C_CYFPJG                             is '参与分配结果';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZDLX                                  is '自动履行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.N_XHZDLX                             is '序号_自动履行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.N_SQR                             is '申请人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.N_LXJE                             is '履行金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.C_LXBDW                             is '履行标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.C_LXBDXW                             is '履行标的行为';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZDLX.D_LXRQ                             is '履行日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXWTHYSZX                                  is '委托或移送执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_YSYY                             is '移送原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_YSWS                             is '移送文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.D_AJYJRQ                             is '案卷移交日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.N_SYSFY                             is '受移送法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.D_HFRQ                             is '回复日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_HFNR                             is '回复内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTHYSZX.C_HFLAAH                             is '回复立案案号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXYY                                  is '执行异议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.N_XHZXYY                             is '序号_执行异议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_TCYYR                             is '提出异议人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.D_TCYYRQ                             is '提出异议日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_ZXYYLX                             is '执行异议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_YYNR                             is '异议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.D_CDRQ                             is '裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_CDJG                             is '裁定结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.D_SDFDYJTZRQ                             is '收到反对意见通知日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.N_ZXYYCDWS                             is '执行异议裁定文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_CDNR                             is '裁定内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.N_SQFYXH                             is '申请复议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_FYJG                             is '复议结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_CDAH                             is '裁定案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXYY.C_CBRYJ                             is '承办人意见';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSDJL                                  is '送达记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_WS                             is '文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_SDFS                             is '送达方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.N_STFY                             is '受托法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.N_SDR                             is '送达人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.N_SSDR                             is '受送达人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_QSR                             is '签收人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPBJL                                  is '批办记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_PBJG                             is '批办机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_PBLD                             is '批办领导';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_PBWH                             is '批办文号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_BGJG                             is '报告结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.N_PBSX                             is '批办时限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXFAZXXWCL                                  is '妨碍执行行为处理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.N_XHFAZX                             is '序号_妨碍执行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.N_XWR                             is '行为人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_XWLX                             is '行为类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.D_CLRQ                             is '处理日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_CLJG                             is '处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.N_FKJE                             is '罚款金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.D_FKJNRQ                             is '罚款缴纳日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.N_JLTS                             is '拘留天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_JLCS                             is '拘留场所';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXFAZXXWCL.C_CLWS                             is '处理文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXHBQK                                  is '回避情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.N_XHHB                             is '序号_回避';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_HBLX                             is '回避类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.D_SQHBRQ                             is '申请回避日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_HBYY                             is '回避原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.N_HBR                             is '回避人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.N_HBSQR                             is '回避申请人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_HBCLJG                             is '回避处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.C_HBJDR                             is '回避决定人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.D_HBJDRQ                             is '回避决定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXHBQK.N_HBJDS                             is '回避决定书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXDBQK                                  is '执行担保情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_XHDB                             is '序号_担保';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_SY                             is '事由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_DSR                             is '当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_DBFS                             is '担保方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_DBR                             is '担保人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_YDSRGX                             is '与当事人关系';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_BZJE                             is '保证金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.D_DBRQ                             is '担保日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_DBWMC                             is '担保物名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_DBFW                             is '担保范围';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.N_DBQX                             is '担保期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.D_CDRQ                             is '裁定日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_CDNR                             is '裁定内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBQK.C_DBWSXH                             is '担保文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSFJY                                  is '司法建议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.C_JYDX                             is '建议对象';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.N_JYS                             is '建议书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXAJPY                                  is '案件评议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_PYLX                             is '评议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXSWHTL                                  is '审委会讨论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXFY                                  is '执行复议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.N_XHZXFY                             is '序号_执行复议';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_FYLX                             is '复议类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_FYNR                             is '复议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.N_FYSQS                             is '复议申请书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.N_FYFY                             is '复议法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_FYJG                             is '复议结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.N_FYJDS                             is '复议决定书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXFY.C_DFYDHXCL                             is '对复议的后续处理';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXLCJD                                  is '执行流程节点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_CLR                             is '处理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.N_QX                             is '期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXZTXX                                  is '执行主体信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_LY                             is '来源';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DSR                             is '当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_LX                             is '类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DZ                             is '地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DLR                             is '代理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_JS                             is '角色';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_XB                             is '性别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.N_NL                             is '年龄';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_GJ                             is '国籍';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_MZ                             is '民族';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SF                             is '身份';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_ZY                             is '职业';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_ZW                             is '职务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_JL                             is '简历';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXWQ                                  is '执行外勤';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.N_XHZXWQ                             is '序号_执行外勤';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_ZXYWLB                             is '执行业务类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_SPMC                             is '视频名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_LMTDZ                             is '流媒体地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.D_ZXRQ                             is '执行日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_ZXDD                             is '执行地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.N_SZ                             is '时长';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.N_SPWJDX                             is '视频文件大小';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_SPJJ                             is '视频简介';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_ZZR                             is '制作人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.C_DJR                             is '登记人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWQ.D_DJRQ                             is '登记日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPBBZXR                                  is '屏蔽被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_LSHPBBZXR                             is '流水号_屏蔽被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.N_PBBZXR                             is '屏蔽被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_PBYY                             is '屏蔽原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.D_PBSQRQ                             is '屏蔽申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.D_SPRQ                             is '审批日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXRZ                                  is '执行日志';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.D_SJ                             is '时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.C_SX                             is '事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXRZ.C_CLR                             is '处理人';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXDBSX                                  is '执行督办事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_DBBH                             is '督办编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_DBZT                             is '督办主题';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.D_DBQX                             is '督办期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_SXLX                             is '事项类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_ZXDBXFJL                             is '执行督办下发记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.D_XZSJ                             is '下载时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_JDYWXH                             is '节点业务序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBSX.C_YWMS                             is '业务描述';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXDBXFJL                                  is '执行督办下发记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_DBBH                             is '督办编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.N_FQFY                             is '发起法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_DBYQ                             is '督办要求';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.D_XFSJ                             is '下发时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.D_JSDBXXSJ                             is '接收督办信息时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_JSDBXXRXM                             is '接收督办信息人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_WSXX                             is '文书信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXDBXFJL.C_JDYWXH                             is '节点业务序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXWTXX                                  is '执行委托信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTID                             is '委托ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.N_STFY                             is '受托法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_SFSNWT                             is '是否省内委托';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTCJRXM                             is '委托创建人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.D_WTSJ                             is '委托时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_CBRLXFS                             is '承办人联系方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.D_BLQX                             is '办理期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTCKLCCPSX                             is '委托存款理财产品事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTBDCXYDJDDCSX                             is '委托不动产需要登记的动产事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTGQJQTTZQYSX                             is '委托股权及其他投资权益事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTSDFLWSSX                             is '委托送达法律文书事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTDCSX                             is '委托调查事项';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTXQ                             is '委托详情';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTSQWS                             is '委托申请文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTXX.C_WTSXCLZT                             is '委托事项处理状态';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXWTSL                                  is '委托受理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_WTID                             is '委托ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_WTBH                             is '委托编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.D_SLSJ                             is '受理时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_SLRXM                             is '受理人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTSL.C_SLRLXFS                             is '受理人联系方式';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXWTBL                                  is '委托办理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_WTID                             is '委托ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.D_BJSJ                             is '办结时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_BJSM                             is '办结说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_PTTHYY                             is '平台退回原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_PTWTSXZT                             is '平台委托事项状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBL.C_LCXTWTBLWS                             is '流程系统委托办理文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXWTBLQR                                  is '委托办理确认';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.C_WTID                             is '委托ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.N_QRXH                             is '确认序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.C_QRJG                             is '确认结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.C_BLJGTHYY                             is '办理结果退回原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXWTBLQR.D_QRRQ                             is '确认日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZBHZDWLCXX                                  is '终本后自动网络查询信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.N_XHZDCX                             is '序号_自动查询';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_CXFS                             is '查询方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_XZDWMC                             is '协执单位名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_XYFL                             is '行业分类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.D_FSXZDWSJ                             is '发送协助单位时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.D_XZDWFKSJ                             is '协执单位反馈时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_SFYJG                             is '是否有结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHZDWLCXX.C_CKLSH                             is '查控流水号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZBCCCXXX                                  is '终本财产查询信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.N_XHCCCX                             is '序号_财产查询';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_CXFS                             is '查询方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_XZDWMC                             is '协执单位名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_CCLX                             is '财产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_CCMC                             is '财产名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.N_CCSL                             is '财产数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.N_CCJE                             is '财产金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBCCCXXX.C_CKLSH                             is '查控流水号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZBHFJYJCLX                                  is '终本恢复建议及处理信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.N_XHHFJYJCL                             is '序号_恢复建议及处理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_HFJYLY                             is '恢复建议来源';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_JYNR                             is '建议内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.D_JYSJ                             is '建议时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_SFCL                             is '是否处理';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_CLR                             is '处理人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.D_CLSJ                             is '处理时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_CLJG                             is '处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_HFZXAH                             is '恢复执行案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZBHFJYJCLX.C_CLJGSM                             is '处理结果说明';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXBGCCL                                  is '报告财产令';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.N_BZXR                             is '被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_QDYY                             is '启动原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.D_BGCCLFCRQ                             is '报告财产令发出日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.D_CCBGQJJMRQ                             is '财产报告期间届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_BGCCL                             is '报告财产令';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.N_YQTS                             is '延期天数';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_YQYY                             is '延期原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.D_YQSQRQ                             is '延期申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_YQSPJL                             is '延期审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_YQSPYJ                             is '延期审批意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.N_YQSPR                             is '延期审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.D_YQSPRQ                             is '延期审批日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.D_CCBGRQ                             is '财产报告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBGCCL.C_ZXXSXH                             is '执行线索序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYHFF                                  is '延缓发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.C_LSHAKDZLSH                             is '流水号_案款到账流水号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.N_MXXH                             is '明细序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.C_YHYY                             is '延缓原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYHFF.N_YHTS                             is '延缓天数';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXKTC                                  is '执行款提存';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.C_LSHZXKTCLSH                             is '流水号_执行款提存流水号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.N_YE                             is '余额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.N_TCJE                             is '提存金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.C_TCYY                             is '提存原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKTC.D_TCRQ                             is '提存日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXWDJ                                  is '执行物登记';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_BH                             is '编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_ZXWMC                             is '执行物名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_KWLX                             is '款物类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.N_BGFY                             is '保管法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_BGBM                             is '保管部门';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_BGDD                             is '保管地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.N_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.D_ZXRQ                             is '执行日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWDJ.C_SQPZ                             is '收取凭证';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXWFF                                  is '执行物发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.N_LSHZXWFF                             is '流水号_执行物发放';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_ZXWBH                             is '执行物编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_LQR                             is '领取人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.N_FFDSR                             is '发放当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_SFFFWB                             is '是否发放完毕';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_LQRZJH                             is '领取人证件号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.C_LQRZJLX                             is '领取人证件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWFF.D_LQRQ                             is '领取日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXWTC                                  is '执行物提存';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_LSHZXWTCLSH                             is '流水号_执行物提存流水号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_TCZXW                             is '提存执行物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.C_TCYY                             is '提存原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXWTC.D_TCRQ                             is '提存日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZLJL                                  is '增量记录';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZLJL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZLJL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZLJL.N_ZT                             is '修改状态';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCXJ                                  is '已查明财产现金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCXJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCXJ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCXJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCXJ.N_SE                             is '数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCXJ.C_BZ                             is '币种';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCYHCK                                  is '已查明财产银行存款';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_YHMC                             is '银行名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_KHZH                             is '开户账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_ZHLB                             is '账户类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_ZHZT                             is '账户状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_KHWD                             is '开户网点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_KHWDDM                             is '开户网点代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.D_KHSJ                             is '开户时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.D_XHSJ                             is '销户时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_BZ                             is '币种';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.N_SE                             is '数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_SFZT                             is '是否透支';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.N_KYZCSE                             is '可用资产数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_GBZJZH                             is '关联资金账户';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_TXDZ                             is '通讯地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_YZBM                             is '邮政编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYHCK.C_LXDH                             is '联系电话';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCHLWJRXX                                  is '已查明财产互联网金融信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZCRMC                             is '注册人名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZCRZJLX                             is '注册人证件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZCRZJHM                             is '注册人证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZCRSJHM                             is '注册人手机号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZH                             is '账户';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZHLB                             is '账户类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_ZHZT                             is '账户状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.D_ZHZCSJ                             is '账户注册时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_JJBZ                             is '计价币种';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.N_ZCSE                             is '资产数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.N_KYZCSE                             is '可用资产数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_TXDZ                             is '通讯地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_YZBM                             is '邮政编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHLWJRXX.C_LXDH                             is '联系电话';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQTZJ                                  is '已查明财产其他资金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_ZJMC                             is '资金名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.N_JE                             is '金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_BZ                             is '币种';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_KHZH                             is '开户账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_KHYH                             is '开户银行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_KHMC                             is '开户名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.D_CXSJ                             is '查询时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_ZHZT                             is '账户状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_DWMC                             is '单位名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTZJ.C_DWZH                             is '单位账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCCL                                  is '已查明财产车辆';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_ZCDJJG                             is '注册登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_JDCDJBH                             is '机动车登记编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_HPZL                             is '号牌种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CLPP                             is '车辆品牌';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CLLX                             is '车辆类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CLSBH                             is '车辆识别号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_FDJH                             is '发动机号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CLXH                             is '车辆型号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.D_ZCDJRQ                             is '注册登记日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.D_CLCCRQ                             is '车辆出厂日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CLSYXZ                             is '车辆使用性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CSYS                             is '车身颜色';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_JDCZT                             is '机动车状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_SFNS                             is '是否年审';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_NK                             is '年款';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CX                             is '车系';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_PL                             is '排量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.N_XSLC                             is '行驶里程';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_CK                             is '车况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCL.C_BXQK                             is '保险情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZZYF                                  is '已查明财产住宅用房';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FCZH                             is '房产证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_SZXQ                             is '所在小区';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FCZL                             is '房产坐落';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FWXZ                             is '房屋性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_JZMJ                             is '建筑面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_DJJG                             is '登记价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FH                             is '房号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FWBM                             is '房屋编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_SZLC                             is '所在楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_QBLC                             is '全部楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_S                             is '室';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_T                             is '厅';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.N_W                             is '卫';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_JZCX                             is '建筑朝向';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_DT                             is '电梯';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.D_JCRQ                             is '建成日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZZYF.C_ZXCD                             is '装修程度';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCJSYDSYQ                                  is '已查明财产建设用地使用权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_CQZH                             is '产权证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_TDMJ                             is '土地面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_DJJG                             is '登记价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_SYQLX                             is '使用权类型 ';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_YT                             is '用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_QLR                             is '权利人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJSYDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCGP                                  is '已查明财产股票';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_CYZQMC                             is '持有证券名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_KHJG                             is '开户机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.D_KHSJ                             is '开户时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZQZHH                             is '证券帐户号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZHLB                             is '帐户类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.N_ZHZJJE                             is '帐户资金金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZHZT                             is '帐户状态';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZQDM                             is '证券代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZQJC                             is '证券简称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.N_CGSL                             is '持股数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZQXZ                             is '证券性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_ZHMC                             is '账户名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_DQTGDY                             is '当前托管单元';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_JSCYRMC                             is '结算参与人名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_GFXZ                             is '股份性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_LTLX                             is '流通类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.C_QYLB                             is '权益类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGP.N_KJYSL                             is '可交易数量';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCJJ                                  is '已查明财产基金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.C_JJMC                             is '基金名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.N_JJSL                             is '基金数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.C_JJXSDW                             is '基金销售单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJJ.C_JJBH                             is '基金编号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZQ                                  is '已查明财产债券';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.C_ZQMC                             is '债券名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.N_ZQMZ                             is '债券面值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.C_ZQFXDW                             is '债券发行单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQ.C_ZQBH                             is '债券编号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQTCCXQY                                  is '已查明财产其他财产性权益';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.C_QLMC                             is '权利名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.C_BH                             is '编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.C_QLDJDW                             is '权利登记单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTCCXQY.N_DQGZ                             is '当前估值';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCYC                                  is '已查明财产渔船';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_YCBM                             is '渔船编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CM                             is '船名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_YCZL                             is '渔船种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_ZCCC                             is '渔船船长';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_YCXK                             is '渔船形宽';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_YCXS                             is '渔船形深';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_ZDW                             is '总吨位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_JDW                             is '净吨位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.N_ZJZGL                             is '主机总功率';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CTCZ                             is '船体材质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.D_JZWGRQ                             is '建造完工日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CBHHSBM                             is '船舶呼号识别码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CBSYRMC                             is '船舶所有人名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CBSYRDZ                             is '船舶所有人地址';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_SYRZJHM                             is '所有人证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.C_CJG                             is '船籍港';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYC.D_SYQDJSJ                             is '所有权登记审批时间';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCCB                                  is '已查明财产船舶';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CBSBH                             is '船舶识别号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CM                             is '船名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CBCYM                             is '船舶曾用名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_IMOBH                             is 'IMO编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CJG                             is '船籍港';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_YCJG                             is '原船籍港';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CBZL                             is '船舶种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_CBHH                             is '船舶呼号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.C_ZCDD                             is '造船地点';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.D_JCRQ                             is '建成日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_CBC                             is '船舶长';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_CBK                             is '船舶宽';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_CBS                             is '船舶深';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_ZDW                             is '总吨位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_JDW                             is '净吨位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_ZZDW                             is '载重吨位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCB.N_GL                             is '功率';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCGQ                                  is '已查明财产股权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ZCH                             is '注册号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_CGGSMC                             is '持股公司名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ZS                             is '住所';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ZCZB                             is '注册资本';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_GSLX                             is '公司类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_JYFW                             is '经营范围';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.D_CLSJ                             is '成立时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_YYQX                             is '营业期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.N_CZE                             is '出资额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.N_CZBL                             is '出资比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_ZW                             is '职务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGQ.C_NJQK                             is '年检情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCSW                                  is '已查明财产税务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.C_TSZH                             is '退税账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.N_TSJE                             is '退税金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.D_TSSJ                             is '退税时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.C_NSZH                             is '纳税账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.N_NSJE                             is '纳税金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSW.N_DKJE                             is '抵扣金额';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZQXX                                  is '已查明财产债权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.N_SE                             is '数额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZQXX.C_ZWR                             is '债务人';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCCMJQSB                                  is '已查明财产查明机器设备';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.N_SBZJJZ                             is '设备折旧价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMJQSB.C_DW                             is '单位';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCCMCPYCL                                  is '已查明财产查明产品原材料';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.C_ZL                             is '种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.C_PM                             is '品名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCCMCPYCL.C_JLDW                             is '计量单位';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZSCQ                                  is '已查明财产知识产权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_ZZLX                             is '证照类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_ZZHM                             is '证照号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.C_JLDW                             is '计量单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZSCQ.N_SL                             is '数量';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCGWZH                                  is '已查明财产古玩字画';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.C_ZL                             is '种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.C_PM                             is '品名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGWZH.C_JLDW                             is '计量单位';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCTDCBJYQ                                  is '已查明财产土地承包经营权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_ZSH                             is '证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTDCBJYQ.C_DJJG                             is '登记机关';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZJDSYQ                                  is '已查明财产宅基地使用权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_ZSH                             is '证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZJDSYQ.C_DJJG                             is '登记机关';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCHYSYQ                                  is '已查明财产海域使用权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_DJJG                             is '登记机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_JLDW                             is '计量单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.N_JZ                             is '价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_YHLXA                             is '用海类型A';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_YHLXB                             is '用海类型B';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_HDMC                             is '海岛名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_HDWZ                             is '海岛位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.C_HDYT                             is '海岛用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.D_SYQQSSJ                             is '使用权起始时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHYSYQ.D_SYQJSSJ                             is '使用权结束时间';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQTTDSYQ                                  is '已查明财产其他土地使用权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_DJJG                             is '登记机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_JZ                             is '价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_YT                             is '用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_QLXZ                             is '权利性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_QLR                             is '权利人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_SYQLX                             is '使用权类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTTDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCSYYF                                  is '已查明财产商业用房';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FCZH                             is '房产证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.N_SZXQ                             is '所在小区';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FCZL                             is '房产坐落';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.N_DJJG                             is '登记价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FH                             is '房号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FWBM                             is '房屋编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_SZLC                             is '所在楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_QBLC                             is '全部楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_DT                             is '电梯';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.D_JCRQ                             is '建成日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYYF.C_ZXCD                             is '装修程度';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCGYYF                                  is '已查明财产工业用房';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FCZH                             is '房产证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FCZL                             is '房产坐落';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.N_DJJG                             is '登记价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FH                             is '房号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FWBM                             is '房屋编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_SZLC                             is '所在楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_QBLC                             is '全部楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_DT                             is '电梯';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.D_JCRQ                             is '建成日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGYYF.C_ZXCD                             is '装修程度';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQTYF                                  is '已查明财产其他用房';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FCZH                             is '房产证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FCZL                             is '房产坐落';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FWXZ                             is '房屋性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.N_JZMJ                             is '建筑面积';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.N_DJJG                             is '登记价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_DH                             is '地号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FH                             is '房号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FWBM                             is '房屋编码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_SZLC                             is '所在楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_QBLC                             is '全部楼层';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_JZCX                             is '建筑朝向';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_DT                             is '电梯';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.D_JCRQ                             is '建成日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTYF.C_ZXCD                             is '装修程度';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCHKQ                                  is '已查明财产航空器';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_GJ                             is '国籍';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_HKQLX                             is '航空器类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_SBH                             is '识别号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_TFD                             is '停放地';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCHKQ.C_DJJG                             is '登记机关';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQTJTYSGJ                                  is '已查明财产其他交通运输工具';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_PP                             is '品牌';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_PZ                             is '牌照';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_JTXX                             is '具体信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQTJTYSGJ.C_DJJG                             is '登记机关';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCYBDC                                  is '已查明财产一般动产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.N_JZ                             is '价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCYBDC.C_WZ                             is '位置';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZFGJJ                                  is '已查明财产住房公积金';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.N_JE                             is '金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZFGJJ.C_ZH                             is '账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCGXHL                                  is '已查明财产股息红利';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.N_JE                             is '金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.C_JTXX                             is '具体信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCGXHL.C_ZH                             is '账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCSYLBX                                  is '已查明财产收益类保险';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.N_JE                             is '金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSYLBX.C_ZH                             is '账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCJRLCCP                                  is '已查明财产金融理财产品';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.N_JE                             is '金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJRLCCP.C_ZH                             is '账号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCSLLMSYQ                                  is '已查明财产森林林木使用权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_ZSH                             is '证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_DJJG                             is '登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_JLDW                             is '计量单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.N_JZ                             is '价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.C_YT                             is '用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCSLLMSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCJTTDSYQ                                  is '已查明财产集体土地所有权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_ZSH                             is '证书号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.N_JZ                             is '价值';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.C_YT                             is '用途';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCJTTDSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCZBYSSS                                  is '已查明财产珠宝玉石首饰';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_MC                             is '名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_JTXX                             is '具体信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_DW                             is '单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_PP                             is '品牌';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCZBYSSS.C_CFWZ                             is '存放位置';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCTKCKQ                                  is '已查明财产探矿采矿权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_KQMC                             is '矿权名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_XKZH                             is '许可证号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_WZ                             is '位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCTKCKQ.C_DJJG                             is '登记机关';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXYCMCCQT                                  is '已查明财产其他';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_ID_SCZXYCMCC                             is '已查明财产ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_CFWZ                             is '存放位置';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_BH                             is '编号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.N_SL                             is '数量';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_DW                             is '单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXYCMCCQT.C_PP                             is '品牌';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCFXF                                  is '查封续封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_ID_SCZXCF                             is '查封ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.N_XHXF                             is '序号_续封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_XFYY                             is '续封原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.D_CDXFRQ                             is '裁定续封日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.D_XFJMRQ                             is '续封届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_XFCCQDXH                             is '续封财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_XFCCQD                             is '续封财产清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFXF.C_XFWSXH                             is '续封文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCFBFJF                                  is '查封部分解封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_ID_SCZXCF                             is '查封ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.N_XHBFJF                             is '序号_部分解封';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_BFJCCFYY                             is '部分解除查封原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_BFJCCFWXH                             is '部分解除查封物序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_BFJCCFW                             is '部分解除查封物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_BFSYCFW                             is '部分剩余查封物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.D_BFJFRQ                             is '部分解封日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCFBFJF.C_BFJFWS                             is '部分解封文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXKYXK                                  is '扣押续扣';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_ID_SCZXKY                             is '扣押ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.N_XHXK                             is '序号_续扣';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.D_CDXKRQ                             is '裁定续扣日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.D_XKJMRQ                             is '续扣届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_XKYY                             is '续扣原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_XKCCQDXH                             is '续扣财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_XKCCQD                             is '续扣财产清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYXK.C_XKWSXH                             is '续扣文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXKYBFJK                                  is '扣押部分解扣';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_ID_SCZXKY                             is '扣押ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.N_XHBFJK                             is '序号_部分解扣';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_BFJCKYYY                             is '部分解除扣押原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_BFJCCFCCXH                             is '部分解除查封财产序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_BFJCKYWP                             is '部分解除扣押物品';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_SYKYW                             is '剩余扣押物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.D_BFJKRQ                             is '部分解扣日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXKYBFJK.C_BFJKWS                             is '部分解扣文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXDJXD                                  is '冻结续冻';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_ID_SCZXDJ                             is '冻结ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.N_XHXD                             is '序号_续冻';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.D_CDXDRQ                             is '裁定续冻日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.D_XDJMRQ                             is '续冻届满日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_XDYY                             is '续冻原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_XDCCQDXH                             is '续冻财产清单序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_XDCCQD                             is '续冻财产清单';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJXD.C_XDWSXH                             is '续冻文书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXDJBFJD                                  is '冻结部分解冻';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_ID_SCZXDJ                             is '冻结ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.N_XHBFJD                             is '序号_部分解冻';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_BFJCDJYY                             is '部分解除冻结原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_BFJCDJCCXH                             is '部分解除冻结财产序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_BFJCDJCC                             is '部分解除冻结财产';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.D_BFJDRQ                             is '部分解冻日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDJBFJD.C_BFJDWS                             is '部分解冻文书';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPGPGBDW                                  is '评估评估标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_ID_SCZXPG                             is '评估ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_BHPGBDW                             is '编号_评估标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_PGBDWMC                             is '评估标的物名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_SYQR                             is '所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_BDLB                             is '标的类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_SFQDPGJG                             is '是否确定评估机构';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_PGJGMC                             is '评估机构名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_XDFS                             is '选定方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_JGYJWCGZRQ                             is '机构预计完成工作日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_PGWTS                             is '评估委托书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_QDJGJBR                             is '确定机构经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_QDJGJBRQ                             is '确定机构经办日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_PGSFWC                             is '评估是否完成';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_PGKSRQ                             is '评估开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_PGJSRQ                             is '评估结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_FYSDPGBGRQ                             is '法院收到评估报告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_FYSDRQ                             is '法院送达日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_PGJG                             is '评估结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.C_PGJGSM                             is '评估结果说明';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_PGJ                             is '评估价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_PGFY                             is '评估费用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_PGJGYXJZRQ                             is '评估结果有效截止日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_PGJGWS                             is '评估结果文书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.N_PGJGJBR                             is '评估结果经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPGPGBDW.D_PGJGJBRQ                             is '评估结果经办日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPMPMBDW                                  is '拍卖拍卖标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_ID_SCZXPM                             is '拍卖ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_BHPMBDW                             is '编号_拍卖标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_BDWMC                             is '标的物名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_KZRQ                             is '控制日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_KZFS                             is '控制方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_BDLB                             is '标的类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_SYQR                             is '所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_XCQK                             is '瑕疵情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_PGJ                             is '评估价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_SCJ                             is '市场价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_PMFY                             is '拍卖费用';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DYCPMGGRQ                             is '第一次拍卖公告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DYCPMRQ                             is '第一次拍卖日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DYCQPJ                             is '第一次起拍价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DYCBLJ                             is '第一次保留价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DYCPMJG                             is '第一次拍卖结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DYCJCJ                             is '第一次成交价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DYCLPYY                             is '第一次流拍原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DECPMGGRQ                             is '第二次拍卖公告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DECPMRQ                             is '第二次拍卖日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DECQPJ                             is '第二次起拍价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DECBLJ                             is '第二次保留价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DECPMJG                             is '第二次拍卖结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DECJCJ                             is '第二次成交价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DECLPYY                             is '第二次流拍原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DSCPMGGRQ                             is '第三次拍卖公告日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_DSCPMRQ                             is '第三次拍卖日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DSCQPJ                             is '第三次起拍价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DSCBLJ                             is '第三次保留价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DSCPMJG                             is '第三次拍卖结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_DSCJCJ                             is '第三次成交价';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_DSCLPYY                             is '第三次流拍原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_MSR                             is '买受人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_WKJNQX                             is '尾款交纳期限';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_PMCJQRS                             is '拍卖成交确认书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.N_PMDJJBR                             is '拍卖登记经办人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDW.D_PMDJJBRQ                             is '拍卖登记经办日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPMPMBDWYXGMQK                                  is '拍卖拍卖标的物优先购买情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.C_ID_SCZXPMPMBDW                             is '拍卖标的物ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.N_XHYXGMQK                             is '序号_优先购买情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.C_YXGMRXM                             is '优先购买人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPMPMBDWYXGMQK.C_YXQKMS                             is '优先情况描述';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXBMBMMX                                  is '变卖变卖明细';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_ID_SCZXBM                             is '变卖ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_BHBMBDW                             is '编号_变卖标的物';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_BDWMC                             is '标的物名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.D_KZRQ                             is '控制日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_KZFS                             is '控制方式';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_BDLB                             is '标的类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_SYQR                             is '所有权人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_XCQK                             is '瑕疵情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.D_BMKSRQ                             is '变卖开始日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.D_BMJSRQ                             is '变卖结束日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_CKJG                             is '参考价格';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_BMZE                             is '变卖总额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_BMJG                             is '变卖结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_MSR                             is '买受人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_BMJGWSXH                             is '变卖结果文书序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXBMBMMX.N_CJQRSXH                             is '成交确认书序号';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXJZSXBZXR                                  is '纠正失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ID_SCZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_LSHJZSXBZXR                             is '流水号_纠正失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_AH                             is '案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.N_SXBZXR                             is '失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_BZXRMC                             is '被执行人名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_BZXRLX                             is '被执行人类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_XB                             is '性别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.N_NL                             is '年龄';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZJLX                             is '证件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZJHM                             is '证件号码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_JGFZRXM                             is '机构负责人姓名';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_FLWSQRDYW                             is '法律文书确认的义务';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_BZXRLXQK                             is '被执行人履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_YLXQK                             is '已履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_WLXQK                             is '未履行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.D_LARQ                             is '立案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZXAYMC                             is '执行案由名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZXFYMC                             is '执行法院名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZXYJWH                             is '执行依据文号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.D_FBSJ                             is '发布时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_SXBZXRXWQK                             is '失信被执行人行为情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.D_JZSQSJ                             is '纠正申请时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_JZJDS                             is '纠正决定书';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_ZXYJZZDW                             is '执行依据制作单位';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_SPYJ                             is '审批意见';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXJZSXBZXR.C_JGFZRZJHM                             is '机构负责人证件号码';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCXSXBZXR                                  is '撤销失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_ID_SCZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_LSHCXSXBZXR                             is '流水号_撤销失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.D_CXSQSJ                             is '撤销申请时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_CXYY                             is '撤销原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCXSXBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXPBSXBZXR                                  is '屏蔽失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_ID_SCZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_LSHPBSXBZXR                             is '流水号_屏蔽失信被执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.D_PBSQSJ                             is '屏蔽申请时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_PBYY                             is '屏蔽原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.N_SPR                             is '审批人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXPBSXBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXKFFMX                                  is '执行款发放明细';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_ID_SCZXZXKFF                             is '执行款发放ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.N_JSDSR                             is '接受当事人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_JSR                             is '接受人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.N_FFJE                             is '发放金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_FFKXLB                             is '发放款项类别';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_JSRKHYH                             is '接受人开户银行';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_JSRKHMC                             is '接受人开户名称';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.C_JSRKHZH                             is '接受人开户账号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXKFFMX.D_ZFRQ                             is '支付日期';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXDXWZXQK                                  is '对行为执行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.C_ID_SCZXDXWDZX                             is '对行为的执行ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.N_XHDXWDZXQK                             is '序号_对行为的执行情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.D_QZZXRQ                             is '强制执行日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.C_CLJG                             is '处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXDXWZXQK.C_ZXQK                             is '执行情况';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXCYFPMX                                  is '参与分配明细';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_ID_SCZXCYFPXX                             is '参与分配信息ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_MXXH                             is '明细序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_SQZXR                             is '申请执行人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_SQSNR                             is '申请书内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_CYFPYJ                             is '参与分配依据';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_SQFPJE                             is '申请分配金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_JYYXQ                             is '具有优先权';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_YXQNR                             is '优先权内容';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.D_YXQSXRQ                             is '优先权生效日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.D_FPRQ                             is '分配日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_FPJE                             is '分配金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.N_TCYYXH                             is '提出异议序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_YYCLJG                             is '异议处理结果';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXCYFPMX.C_SQCYFPAWR                             is '申请参与分配案外人';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.C_ID_SCZXZXZTXX                             is '执行主体信息ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXZTXXZJXX.C_ZJHM                             is '证件号码';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZJJZZ                                  is '追究拒执罪';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_XH                             is '序号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_BZJR                             is '被追究人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_SSXZ                             is '诉讼性质';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_SFJYJZXF                             is '是否给予拒执刑罚';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_BXFYY                             is '不刑罚原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_GSJG                             is '公诉机关';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JBFY                             is '经办法院';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_XSAJAH                             is '刑事案件案号';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.D_LARQ                             is '立案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.D_JARQ                             is '结案日期';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_ZSR                             is '自诉人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_ZSLY                             is '自诉理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JZPCQK                             is '拒执判处情况';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JZXGWZLY                             is '拒执宣告无罪理由';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JZBFXSZRYY                             is '拒执不负刑事责任原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JZZZSLYY                             is '拒执终止审理原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_JZZXZL                             is '拒执主刑种类';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_XQN                             is '刑期年';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_XQY                             is '刑期月';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_PCHX                             is '判处缓刑';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_HXN                             is '缓刑年';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_HXY                             is '缓刑月';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.C_FJLX                             is '罚金类型';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZJJZZ.N_FJSE                             is '罚金数额';

set search_path to DB_SCZX;
commit;

comment on table  T_SCZXZXJZXX                                  is '执行救助信息';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.C_ID                             is '主键ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.C_ID_SCZX                             is '案件ID';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.N_AJBS                             is '案件标识';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.N_XH                             is '序号_执行救助';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.C_SJZR                             is '受救助人';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.N_JZJE                             is '救助金额';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.C_JZYY                             is '救助原因';
set search_path to DB_SCZX;
commit;

comment on column T_SCZXZXJZXX.C_JZJLY                             is '救助金来源';


-- auto create by SMD

set search_path to DB_HFZX;
commit;

comment on table  T_HFZX                                  is '恢复执行案件主表';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ID                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AH                             is '案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AJZLX                             is '案件子类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AJLY                             is '案件来源';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXHZSY                             is '执行回转事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_HFZXSY                             is '恢复执行事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXBDNR                             is '执行标的内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_YZXBDXW                             is '应执行标的行为';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_YZXBDW                             is '应执行标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_CCXQY                             is '财产性权益';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_YZXBDJE                             is '应执行标的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_YGSQZXF                             is '预估申请执行费';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_LAAY                             is '立案案由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_LAAYMS                             is '立案案由描述';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_LABMBS                             is '立案部门标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SADJR                             is '收案登记人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_SARQ                             is '收案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SCR                             is '审查人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_SCRQ                             is '审查日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SCYJ                             is '审查意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_LASPRQ                             is '立案审批日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SPYJ                             is '审批意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_LARQ                             is '立案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_AJXH                             is '案件序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_AJLXDM                             is '案件类型代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BQAH                             is '保全案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FYDM                             is '法院代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BQCDLX                             is '保全裁定类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQZBHZXCYLXLXQQ                             is '申请中包含执行迟延履行利息请求';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SQZYMQCYLXLXSE                             is '申请中已明确迟延履行利息数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQZBHZXCYLXJQQ                             is '申请中包含执行迟延履行金请求';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SQZYMQCYLXJSE                             is '申请中已明确迟延履行金数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SCZXAH                             is '首次执行案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_CFAJQX                             is '拆分案件情形';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FQLXZQS                             is '分期履行总期数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_YLXQS                             is '已履行期数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQGFQSNY                             is '申请给付起始年月';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQGFJZNY                             is '申请给付截止年月';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQZXNR                             is '申请执行内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_WCNR                             is '未成年人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_DYSJ                             is '地域涉及';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_AJSJ                             is '案件涉及';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_DA                             is '大案';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_YA                             is '要案';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_XLXAJ                             is '新类型案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_YNAJ                             is '疑难案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_JTAJ                             is '集团案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_MDJHAJ                             is '矛盾激化案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BYZDAJ                             is '本院重点案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXYJLX                             is '执行依据类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZCZXYJDW                             is '作出执行依据单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXYJWSWH                             is '执行依据文书文号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXYJZW                             is '执行依据主文';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_ZXYJWSSXRQ                             is '执行依据文书生效日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_ZXYJWSLXZHQX                             is '执行依据文书履行最后期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_CBBMBS                             is '承办部门标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_CBR                             is '承办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SPZ                             is '审判长';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_HYTCY                             is '合议庭成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SJY                             is '书记员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_FARQ                             is '分案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FDLAQX                             is '法定立案期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SJLATS                             is '实际立案天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_LACQTS                             is '立案超期天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FDZXQX                             is '法定执行期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SJZXTS                             is '实际执行天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZHZX                             is '暂缓执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_FCZXTZSRQ                             is '发出执行通知书日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_CCBGQX                             is '财产报告期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_CBRCSRQ                             is '承办人初审日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SFYCC                             is '是否有财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXTZS                             is '执行通知书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXTZWSMC                             is '执行通知文书名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_ZQSE                             is '债权数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_FFYY                             is '发放原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_FFRQ                             is '发放日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZQPZBH                             is '债权凭证编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZQRBGQK                             is '债权人变更情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZQBHQK                             is '债权变化情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_JXRQ                             is '激销日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_ZXRQ                             is '注销日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_FQZX                             is '分期执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_JAAY                             is '结案案由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_JAFS                             is '结案方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_JARQ                             is '结案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZXWBSY                             is '执行完毕事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BYSLYY                             is '不予受理原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BYZXLY                             is '不予执行理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZJBCZXSY                             is '终结本次执行事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZJZXSY                             is '终结执行事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_XASY                             is '销案事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_JABDJE                             is '结案标的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SJDWJE                             is '实际到位金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SQRFQBDJE                             is '申请人放弃标的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_SWZXBDJE                             is '尚未执行标的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_QZCYLXJ                             is '其中迟延履行金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_QZCYLXLX                             is '其中迟延履行利息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_TDWDWQK                             is '特定物到位情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_XWLXQK                             is '行为履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_CCXQYZXQK                             is '财产性权益执行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_JAWS                             is '结案文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SJBZ                             is '实结标志';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_SQRSQZJBCZXCX                             is '申请人申请终结本次执行程序';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_LJR                             is '立卷人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_TJR                             is '提交人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_TJRQ                             is '提交日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_JSR                             is '接收人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_JSRQ                             is '接收日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_MLH                             is '目录号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_JZH                             is '卷宗号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_ZJCS                             is '正卷册数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FJCS                             is '副卷册数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_ZJYS                             is '正卷页数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_FJYS                             is '副卷页数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_QTJCS                             is '其他卷册数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.N_QTJYS                             is '其他卷页数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BJQK                             is '并卷情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_MJ                             is '密级';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_BGQX                             is '保管期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_GDH                             is '归档号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_QZH                             is '全宗号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.D_CCBGZJRQ                             is '财产报告终结日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZJQX                             is '终结情形';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_CDS                             is '裁定书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_KHYX                             is '开户银行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_ZHMC                             is '账户名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZX.C_KHZH                             is '开户账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYZXAJXX                                  is '原执行案件信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.N_CY                             is '成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYZC.C_JS                             is '角色';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_LX                             is '类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.C_YY                             is '原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXFTSYJL                                  is '法庭使用记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_TC                             is '庭次';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_DD                             is '地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.N_BL                             is '笔录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXXS                                  is '执行线索';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.N_XHXS                             is '序号_线索';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_XSLY                             is '线索来源';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_XSNR                             is '线索内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.D_XSTGRQ                             is '线索提供日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_XSZT                             is '线索状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_HFNR                             is '回复内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_GXXXZT                             is '更新信息状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.N_XSTGR                             is '线索提供人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_XSTGDQTR                             is '线索提供的其他人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.C_XSTGSDJD                             is '线索提供时的阶段';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXXS.D_XSHSRQ                             is '线索核实日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCCDC                                  is '财产调查';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.N_XHCCDC                             is '序号_财产调查';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCDW                             is '调查单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCDWFL                             is '调查单位分类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.N_BDCR                             is '被调查人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.D_DCSJ                             is '调查时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_HFNR                             is '回复内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCNR                             is '调查内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCJG                             is '调查结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCYY                             is '调查原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_TZS                             is '通知书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCSZDW                             is '调查所在单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCJZD                             is '调查居住地';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCZSD                             is '调查住所地';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCJYCS                             is '调查经营场所';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCZFGJJ                             is '调查住房公积金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCJRLCCP                             is '调查金融理财产品';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCSYLBX                             is '调查收益类保险';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCGXHL                             is '调查股息红利';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCSHJZ                             is '调查生活居住';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCLDJY                             is '调查劳动就业';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCSR                             is '调查收入';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCZQ                             is '调查债权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCGQ                             is '调查股权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCQYXZJSL                             is '调查企业性质及设立';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCHBFL                             is '调查合并分立';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCTZJY                             is '调查投资经营';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCZQZW                             is '调查债权债务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCBGZZ                             is '调查变更终止';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCCDC.C_DCBL                             is '调查笔录';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYT                                  is '约谈';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.N_XHYT                             is '序号_约谈';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_BYTR                             is '被约谈人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.D_YTSJ                             is '约谈时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_YTFS                             is '约谈方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.N_TGXSQX                             is '提供线索期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_YTSY                             is '约谈事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_YTCS                             is '约谈场所';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_YTCJRY                             is '约谈参加人员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYT.C_SFTYZB                             is '是否同意终本';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCH                                  is '传唤';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.N_XHCH                             is '序号_传唤';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.N_BCHR                             is '被传唤人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.D_CHSJ                             is '传唤时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_GZDWHZZ                             is '工作单位或住址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_YDCS                             is '应到处所';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_CHSY                             is '传唤事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_CHQK                             is '传唤情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCH.C_CHWSXH                             is '传唤文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXJC                                  is '拘传';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.N_XHJC                             is '序号_拘传';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.N_BJCR                             is '被拘传人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_JCYY                             is '拘传原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.D_FXRQ                             is '发现日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_JCDD                             is '拘传地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.D_KSSJ                             is '开始时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.D_JSSJ                             is '结束时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_JCP                             is '拘传票';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJC.C_ZXJCQK                             is '执行拘传情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSC                                  is '搜查';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.N_XHSC                             is '序号_搜查';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.N_BSCR                             is '被搜查人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_ZCRSFHZW                             is '在场人身份和职务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.D_SCSJ                             is '搜查时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_SCDD                             is '搜查地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_NSCBDW                             is '拟搜查标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_QZKQ                             is '强制开启';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_KQJG                             is '开启结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_TQDX                             is '提取对象';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.D_GHRQ                             is '归还日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_SCJG                             is '搜查结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSC.C_SCWSXH                             is '搜查文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXXSZX                                  is '悬赏执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_XHXSZX                             is '序号_悬赏执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_GGFBRQ                             is '公告发布日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_FBFS                             is '发布方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_GGNR                             is '公告内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_XSJSRQ                             is '悬赏结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_ZXQK                             is '执行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_ZXJE                             is '执行金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_CMCCQDXH                             is '查明财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_XSWSXH                             is '悬赏文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_XSZXSQRQ                             is '悬赏执行申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_MTFBPT                             is '媒体发布平台';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_ZTGGSJ                             is '张贴公告时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_ZTGGDZ                             is '张贴公告地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_QTFBPTMC                             is '其他发布平台名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_QTFBPTSJ                             is '其他发布平台时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_QTFBPTFY                             is '其他发布平台费用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_SFZXSQ                             is '是否准许申请';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_JSFF                             is '计算方法';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_LQTJ                             is '领取条件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_GGWS                             is '公告文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.D_SPSJ                             is '审批时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_SPYJ                             is '审批意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_YGRYDSF                             is '有关人员的身份';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_XSZWQK                             is '线索掌握情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_SQZXRDZQSFSX                             is '申请执行人的债权是否实现';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_XSJESFFF                             is '悬赏金额是否发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.N_FFJE                             is '发放金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXSZX.C_BFFDLY                             is '不发放的理由';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSFSJ                                  is '司法审计';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.N_XHSFSJ                             is '序号_司法审计';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.N_BSJR                             is '被审计人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SJYY                             is '审计原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.D_KSRQ                             is '开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SJJG                             is '审计机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.D_JSRQ                             is '结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SFSJJG                             is '审计结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_CLJG                             is '处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_CMCCQD                             is '查明财产清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SJWSXH                             is '审计文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SFZXSQ                             is '是否准许申请';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_BZXYY                             is '不准许原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.N_SJFFDR                             is '审计费负担人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_BZXRFDLY                             is '被执行人负担理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.N_FDSE                             is '负担数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFSJ.C_SFJN                             is '是否缴纳';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCC                                  is '已查明财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.N_XHCMCC                             is '序号_查明财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CMFS                             is '查明方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.D_CMRQ                             is '查明日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCLX                             is '财产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCMC                             is '财产名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCZT                             is '财产状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCQDFJ                             is '财产清单附件';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCZBJG                             is '财产甄别结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.D_CCZBRQ                             is '财产甄别日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCBKZXYY                             is '财产不可执行原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCC.C_CCYJFL                             is '财产一级分类';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCF                                  is '查封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.N_XHCF                             is '序号_查封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFLX                             is '查封类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_TQFS                             is '提请方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.N_CFWSYR                             is '查封物所有人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFQDXH                             is '查封清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFQD                             is '查封清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.D_CFSXRQ                             is '查封生效日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.D_CFJMRQ                             is '查封届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFDD                             is '查封地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFFF                             is '查封方法';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_BGR                             is '保管人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_BGDD                             is '保管地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_CFWSXH                             is '查封文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_JCCFYY                             is '解除查封原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.D_JFRQ                             is '解封日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCF.C_JCCFWSXH                             is '解除查封文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXKY                                  is '扣押';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.N_XHKY                             is '序号_扣押';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_KYLX                             is '扣押类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_TQFS                             is '提请方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.N_CCSYQR                             is '财产所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.D_KYSXRQ                             is '扣押生效日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.D_KYJMRQ                             is '扣押届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_KYDD                             is '扣押地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_BGR                             is '保管人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_BGDD                             is '保管地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_KYQDXH                             is '扣押清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_KYQD                             is '扣押清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_KYWSXH                             is '扣押文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_JCKYYY                             is '解除扣押原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.D_JKRQ                             is '解扣日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKY.C_JCKYWS                             is '解除扣押文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXDJ                                  is '冻结';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.N_XHDJ                             is '序号_冻结';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_DJLX                             is '冻结类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_TQFS                             is '提请方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.N_CCSYQR                             is '财产所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_DJQDXH                             is '冻结清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_DJQD                             is '冻结清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.D_DJSXRQ                             is '冻结生效日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.D_DJJMRQ                             is '冻结届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.N_SJDJJE                             is '实际冻结金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_DJWSXH                             is '冻结文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_JCDJYY                             is '解除冻结原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.D_JDRQ                             is '解冻日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJ.C_JCDJWS                             is '解除冻结文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXQZGL                                  is '强制管理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.N_XHQZGL                             is '序号_强制管理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_BGLCCXH                             is '被管理财产序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_BGLCC                             is '被管理财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_GLR                             is '管理人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_QZGLYY                             is '强制管理原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.D_CCCKRQ                             is '财产查扣日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.D_KSRQ                             is '开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_QZGLWS                             is '强制管理文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.D_JCRQ                             is '解除日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_JCYY                             is '解除原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZGL.C_JCQZGLWS                             is '解除强制管理文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXHB                                  is '划拨';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_XHHB                             is '序号_划拨';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_SQZXR                             is '申请执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_HBCKSYR                             is '划拨存款所有人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_HBZHJZH                             is '划拨账户及帐号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_HBJE                             is '划拨金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_HBCCLX                             is '划拨财产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_HRZHJZH                             is '划入帐户及帐号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.D_HBRQ                             is '划拨日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_HRZHSYR                             is '划入帐号所有人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_KHWSXH                             is '扣划文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_BZ                             is '币种';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.C_WNHBYY                             is '未能划拨原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHB.N_HBHZ                             is '划拨回执';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPG                                  is '评估';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.N_XHPG                             is '序号_评估';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_SQF                             is '申请方';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_BSQF                             is '被申请方';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_PGJZRQ                             is '评估基准日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YJPGFDSR                             is '预交评估费当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YSCL                             is '移送材料';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_BDWQKSM                             is '标的物情况说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_WTPGSX                             is '委托评估事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_WTPGYSB                             is '委托评估移送表';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.N_JBR                             is '经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_JBRQ                             is '经办日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_SFYY                             is '是否异议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YYR                             is '异议人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_TCYYSJ                             is '提出异议时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YYNR                             is '异议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.N_TCYYJBR                             is '提出异议经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_TCYYJBRQ                             is '提出异议经办日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YYCLWC                             is '异议处理完成';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YYCLJG                             is '异议处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.C_YYCLSM                             is '异议处理说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_YYCLRQ                             is '异议处理日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.N_YYCLJBR                             is '异议处理经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPG.D_YYCLJBRQ                             is '异议处理经办日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPM                                  is '拍卖';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.N_XHPM                             is '序号_拍卖';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_SQF                             is '申请方';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_BSQF                             is '被申请方';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.N_PMCDSXH                             is '拍卖裁定书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.D_PMCDRQ                             is '拍卖裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.N_PMCDJBR                             is '拍卖裁定经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.D_PMCDJBRQ                             is '拍卖裁定经办日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_SFTJPM                             is '是否提交拍卖';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_PMFS                             is '拍卖方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_SFQDPMJG                             is '是否确定拍卖机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_PMJGMC                             is '拍卖机构名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_JGXDFS                             is '机构选定方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_JGLXR                             is '机构联系人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_JGLXFS                             is '机构联系方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.C_PMWSXH                             is '拍卖文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.N_QDJGJBR                             is '确定机构经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPM.D_QDJGJBRQ                             is '确定机构经办日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXBM                                  is '变卖';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.N_XHBM                             is '序号_变卖';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_BMYY                             is '变卖原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.N_BMCDSXH                             is '变卖裁定书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.D_BMCDRQ                             is '变卖裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_BMFS                             is '变卖方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_BMJGMC                             is '变卖机构名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_JGXDFS                             is '机构选定方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_JGLXR                             is '机构联系人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBM.C_BMWTWS                             is '变卖委托文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYWDZ                                  is '以物抵债';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.N_XHYWDZ                             is '序号_以物抵债';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_YWDZYY                             is '以物抵债原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_BDWQDXH                             is '标的物清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_BDWQD                             is '标的物清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.N_SYQR                             is '所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.N_ZDJE                             is '折抵金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.D_ZDRQ                             is '折抵日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYWDZ.C_YWDZWS                             is '以物抵债文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPDYJ                                  is '拍抵移交';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.N_XHPDYJ                             is '序号_拍抵移交';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_QSBGLX                             is '权属变更类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_BDWQDXH                             is '标的物清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_BDWQDMS                             is '标的物清单描述';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_YSYQR                             is '原所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_MSR                             is '买受人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_QSBGWS                             is '权属变更文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_CCYJWB                             is '财产移交完毕';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.D_YJRQ                             is '移交日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_CCZYRSFJBYJ                             is '财产占有人是否拒不移交';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPDYJ.C_QZZXQK                             is '强制执行情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXKLYTQ                                  is '扣留与提取';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_XHKLYTQ                             is '序号_扣留与提取';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_LB                             is '类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_NKLTQJE                             is '拟扣留提取金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_KLTQWSXH                             is '扣留提取文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.D_KLHTQRQ                             is '扣留或提取日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_TQZH                             is '提取帐号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.N_KLTQJE                             is '扣留提取金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_BZ                             is '币种';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_XZZXR                             is '协执执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKLYTQ.C_WNKLTQYY                             is '未能扣留提取原因';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXQZQCYTC                                  is '强制迁出与退出';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.N_XHQZQCYTC                             is '序号_强制迁出与退出';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.D_QQGGRQ                             is '强迁公告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_QQWSXH                             is '强迁文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_BQCRHBTCR                             is '被迁出人或被退出人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.D_QCHTCRQ                             is '迁出或退出日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_JZR                             is '见证人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_ZXJG                             is '执行结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZQCYTC.C_CCCLQK                             is '财产处理情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXQTQZCS                                  is '其他强制措施';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.N_XHQTQZCS                             is '序号_其他强制措施';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_QZDX                             is '强制对象';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_CSMC                             is '措施名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_YWLXQK                             is '义务履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_WLXZWNR                             is '未履行债务内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_QTQZSSWS                             is '其他强制实施文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.D_SSRQ                             is '实施日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_SSDD                             is '实施地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_SSNR                             is '实施内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQTQZCS.C_SSJG                             is '实施结果';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXFK                                  is '罚款';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_XHFK                             is '序号_罚款';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_BFKR                             is '被罚款人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_FKYY                             is '罚款原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_FXRQ                             is '发现日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_FKRQ                             is '罚款日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_FKJE                             is '罚款金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_FKWS                             is '罚款文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_LXRQ                             is '履行日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_LXJE                             is '履行金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_FYXH                             is '复议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_FYSQRQ                             is '复议申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_FYLX                             is '复议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_FYNR                             is '复议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_FYSQS                             is '复议申请书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_FYFY                             is '复议法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_FYJG                             is '复议结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.C_DFYHXCL                             is '对复议后续处理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFK.N_FYJDS                             is '复议决定书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXJL                                  is '拘留';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_XHJL                             is '序号_拘留';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_BJLR                             is '被拘留人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JLDD                             is '拘留地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JLYY                             is '拘留原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_FXRQ                             is '发现日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JLYYSM                             is '拘留原因说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_JLTS                             is '拘留天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_KSRQ                             is '开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_ZXJLDW                             is '执行拘留单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JLJDS                             is '拘留决定书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_JCRQ                             is '解除日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JCYY                             is '解除原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_JCJLWS                             is '解除拘留文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_FYXH                             is '复议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_FYLX                             is '复议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_FYNR                             is '复议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_FYFY                             is '复议法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_FYSQS                             is '复议申请书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.C_FYJG                             is '复议结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJL.N_FYJDS                             is '复议决定书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXFZYS                                  is '犯罪移送';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.N_XHFZYS                             is '序号_犯罪移送';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.N_FZXYR                             is '犯罪嫌疑人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.D_YSRQ                             is '移送日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_SYDW                             is '受移单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_YSYY                             is '移送原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.D_FXRQ                             is '发现日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_CLJG                             is '处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_SXFZSSXW                             is '涉嫌犯罪事实行为';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.N_YSCLFS                             is '移送材料份数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFZYS.C_FZYSWS                             is '犯罪移送文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPCZR                                  is '赔偿责任';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_XHPCZR                             is '序号_赔偿责任';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_PCZRR                             is '赔偿责任人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_PCZRYY                             is '赔偿责任原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_FXRQ                             is '发现日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_CDPCRQ                             is '裁定赔偿日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_XZTZSJ                             is '协执通知时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_XZZXDSX                             is '协助执行的事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_JBLXDSSHLY                             is '拒不履行的事实和理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_JBLXYWDSJ                             is '拒不履行义务的时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_DJDJE                             is '冻结的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_ZYDJE                             is '转移的金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_ZLZHTZSJ                             is '责令追回通知时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_ZLZHSJ                             is '责令追回时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_CKDCC                             is '查扣冻财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.D_CKDSJ                             is '查扣冻时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_BPCR                             is '被赔偿人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_CDPCQX                             is '裁定赔偿期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_PCJE                             is '赔偿金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.N_BPCRSSDSE                             is '被赔偿人损失的数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPCZR.C_PCZRWS                             is '赔偿责任文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXQZXZ                                  is '强制限制';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_XHQZXZ                             is '序号_强制限制';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_BXZR                             is '被限制人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_XZYY                             is '限制原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_XZZL                             is '限制种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_XZNR                             is '限制内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_XZDW                             is '协执单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.D_KSRQ                             is '开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_QZXZWS                             is '强制限制文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.D_JCRQ                             is '解除日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_JCYY                             is '解除原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_JCQZXZWS                             is '解除强制限制文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_FYXH                             is '复议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.D_FYSQRQ                             is '复议申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_FYLX                             is '复议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_FYSQS                             is '复议申请书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_FYNR                             is '复议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.N_FYFY                             is '复议法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_FYJG                             is '复议结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.D_DFRQ                             is '答复日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXQZXZ.C_CLJG                             is '处理结果';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSXBZXR                                  is '失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_LSHSXBZXR                             is '流水号_失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_TQFS                             is '提起方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_AH                             is '案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.N_SXBZXR                             is '失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_BZXRMC                             is '被执行人名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_BZXRLX                             is '被执行人类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_XB                             is '性别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.N_NL                             is '年龄';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZJLX                             is '证件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZJHM                             is '证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_JGFZRXM                             is '机构负责人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_FLWSQRDYW                             is '法律文书确认的义务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_BZXRLXQK                             is '被执行人履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_YLXQK                             is '已履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_WLXQK                             is '未履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.D_LARQ                             is '立案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZXAYMC                             is '执行案由名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZXFYMC                             is '执行法院名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZXYJWH                             is '执行依据文号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.D_FBSJ                             is '发布时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_SXBZXRXWQK                             is '失信被执行人行为情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_SXWSWH                             is '失信文书文号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_NRSXJDS                             is '纳入失信决定书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.N_ZXFY                             is '执行法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_SXZT                             is '失信状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_ZXYJZZDW                             is '执行依据制作单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.D_SQSJ                             is '申请时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_SPYJ                             is '审批意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSXBZXR.C_JGFZRZJHM                             is '机构负责人证件号码';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXBGHZJDSR                                  is '变更和追加当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.N_XHBGHZJ                             is '序号_变更和追加';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_LX                             is '类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_BGHZJBZXRLX                             is '变更或追加被执行人类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_BGHZJYY                             is '变更或追加原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.N_BGDYDSR                             is '变更的原当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.N_BGHZJDXDSR                             is '变更或追加的新当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.D_CDRQ                             is '裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.N_CDWS                             is '裁定文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_BGHZJSY                             is '变更或追加事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_QDYY                             is '启动原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGHZJDSR.C_BGHZJSQZXRLX                             is '变更或追加申请执行人类型';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXFCDQK                                  is '执行费承担情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_XHFYJCD                             is '序号_费用及承担';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_CDR                             is '承担人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_AJSLF                             is '案件受理费';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_SQF                             is '申请费';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_QTFY                             is '其他费用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFCDQK.N_YCDFYE                             is '应承担费用额';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXFJNJL                                  is '执行费缴纳记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_XHZXFJN                             is '序号_执行费缴纳';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_CDR                             is '承担人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_AJSLF                             is '案件受理费';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_SQF                             is '申请费';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_QTFY                             is '其他费用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.N_JNZJE                             is '缴纳总金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.C_JNR                             is '缴纳人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.D_JNRQ                             is '交纳日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFJNJL.C_SJHM                             is '收据号码';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXFSFJZQK                                  is '执行费司法救助情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.N_XHSFJZ                             is '序号_司法救助';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.N_SJZR                             is '受救助人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_SQJZLX                             is '申请救助类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.N_SQJJJE                             is '申请减交金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_SSYLY                             is '事实与理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_HJQX                             is '缓交期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_SQJZYY                             is '申请救助原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.N_PZR                             is '批准人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.D_PZRQ                             is '批准日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_JJAJLX                             is '救济案件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFSFJZQK.C_JJDX                             is '救济对象';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXKJN                                  is '执行款缴纳';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_LSHZXKJN                             is '流水号_执行款缴纳';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.N_JNDSR                             is '缴纳当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_JNR                             is '交纳人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.N_JNJE                             is '交纳金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_JNKXLB                             is '交纳款项类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.D_JNRQ                             is '交纳日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_SJHM                             is '收据号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_DZFS                             is '到账方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKJN.C_LYAH                             is '来源案号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXKFF                                  is '执行款发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.C_LSHZXKFF                             is '流水号_执行款发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.N_BCFFZE                             is '本次发放总额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFF.D_SQRQ                             is '申请日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXDXWDZX                                  is '对行为的执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.N_XHDXWDZX                             is '序号_对行为的执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.C_XWDNR                             is '行为的内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWDZX.D_XWLXQX                             is '行为履行期限';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXDQZQ                                  is '执行到期债权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_XHZXDQZQ                             is '序号_执行到期债权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_LY                             is '来源';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_DQZWR                             is '到期债务人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_ZQSE                             is '债权数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.D_FCTZSRQ                             is '发出通知书日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_YYXH                             is '异议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.D_YYRQ                             is '异议日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_YYNR                             is '异议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_YYCLJG                             is '异议处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_KBBCLYY                             is '抗辩不成立原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.D_CDRQ                             is '裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_QDDZQSE                             is '确定的债权数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_CDNR                             is '裁定内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_TCYYR                             is '提出异议人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.C_ZXYYLX                             is '执行异议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDQZQ.N_ZXYYCDWS                             is '执行异议裁定文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXXZZX                                  is '协助执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.N_XHXZZX                             is '序号_协助执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_XZYWRLX                             is '协助义务人类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_XZYWR                             is '协助义务人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_XZSX                             is '协助事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.D_XZTZFCRQ                             is '协助通知发出日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_JYXZ                             is '给予协助';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXXZZX.C_LXQK                             is '履行情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCYFPXX                                  is '参与分配信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.N_XHCYFP                             is '序号_参与分配';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.C_FYLX                             is '法院类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.D_YJRQ                             is '移交日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.C_DFPCC                             is '待分配财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.N_DFPZJE                             is '待分配总金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPXX.C_CYFPJG                             is '参与分配结果';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZDLX                                  is '自动履行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.N_XHZDLX                             is '序号_自动履行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.N_SQR                             is '申请人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.N_LXJE                             is '履行金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.C_LXBDW                             is '履行标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.C_LXBDXW                             is '履行标的行为';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZDLX.D_LXRQ                             is '履行日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXWTHYSZX                                  is '委托或移送执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_YSYY                             is '移送原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_YSWS                             is '移送文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.D_AJYJRQ                             is '案卷移交日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.N_SYSFY                             is '受移送法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.D_HFRQ                             is '回复日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_HFNR                             is '回复内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTHYSZX.C_HFLAAH                             is '回复立案案号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXYY                                  is '执行异议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.N_XHZXYY                             is '序号_执行异议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_TCYYR                             is '提出异议人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.D_TCYYRQ                             is '提出异议日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_ZXYYLX                             is '执行异议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_YYNR                             is '异议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.D_CDRQ                             is '裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_CDJG                             is '裁定结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.D_SDFDYJTZRQ                             is '收到反对意见通知日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.N_ZXYYCDWS                             is '执行异议裁定文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_CDNR                             is '裁定内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.N_SQFYXH                             is '申请复议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_FYJG                             is '复议结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_CDAH                             is '裁定案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXYY.C_CBRYJ                             is '承办人意见';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSDJL                                  is '送达记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_WS                             is '文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_SDFS                             is '送达方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.N_STFY                             is '受托法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.N_SDR                             is '送达人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.N_SSDR                             is '受送达人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_QSR                             is '签收人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPBJL                                  is '批办记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_PBJG                             is '批办机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_PBLD                             is '批办领导';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_PBWH                             is '批办文号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_BGJG                             is '报告结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.N_PBSX                             is '批办时限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXFAZXXWCL                                  is '妨碍执行行为处理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.N_XHFAZX                             is '序号_妨碍执行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.N_XWR                             is '行为人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_XWLX                             is '行为类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.D_CLRQ                             is '处理日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_CLJG                             is '处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.N_FKJE                             is '罚款金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.D_FKJNRQ                             is '罚款缴纳日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.N_JLTS                             is '拘留天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_JLCS                             is '拘留场所';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXFAZXXWCL.C_CLWS                             is '处理文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXHBQK                                  is '回避情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.N_XHHB                             is '序号_回避';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_HBLX                             is '回避类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.D_SQHBRQ                             is '申请回避日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_HBYY                             is '回避原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.N_HBR                             is '回避人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.N_HBSQR                             is '回避申请人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_HBCLJG                             is '回避处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.C_HBJDR                             is '回避决定人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.D_HBJDRQ                             is '回避决定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXHBQK.N_HBJDS                             is '回避决定书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXDBQK                                  is '执行担保情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_XHDB                             is '序号_担保';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_SY                             is '事由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_DSR                             is '当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_DBFS                             is '担保方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_DBR                             is '担保人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_YDSRGX                             is '与当事人关系';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_BZJE                             is '保证金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.D_DBRQ                             is '担保日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_DBWMC                             is '担保物名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_DBFW                             is '担保范围';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.N_DBQX                             is '担保期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.D_CDRQ                             is '裁定日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_CDNR                             is '裁定内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBQK.C_DBWSXH                             is '担保文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSFJY                                  is '司法建议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.C_JYDX                             is '建议对象';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.N_JYS                             is '建议书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXAJPY                                  is '案件评议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_PYLX                             is '评议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXSWHTL                                  is '审委会讨论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXFY                                  is '执行复议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.N_XHZXFY                             is '序号_执行复议';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_FYLX                             is '复议类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_FYNR                             is '复议内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.N_FYSQS                             is '复议申请书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.N_FYFY                             is '复议法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_FYJG                             is '复议结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.N_FYJDS                             is '复议决定书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXFY.C_DFYDHXCL                             is '对复议的后续处理';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXLCJD                                  is '执行流程节点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_CLR                             is '处理人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.N_QX                             is '期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXZTXX                                  is '执行主体信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_LY                             is '来源';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DSR                             is '当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_LX                             is '类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DZ                             is '地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DLR                             is '代理人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_JS                             is '角色';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_XB                             is '性别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.N_NL                             is '年龄';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_GJ                             is '国籍';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_MZ                             is '民族';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SF                             is '身份';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_ZY                             is '职业';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_ZW                             is '职务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_JL                             is '简历';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXWQ                                  is '执行外勤';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.N_XHZXWQ                             is '序号_执行外勤';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_ZXYWLB                             is '执行业务类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_SPMC                             is '视频名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_LMTDZ                             is '流媒体地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.D_ZXRQ                             is '执行日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_ZXDD                             is '执行地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.N_SZ                             is '时长';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.N_SPWJDX                             is '视频文件大小';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_SPJJ                             is '视频简介';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_ZZR                             is '制作人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.C_DJR                             is '登记人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWQ.D_DJRQ                             is '登记日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPBBZXR                                  is '屏蔽被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_LSHPBBZXR                             is '流水号_屏蔽被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.N_PBBZXR                             is '屏蔽被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_PBYY                             is '屏蔽原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.D_PBSQRQ                             is '屏蔽申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.D_SPRQ                             is '审批日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXRZ                                  is '执行日志';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.D_SJ                             is '时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.C_SX                             is '事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXRZ.C_CLR                             is '处理人';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXDBSX                                  is '执行督办事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_DBBH                             is '督办编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_DBZT                             is '督办主题';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.D_DBQX                             is '督办期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_SXLX                             is '事项类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_ZXDBXFJL                             is '执行督办下发记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.D_XZSJ                             is '下载时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_JDYWXH                             is '节点业务序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBSX.C_YWMS                             is '业务描述';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXDBXFJL                                  is '执行督办下发记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_DBBH                             is '督办编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.N_FQFY                             is '发起法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_DBYQ                             is '督办要求';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.D_XFSJ                             is '下发时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.D_JSDBXXSJ                             is '接收督办信息时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_JSDBXXRXM                             is '接收督办信息人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_WSXX                             is '文书信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXDBXFJL.C_JDYWXH                             is '节点业务序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXWTXX                                  is '执行委托信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTID                             is '委托ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.N_STFY                             is '受托法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_SFSNWT                             is '是否省内委托';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTCJRXM                             is '委托创建人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.D_WTSJ                             is '委托时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_CBRLXFS                             is '承办人联系方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.D_BLQX                             is '办理期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTCKLCCPSX                             is '委托存款理财产品事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTBDCXYDJDDCSX                             is '委托不动产需要登记的动产事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTGQJQTTZQYSX                             is '委托股权及其他投资权益事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTSDFLWSSX                             is '委托送达法律文书事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTDCSX                             is '委托调查事项';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTXQ                             is '委托详情';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTSQWS                             is '委托申请文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTXX.C_WTSXCLZT                             is '委托事项处理状态';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXWTSL                                  is '委托受理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_WTID                             is '委托ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_WTBH                             is '委托编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.D_SLSJ                             is '受理时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_SLRXM                             is '受理人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTSL.C_SLRLXFS                             is '受理人联系方式';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXWTBL                                  is '委托办理';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_WTID                             is '委托ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.D_BJSJ                             is '办结时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_BJSM                             is '办结说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_PTTHYY                             is '平台退回原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_PTWTSXZT                             is '平台委托事项状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBL.C_LCXTWTBLWS                             is '流程系统委托办理文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXWTBLQR                                  is '委托办理确认';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.C_WTID                             is '委托ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.N_QRXH                             is '确认序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.C_QRJG                             is '确认结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.C_BLJGTHYY                             is '办理结果退回原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXWTBLQR.D_QRRQ                             is '确认日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXBGCCL                                  is '报告财产令';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.N_BZXR                             is '被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_QDYY                             is '启动原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.D_BGCCLFCRQ                             is '报告财产令发出日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.D_CCBGQJJMRQ                             is '财产报告期间届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_BGCCL                             is '报告财产令';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.N_YQTS                             is '延期天数';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_YQYY                             is '延期原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.D_YQSQRQ                             is '延期申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_YQSPJL                             is '延期审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_YQSPYJ                             is '延期审批意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.N_YQSPR                             is '延期审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.D_YQSPRQ                             is '延期审批日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.D_CCBGRQ                             is '财产报告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBGCCL.C_ZXXSXH                             is '执行线索序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYHFF                                  is '延缓发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.C_LSHAKDZLSH                             is '流水号_案款到账流水号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.N_MXXH                             is '明细序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.C_YHYY                             is '延缓原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYHFF.N_YHTS                             is '延缓天数';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXKTC                                  is '执行款提存';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.C_LSHZXKTCLSH                             is '流水号_执行款提存流水号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.N_YE                             is '余额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.N_TCJE                             is '提存金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.C_TCYY                             is '提存原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKTC.D_TCRQ                             is '提存日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXWDJ                                  is '执行物登记';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_BH                             is '编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_ZXWMC                             is '执行物名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_KWLX                             is '款物类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.N_BGFY                             is '保管法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_BGBM                             is '保管部门';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_BGDD                             is '保管地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.N_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.D_ZXRQ                             is '执行日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWDJ.C_SQPZ                             is '收取凭证';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXWFF                                  is '执行物发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.N_LSHZXWFF                             is '流水号_执行物发放';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_ZXWBH                             is '执行物编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_LQR                             is '领取人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.N_FFDSR                             is '发放当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_SFFFWB                             is '是否发放完毕';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_LQRZJH                             is '领取人证件号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.C_LQRZJLX                             is '领取人证件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWFF.D_LQRQ                             is '领取日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXWTC                                  is '执行物提存';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_LSHZXWTCLSH                             is '流水号_执行物提存流水号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_BZXRXMHMC                             is '被执行人姓名或名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_TCZXW                             is '提存执行物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.C_TCYY                             is '提存原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXWTC.D_TCRQ                             is '提存日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZLJL                                  is '增量记录';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZLJL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZLJL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZLJL.N_ZT                             is '修改状态';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCXJ                                  is '已查明财产现金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCXJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCXJ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCXJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCXJ.N_SE                             is '数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCXJ.C_BZ                             is '币种';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCYHCK                                  is '已查明财产银行存款';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_YHMC                             is '银行名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_KHZH                             is '开户账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_ZHLB                             is '账户类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_ZHZT                             is '账户状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_KHWD                             is '开户网点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_KHWDDM                             is '开户网点代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.D_KHSJ                             is '开户时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.D_XHSJ                             is '销户时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_BZ                             is '币种';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.N_SE                             is '数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_SFZT                             is '是否透支';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.N_KYZCSE                             is '可用资产数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_GBZJZH                             is '关联资金账户';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_TXDZ                             is '通讯地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_YZBM                             is '邮政编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYHCK.C_LXDH                             is '联系电话';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCHLWJRXX                                  is '已查明财产互联网金融信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZCRMC                             is '注册人名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZCRZJLX                             is '注册人证件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZCRZJHM                             is '注册人证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZCRSJHM                             is '注册人手机号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZH                             is '账户';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZHLB                             is '账户类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_ZHZT                             is '账户状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.D_ZHZCSJ                             is '账户注册时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_JJBZ                             is '计价币种';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.N_ZCSE                             is '资产数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.N_KYZCSE                             is '可用资产数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_TXDZ                             is '通讯地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_YZBM                             is '邮政编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHLWJRXX.C_LXDH                             is '联系电话';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQTZJ                                  is '已查明财产其他资金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_ZJMC                             is '资金名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.N_JE                             is '金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_BZ                             is '币种';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_KHZH                             is '开户账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_KHYH                             is '开户银行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_KHMC                             is '开户名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.D_CXSJ                             is '查询时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_ZHZT                             is '账户状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_DWMC                             is '单位名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTZJ.C_DWZH                             is '单位账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCCL                                  is '已查明财产车辆';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_ZCDJJG                             is '注册登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_JDCDJBH                             is '机动车登记编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_HPZL                             is '号牌种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CLPP                             is '车辆品牌';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CLLX                             is '车辆类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CLSBH                             is '车辆识别号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_FDJH                             is '发动机号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CLXH                             is '车辆型号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.D_ZCDJRQ                             is '注册登记日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.D_CLCCRQ                             is '车辆出厂日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CLSYXZ                             is '车辆使用性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CSYS                             is '车身颜色';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_JDCZT                             is '机动车状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_SFNS                             is '是否年审';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_NK                             is '年款';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CX                             is '车系';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_PL                             is '排量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.N_XSLC                             is '行驶里程';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_CK                             is '车况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCL.C_BXQK                             is '保险情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZZYF                                  is '已查明财产住宅用房';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FCZH                             is '房产证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_SZXQ                             is '所在小区';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FCZL                             is '房产坐落';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FWXZ                             is '房屋性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_JZMJ                             is '建筑面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_DJJG                             is '登记价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FH                             is '房号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FWBM                             is '房屋编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_SZLC                             is '所在楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_QBLC                             is '全部楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_S                             is '室';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_T                             is '厅';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.N_W                             is '卫';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_JZCX                             is '建筑朝向';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_DT                             is '电梯';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.D_JCRQ                             is '建成日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZZYF.C_ZXCD                             is '装修程度';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCJSYDSYQ                                  is '已查明财产建设用地使用权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_CQZH                             is '产权证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_TDMJ                             is '土地面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_DJJG                             is '登记价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_SYQLX                             is '使用权类型 ';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_YT                             is '用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_QLR                             is '权利人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJSYDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCGP                                  is '已查明财产股票';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_CYZQMC                             is '持有证券名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_KHJG                             is '开户机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.D_KHSJ                             is '开户时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZQZHH                             is '证券帐户号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZHLB                             is '帐户类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.N_ZHZJJE                             is '帐户资金金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZHZT                             is '帐户状态';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZQDM                             is '证券代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZQJC                             is '证券简称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.N_CGSL                             is '持股数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZQXZ                             is '证券性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_ZHMC                             is '账户名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_DQTGDY                             is '当前托管单元';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_JSCYRMC                             is '结算参与人名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_GFXZ                             is '股份性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_LTLX                             is '流通类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.C_QYLB                             is '权益类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGP.N_KJYSL                             is '可交易数量';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCJJ                                  is '已查明财产基金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.C_JJMC                             is '基金名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.N_JJSL                             is '基金数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.C_JJXSDW                             is '基金销售单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJJ.C_JJBH                             is '基金编号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZQ                                  is '已查明财产债券';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.C_ZQMC                             is '债券名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.N_ZQMZ                             is '债券面值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.C_ZQFXDW                             is '债券发行单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQ.C_ZQBH                             is '债券编号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQTCCXQY                                  is '已查明财产其他财产性权益';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.C_QLMC                             is '权利名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.C_BH                             is '编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.C_QLDJDW                             is '权利登记单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTCCXQY.N_DQGZ                             is '当前估值';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCYC                                  is '已查明财产渔船';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_YCBM                             is '渔船编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CM                             is '船名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_YCZL                             is '渔船种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_ZCCC                             is '渔船船长';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_YCXK                             is '渔船形宽';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_YCXS                             is '渔船形深';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_ZDW                             is '总吨位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_JDW                             is '净吨位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.N_ZJZGL                             is '主机总功率';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CTCZ                             is '船体材质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.D_JZWGRQ                             is '建造完工日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CBHHSBM                             is '船舶呼号识别码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CBSYRMC                             is '船舶所有人名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CBSYRDZ                             is '船舶所有人地址';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_SYRZJHM                             is '所有人证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.C_CJG                             is '船籍港';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYC.D_SYQDJSJ                             is '所有权登记审批时间';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCCB                                  is '已查明财产船舶';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CBSBH                             is '船舶识别号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CM                             is '船名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CBCYM                             is '船舶曾用名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_IMOBH                             is 'IMO编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CJG                             is '船籍港';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_YCJG                             is '原船籍港';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CBZL                             is '船舶种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_CBHH                             is '船舶呼号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.C_ZCDD                             is '造船地点';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.D_JCRQ                             is '建成日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_CBC                             is '船舶长';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_CBK                             is '船舶宽';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_CBS                             is '船舶深';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_ZDW                             is '总吨位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_JDW                             is '净吨位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_ZZDW                             is '载重吨位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCB.N_GL                             is '功率';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCGQ                                  is '已查明财产股权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ZCH                             is '注册号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_CGGSMC                             is '持股公司名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ZS                             is '住所';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ZCZB                             is '注册资本';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_GSLX                             is '公司类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_JYFW                             is '经营范围';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.D_CLSJ                             is '成立时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_YYQX                             is '营业期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.N_CZE                             is '出资额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.N_CZBL                             is '出资比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_ZW                             is '职务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGQ.C_NJQK                             is '年检情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCSW                                  is '已查明财产税务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.C_TSZH                             is '退税账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.N_TSJE                             is '退税金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.D_TSSJ                             is '退税时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.C_NSZH                             is '纳税账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.N_NSJE                             is '纳税金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSW.N_DKJE                             is '抵扣金额';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZQXX                                  is '已查明财产债权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.N_SE                             is '数额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZQXX.C_ZWR                             is '债务人';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCCMJQSB                                  is '已查明财产查明机器设备';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.N_SBZJJZ                             is '设备折旧价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMJQSB.C_DW                             is '单位';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCCMCPYCL                                  is '已查明财产查明产品原材料';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.C_ZL                             is '种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.C_PM                             is '品名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCCMCPYCL.C_JLDW                             is '计量单位';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZSCQ                                  is '已查明财产知识产权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_ZZLX                             is '证照类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_ZZHM                             is '证照号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.C_JLDW                             is '计量单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZSCQ.N_SL                             is '数量';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCGWZH                                  is '已查明财产古玩字画';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.C_ZL                             is '种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.C_PM                             is '品名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGWZH.C_JLDW                             is '计量单位';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCTDCBJYQ                                  is '已查明财产土地承包经营权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_ZSH                             is '证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTDCBJYQ.C_DJJG                             is '登记机关';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZJDSYQ                                  is '已查明财产宅基地使用权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_ZSH                             is '证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZJDSYQ.C_DJJG                             is '登记机关';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCHYSYQ                                  is '已查明财产海域使用权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_DJJG                             is '登记机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_JLDW                             is '计量单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.N_JZ                             is '价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_YHLXA                             is '用海类型A';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_YHLXB                             is '用海类型B';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_HDMC                             is '海岛名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_HDWZ                             is '海岛位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.C_HDYT                             is '海岛用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.D_SYQQSSJ                             is '使用权起始时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHYSYQ.D_SYQJSSJ                             is '使用权结束时间';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQTTDSYQ                                  is '已查明财产其他土地使用权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_DJJG                             is '登记机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_JZ                             is '价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_YT                             is '用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_QLXZ                             is '权利性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_QLR                             is '权利人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_SYQLX                             is '使用权类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTTDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCSYYF                                  is '已查明财产商业用房';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FCZH                             is '房产证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.N_SZXQ                             is '所在小区';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FCZL                             is '房产坐落';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.N_DJJG                             is '登记价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FH                             is '房号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FWBM                             is '房屋编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_SZLC                             is '所在楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_QBLC                             is '全部楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_DT                             is '电梯';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.D_JCRQ                             is '建成日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYYF.C_ZXCD                             is '装修程度';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCGYYF                                  is '已查明财产工业用房';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FCZH                             is '房产证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FCZL                             is '房产坐落';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.N_DJJG                             is '登记价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FH                             is '房号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FWBM                             is '房屋编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_SZLC                             is '所在楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_QBLC                             is '全部楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_DT                             is '电梯';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.D_JCRQ                             is '建成日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGYYF.C_ZXCD                             is '装修程度';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQTYF                                  is '已查明财产其他用房';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FCZH                             is '房产证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FCZL                             is '房产坐落';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FWXZ                             is '房屋性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.N_JZMJ                             is '建筑面积';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.N_DJJG                             is '登记价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_DH                             is '地号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FH                             is '房号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FWBM                             is '房屋编码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_SZLC                             is '所在楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_QBLC                             is '全部楼层';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_JZCX                             is '建筑朝向';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_DT                             is '电梯';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.D_JCRQ                             is '建成日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTYF.C_ZXCD                             is '装修程度';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCHKQ                                  is '已查明财产航空器';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_GJ                             is '国籍';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_HKQLX                             is '航空器类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_SBH                             is '识别号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_TFD                             is '停放地';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCHKQ.C_DJJG                             is '登记机关';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQTJTYSGJ                                  is '已查明财产其他交通运输工具';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_PP                             is '品牌';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_PZ                             is '牌照';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_JTXX                             is '具体信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQTJTYSGJ.C_DJJG                             is '登记机关';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCYBDC                                  is '已查明财产一般动产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.N_JZ                             is '价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCYBDC.C_WZ                             is '位置';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZFGJJ                                  is '已查明财产住房公积金';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.N_JE                             is '金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZFGJJ.C_ZH                             is '账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCGXHL                                  is '已查明财产股息红利';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.N_JE                             is '金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.C_JTXX                             is '具体信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCGXHL.C_ZH                             is '账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCSYLBX                                  is '已查明财产收益类保险';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.N_JE                             is '金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSYLBX.C_ZH                             is '账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCJRLCCP                                  is '已查明财产金融理财产品';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.N_JE                             is '金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJRLCCP.C_ZH                             is '账号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCSLLMSYQ                                  is '已查明财产森林林木使用权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_ZSH                             is '证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_DJJG                             is '登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_JLDW                             is '计量单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.N_JZ                             is '价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.C_YT                             is '用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCSLLMSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCJTTDSYQ                                  is '已查明财产集体土地所有权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_ZSH                             is '证书号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.N_JZ                             is '价值';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.C_YT                             is '用途';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCJTTDSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCZBYSSS                                  is '已查明财产珠宝玉石首饰';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_MC                             is '名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_JTXX                             is '具体信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_DW                             is '单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_PP                             is '品牌';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCZBYSSS.C_CFWZ                             is '存放位置';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCTKCKQ                                  is '已查明财产探矿采矿权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_KQMC                             is '矿权名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_XKZH                             is '许可证号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_WZ                             is '位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCTKCKQ.C_DJJG                             is '登记机关';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXYCMCCQT                                  is '已查明财产其他';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_ID_HFZXYCMCC                             is '已查明财产ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_CFWZ                             is '存放位置';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_BH                             is '编号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.N_SL                             is '数量';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_DW                             is '单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXYCMCCQT.C_PP                             is '品牌';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCFXF                                  is '查封续封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_ID_HFZXCF                             is '查封ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.N_XHXF                             is '序号_续封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_XFYY                             is '续封原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.D_CDXFRQ                             is '裁定续封日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.D_XFJMRQ                             is '续封届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_XFCCQDXH                             is '续封财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_XFCCQD                             is '续封财产清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFXF.C_XFWSXH                             is '续封文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCFBFJF                                  is '查封部分解封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_ID_HFZXCF                             is '查封ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.N_XHBFJF                             is '序号_部分解封';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_BFJCCFYY                             is '部分解除查封原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_BFJCCFWXH                             is '部分解除查封物序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_BFJCCFW                             is '部分解除查封物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_BFSYCFW                             is '部分剩余查封物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.D_BFJFRQ                             is '部分解封日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCFBFJF.C_BFJFWS                             is '部分解封文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXKYXK                                  is '扣押续扣';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_ID_HFZXKY                             is '扣押ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.N_XHXK                             is '序号_续扣';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.D_CDXKRQ                             is '裁定续扣日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.D_XKJMRQ                             is '续扣届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_XKYY                             is '续扣原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_XKCCQDXH                             is '续扣财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_XKCCQD                             is '续扣财产清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYXK.C_XKWSXH                             is '续扣文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXKYBFJK                                  is '扣押部分解扣';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_ID_HFZXKY                             is '扣押ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.N_XHBFJK                             is '序号_部分解扣';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_BFJCKYYY                             is '部分解除扣押原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_BFJCCFCCXH                             is '部分解除查封财产序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_BFJCKYWP                             is '部分解除扣押物品';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_SYKYW                             is '剩余扣押物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.D_BFJKRQ                             is '部分解扣日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXKYBFJK.C_BFJKWS                             is '部分解扣文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXDJXD                                  is '冻结续冻';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_ID_HFZXDJ                             is '冻结ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.N_XHXD                             is '序号_续冻';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.D_CDXDRQ                             is '裁定续冻日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.D_XDJMRQ                             is '续冻届满日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_XDYY                             is '续冻原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_XDCCQDXH                             is '续冻财产清单序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_XDCCQD                             is '续冻财产清单';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJXD.C_XDWSXH                             is '续冻文书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXDJBFJD                                  is '冻结部分解冻';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_ID_HFZXDJ                             is '冻结ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.N_XHBFJD                             is '序号_部分解冻';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_BFJCDJYY                             is '部分解除冻结原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_BFJCDJCCXH                             is '部分解除冻结财产序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_BFJCDJCC                             is '部分解除冻结财产';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.D_BFJDRQ                             is '部分解冻日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDJBFJD.C_BFJDWS                             is '部分解冻文书';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPGPGBDW                                  is '评估评估标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_ID_HFZXPG                             is '评估ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_BHPGBDW                             is '编号_评估标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_PGBDWMC                             is '评估标的物名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_SYQR                             is '所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_BDLB                             is '标的类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_SFQDPGJG                             is '是否确定评估机构';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_PGJGMC                             is '评估机构名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_XDFS                             is '选定方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_QDJGRQ                             is '确定机构日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_JGYJWCGZRQ                             is '机构预计完成工作日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_PGWTS                             is '评估委托书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_QDJGJBR                             is '确定机构经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_QDJGJBRQ                             is '确定机构经办日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_PGSFWC                             is '评估是否完成';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_PGKSRQ                             is '评估开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_PGJSRQ                             is '评估结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_FYSDPGBGRQ                             is '法院收到评估报告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_FYSDRQ                             is '法院送达日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_PGJG                             is '评估结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.C_PGJGSM                             is '评估结果说明';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_PGJ                             is '评估价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_PGFY                             is '评估费用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_PGJGYXJZRQ                             is '评估结果有效截止日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_PGJGWS                             is '评估结果文书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.N_PGJGJBR                             is '评估结果经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPGPGBDW.D_PGJGJBRQ                             is '评估结果经办日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPMPMBDW                                  is '拍卖拍卖标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_ID_HFZXPM                             is '拍卖ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_BHPMBDW                             is '编号_拍卖标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_BDWMC                             is '标的物名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_KZRQ                             is '控制日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_KZFS                             is '控制方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_BDLB                             is '标的类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_SYQR                             is '所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_XCQK                             is '瑕疵情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_PGJ                             is '评估价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_SCJ                             is '市场价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_PMFY                             is '拍卖费用';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DYCPMGGRQ                             is '第一次拍卖公告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DYCPMRQ                             is '第一次拍卖日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DYCQPJ                             is '第一次起拍价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DYCBLJ                             is '第一次保留价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DYCPMJG                             is '第一次拍卖结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DYCJCJ                             is '第一次成交价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DYCLPYY                             is '第一次流拍原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DECPMGGRQ                             is '第二次拍卖公告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DECPMRQ                             is '第二次拍卖日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DECQPJ                             is '第二次起拍价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DECBLJ                             is '第二次保留价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DECPMJG                             is '第二次拍卖结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DECJCJ                             is '第二次成交价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DECLPYY                             is '第二次流拍原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DSCPMGGRQ                             is '第三次拍卖公告日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_DSCPMRQ                             is '第三次拍卖日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DSCQPJ                             is '第三次起拍价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DSCBLJ                             is '第三次保留价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DSCPMJG                             is '第三次拍卖结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_DSCJCJ                             is '第三次成交价';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_DSCLPYY                             is '第三次流拍原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_MSR                             is '买受人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_WKJNQX                             is '尾款交纳期限';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_PMCJQRS                             is '拍卖成交确认书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.N_PMDJJBR                             is '拍卖登记经办人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDW.D_PMDJJBRQ                             is '拍卖登记经办日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPMPMBDWYXGMQK                                  is '拍卖拍卖标的物优先购买情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.C_ID_HFZXPMPMBDW                             is '拍卖标的物ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.N_XHYXGMQK                             is '序号_优先购买情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.C_YXGMRXM                             is '优先购买人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPMPMBDWYXGMQK.C_YXQKMS                             is '优先情况描述';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXBMBMMX                                  is '变卖变卖明细';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_ID_HFZXBM                             is '变卖ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_BHBMBDW                             is '编号_变卖标的物';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_BDWMC                             is '标的物名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.D_KZRQ                             is '控制日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_KZFS                             is '控制方式';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_BDLB                             is '标的类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_SYQR                             is '所有权人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_XCQK                             is '瑕疵情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.D_BMKSRQ                             is '变卖开始日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.D_BMJSRQ                             is '变卖结束日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_CKJG                             is '参考价格';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_BMZE                             is '变卖总额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_BMJG                             is '变卖结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_MSR                             is '买受人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_MSRZJZL                             is '买受人证件种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.C_MSRZJHM                             is '买受人证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_BMJGWSXH                             is '变卖结果文书序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXBMBMMX.N_CJQRSXH                             is '成交确认书序号';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXJZSXBZXR                                  is '纠正失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ID_HFZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_LSHJZSXBZXR                             is '流水号_纠正失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_AH                             is '案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.N_SXBZXR                             is '失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_BZXRMC                             is '被执行人名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_BZXRLX                             is '被执行人类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_XB                             is '性别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.N_NL                             is '年龄';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZJLX                             is '证件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZJHM                             is '证件号码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_JGFZRXM                             is '机构负责人姓名';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_FLWSQRDYW                             is '法律文书确认的义务';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_BZXRLXQK                             is '被执行人履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_YLXQK                             is '已履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_WLXQK                             is '未履行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.D_LARQ                             is '立案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZXAYMC                             is '执行案由名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZXFYMC                             is '执行法院名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZXYJWH                             is '执行依据文号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.D_FBSJ                             is '发布时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_SXBZXRXWQK                             is '失信被执行人行为情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.D_JZSQSJ                             is '纠正申请时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_JZJDS                             is '纠正决定书';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_ZXYJZZDW                             is '执行依据制作单位';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_SPYJ                             is '审批意见';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXJZSXBZXR.C_JGFZRZJHM                             is '机构负责人证件号码';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCXSXBZXR                                  is '撤销失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_ID_HFZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_LSHCXSXBZXR                             is '流水号_撤销失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.D_CXSQSJ                             is '撤销申请时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_CXYY                             is '撤销原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCXSXBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXPBSXBZXR                                  is '屏蔽失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_ID_HFZXSXBZXR                             is '失信被执行人ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_LSHPBSXBZXR                             is '流水号_屏蔽失信被执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.D_PBSQSJ                             is '屏蔽申请时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_PBYY                             is '屏蔽原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_SPJL                             is '审批结论';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.N_SPR                             is '审批人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.D_SPSJ                             is '审批时间';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXPBSXBZXR.C_SPYJ                             is '审批意见';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXKFFMX                                  is '执行款发放明细';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_ID_HFZXZXKFF                             is '执行款发放ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.N_JSDSR                             is '接受当事人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_JSR                             is '接受人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.N_FFJE                             is '发放金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_FFKXLB                             is '发放款项类别';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_JSRKHYH                             is '接受人开户银行';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_JSRKHMC                             is '接受人开户名称';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.C_JSRKHZH                             is '接受人开户账号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXKFFMX.D_ZFRQ                             is '支付日期';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXDXWZXQK                                  is '对行为执行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.C_ID_HFZXDXWDZX                             is '对行为的执行ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.N_XHDXWDZXQK                             is '序号_对行为的执行情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.D_QZZXRQ                             is '强制执行日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.C_CLJG                             is '处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXDXWZXQK.C_ZXQK                             is '执行情况';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXCYFPMX                                  is '参与分配明细';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_ID_HFZXCYFPXX                             is '参与分配信息ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_MXXH                             is '明细序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_SQZXR                             is '申请执行人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_SQSNR                             is '申请书内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_CYFPYJ                             is '参与分配依据';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_SQFPJE                             is '申请分配金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_JYYXQ                             is '具有优先权';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_YXQNR                             is '优先权内容';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.D_YXQSXRQ                             is '优先权生效日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.D_FPRQ                             is '分配日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_FPJE                             is '分配金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.N_TCYYXH                             is '提出异议序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_YYCLJG                             is '异议处理结果';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXCYFPMX.C_SQCYFPAWR                             is '申请参与分配案外人';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.C_ID_HFZXZXZTXX                             is '执行主体信息ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXZTXXZJXX.C_ZJHM                             is '证件号码';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZJJZZ                                  is '追究拒执罪';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_XH                             is '序号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_BZJR                             is '被追究人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_SSXZ                             is '诉讼性质';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_SFJYJZXF                             is '是否给予拒执刑罚';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_BXFYY                             is '不刑罚原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_GSJG                             is '公诉机关';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JBFY                             is '经办法院';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_XSAJAH                             is '刑事案件案号';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.D_LARQ                             is '立案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.D_JARQ                             is '结案日期';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_ZSR                             is '自诉人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_ZSLY                             is '自诉理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JZPCQK                             is '拒执判处情况';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JZXGWZLY                             is '拒执宣告无罪理由';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JZBFXSZRYY                             is '拒执不负刑事责任原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JZZZSLYY                             is '拒执终止审理原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_JZZXZL                             is '拒执主刑种类';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_XQN                             is '刑期年';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_XQY                             is '刑期月';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_PCHX                             is '判处缓刑';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_HXN                             is '缓刑年';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_HXY                             is '缓刑月';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.C_FJLX                             is '罚金类型';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZJJZZ.N_FJSE                             is '罚金数额';

set search_path to DB_HFZX;
commit;

comment on table  T_HFZXZXJZXX                                  is '执行救助信息';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.C_ID                             is '主键ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.C_ID_HFZX                             is '案件ID';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.N_AJBS                             is '案件标识';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.N_XH                             is '序号_执行救助';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.C_SJZR                             is '受救助人';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.N_JZJE                             is '救助金额';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.C_JZYY                             is '救助原因';
set search_path to DB_HFZX;
commit;

comment on column T_HFZXZXJZXX.C_JZJLY                             is '救助金来源';


-- auto create by SMD

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZX                                  is '财产保全执行案件主表';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ID                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AH                             is '案号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AJZLX                             is '案件子类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AJLY                             is '案件来源';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXHZSY                             is '执行回转事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_HFZXSY                             is '恢复执行事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXBDNR                             is '执行标的内容';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_YZXBDXW                             is '应执行标的行为';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_YZXBDW                             is '应执行标的物';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_CCXQY                             is '财产性权益';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_YZXBDJE                             is '应执行标的金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_YGSQZXF                             is '预估申请执行费';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_LAAY                             is '立案案由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_LAAYMS                             is '立案案由描述';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_LABMBS                             is '立案部门标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SADJR                             is '收案登记人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_SARQ                             is '收案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SCR                             is '审查人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_SCRQ                             is '审查日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SCYJ                             is '审查意见';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SPR                             is '审批人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_LASPRQ                             is '立案审批日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SPYJ                             is '审批意见';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_LARQ                             is '立案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_AJXH                             is '案件序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_AJLXDM                             is '案件类型代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BQAH                             is '保全案号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FYDM                             is '法院代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BQCDLX                             is '保全裁定类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQZBHZXCYLXLXQQ                             is '申请中包含执行迟延履行利息请求';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SQZYMQCYLXLXSE                             is '申请中已明确迟延履行利息数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQZBHZXCYLXJQQ                             is '申请中包含执行迟延履行金请求';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SQZYMQCYLXJSE                             is '申请中已明确迟延履行金数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SCZXAH                             is '首次执行案号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_CFAJQX                             is '拆分案件情形';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FQLXZQS                             is '分期履行总期数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_YLXQS                             is '已履行期数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQGFQSNY                             is '申请给付起始年月';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQGFJZNY                             is '申请给付截止年月';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQZXNR                             is '申请执行内容';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_WCNR                             is '未成年人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_DYSJ                             is '地域涉及';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_AJSJ                             is '案件涉及';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_DA                             is '大案';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_YA                             is '要案';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_XLXAJ                             is '新类型案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_YNAJ                             is '疑难案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_JTAJ                             is '集团案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_MDJHAJ                             is '矛盾激化案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BYZDAJ                             is '本院重点案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXYJLX                             is '执行依据类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZCZXYJDW                             is '作出执行依据单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXYJWSWH                             is '执行依据文书文号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXYJZW                             is '执行依据主文';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_ZXYJWSSXRQ                             is '执行依据文书生效日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_ZXYJWSLXZHQX                             is '执行依据文书履行最后期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_CBBMBS                             is '承办部门标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_CBR                             is '承办人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SPZ                             is '审判长';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_HYTCY                             is '合议庭成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SJY                             is '书记员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_FARQ                             is '分案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FDLAQX                             is '法定立案期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SJLATS                             is '实际立案天数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_LACQTS                             is '立案超期天数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FDZXQX                             is '法定执行期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SJZXTS                             is '实际执行天数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZHZX                             is '暂缓执行';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_FQZX                             is '分期执行';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_JAAY                             is '结案案由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_JAFS                             is '结案方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_JARQ                             is '结案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZXWBSY                             is '执行完毕事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BYSLYY                             is '不予受理原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BYZXLY                             is '不予执行理由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZJBCZXSY                             is '终结本次执行事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_ZJZXSY                             is '终结执行事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_XASY                             is '销案事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_JABDJE                             is '结案标的金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SJDWJE                             is '实际到位金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SQRFQBDJE                             is '申请人放弃标的金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_SWZXBDJE                             is '尚未执行标的金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_QZCYLXJ                             is '其中迟延履行金';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_QZCYLXLX                             is '其中迟延履行利息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_TDWDWQK                             is '特定物到位情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_XWLXQK                             is '行为履行情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_CCXQYZXQK                             is '财产性权益执行情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_JAWS                             is '结案文书';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SJBZ                             is '实结标志';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_SQRSQZJBCZXCX                             is '申请人申请终结本次执行程序';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_LJR                             is '立卷人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_TJR                             is '提交人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_TJRQ                             is '提交日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_JSR                             is '接收人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.D_JSRQ                             is '接收日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_MLH                             is '目录号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_JZH                             is '卷宗号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_ZJCS                             is '正卷册数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FJCS                             is '副卷册数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_ZJYS                             is '正卷页数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_FJYS                             is '副卷页数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_QTJCS                             is '其他卷册数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.N_QTJYS                             is '其他卷页数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BJQK                             is '并卷情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_MJ                             is '密级';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_BGQX                             is '保管期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_GDH                             is '归档号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZX.C_QZH                             is '全宗号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYZXAJXX                                  is '原执行案件信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.N_CY                             is '成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYZC.C_JS                             is '角色';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_LX                             is '类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.C_YY                             is '原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCC                                  is '已查明财产';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.N_XHCMCC                             is '序号_查明财产';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.N_BZXR                             is '被执行人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_ZXXSXH                             is '执行线索序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CMFS                             is '查明方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.D_CMRQ                             is '查明日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCLX                             is '财产类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCMC                             is '财产名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCZT                             is '财产状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCQDFJ                             is '财产清单附件';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCZBJG                             is '财产甄别结果';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.D_CCZBRQ                             is '财产甄别日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCBKZXYY                             is '财产不可执行原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCC.C_CCYJFL                             is '财产一级分类';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXCF                                  is '查封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.N_XHCF                             is '序号_查封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFLX                             is '查封类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_TQFS                             is '提请方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.N_CFWSYR                             is '查封物所有人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFQDXH                             is '查封清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFQD                             is '查封清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.D_CFSXRQ                             is '查封生效日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.D_CFJMRQ                             is '查封届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFDD                             is '查封地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFFF                             is '查封方法';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_BGR                             is '保管人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_BGDD                             is '保管地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_YWLXQK                             is '义务履行情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_CFWSXH                             is '查封文书序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_JCCFYY                             is '解除查封原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.D_JFRQ                             is '解封日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCF.C_JCCFWSXH                             is '解除查封文书序号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXKY                                  is '扣押';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.N_XHKY                             is '序号_扣押';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_KYLX                             is '扣押类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_TQFS                             is '提请方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.N_CCSYQR                             is '财产所有权人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.D_KYSXRQ                             is '扣押生效日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.D_KYJMRQ                             is '扣押届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_KYDD                             is '扣押地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_BGR                             is '保管人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_BGDD                             is '保管地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_KYQDXH                             is '扣押清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_KYQD                             is '扣押清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_YWLXQK                             is '义务履行情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_KYWSXH                             is '扣押文书序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_JCKYYY                             is '解除扣押原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.D_JKRQ                             is '解扣日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKY.C_JCKYWS                             is '解除扣押文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXDJ                                  is '冻结';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.N_XHDJ                             is '序号_冻结';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_DJLX                             is '冻结类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_TQFS                             is '提请方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.N_CCSYQR                             is '财产所有权人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_DJQDXH                             is '冻结清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_DJQD                             is '冻结清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.N_NZXBDE                             is '拟执行标的额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.D_DJSXRQ                             is '冻结生效日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.D_DJJMRQ                             is '冻结届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.N_SJDJJE                             is '实际冻结金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_YWLXQK                             is '义务履行情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_DJWSXH                             is '冻结文书序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_JCDJYY                             is '解除冻结原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.D_JDRQ                             is '解冻日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJ.C_JCDJWS                             is '解除冻结文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXLCJD                                  is '执行流程节点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_CLR                             is '处理人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.N_QX                             is '期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXZTXX                                  is '执行主体信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.N_XH                             is '序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_LY                             is '来源';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DSR                             is '当事人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_LX                             is '类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DZ                             is '地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DLR                             is '代理人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_JS                             is '角色';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_XB                             is '性别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.N_NL                             is '年龄';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_GJ                             is '国籍';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_MZ                             is '民族';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SF                             is '身份';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_ZY                             is '职业';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_ZW                             is '职务';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_JL                             is '简历';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXWQ                                  is '执行外勤';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.N_XHZXWQ                             is '序号_执行外勤';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_ZXYWLB                             is '执行业务类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_SPMC                             is '视频名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_LMTDZ                             is '流媒体地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.D_ZXRQ                             is '执行日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_ZXDD                             is '执行地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.N_SZ                             is '时长';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.N_SPWJDX                             is '视频文件大小';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_SPJJ                             is '视频简介';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_ZZR                             is '制作人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.C_DJR                             is '登记人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWQ.D_DJRQ                             is '登记日期';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXRZ                                  is '执行日志';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.D_SJ                             is '时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.C_SX                             is '事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXRZ.C_CLR                             is '处理人';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXDBSX                                  is '执行督办事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_DBBH                             is '督办编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_DBZT                             is '督办主题';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.D_DBQX                             is '督办期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_SXLX                             is '事项类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_ZXDBXFJL                             is '执行督办下发记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.D_XZSJ                             is '下载时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_JDYWXH                             is '节点业务序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBSX.C_YWMS                             is '业务描述';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXDBXFJL                                  is '执行督办下发记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_DBBH                             is '督办编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.N_XH                             is '序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.N_FQFY                             is '发起法院';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_DBYQ                             is '督办要求';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.D_XFSJ                             is '下发时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.D_JSDBXXSJ                             is '接收督办信息时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_JSDBXXRXM                             is '接收督办信息人姓名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_WSXX                             is '文书信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXDBXFJL.C_JDYWXH                             is '节点业务序号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXWTXX                                  is '执行委托信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTID                             is '委托ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.N_STFY                             is '受托法院';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_SFSNWT                             is '是否省内委托';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTCJRXM                             is '委托创建人姓名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.D_WTSJ                             is '委托时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_CBRLXFS                             is '承办人联系方式';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.D_BLQX                             is '办理期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTCKLCCPSX                             is '委托存款理财产品事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTBDCXYDJDDCSX                             is '委托不动产需要登记的动产事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTGQJQTTZQYSX                             is '委托股权及其他投资权益事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTSDFLWSSX                             is '委托送达法律文书事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTDCSX                             is '委托调查事项';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTXQ                             is '委托详情';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTSQWS                             is '委托申请文书';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXWTXX.C_WTSXCLZT                             is '委托事项处理状态';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXWTSL                                  is '委托受理';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_WTID                             is '委托ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_WTBH                             is '委托编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.D_SLSJ                             is '受理时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_SLRXM                             is '受理人姓名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTSL.C_SLRLXFS                             is '受理人联系方式';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXWTBL                                  is '委托办理';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_WTID                             is '委托ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.D_BJSJ                             is '办结时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_BJSM                             is '办结说明';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_PTTHYY                             is '平台退回原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_PTWTSXZT                             is '平台委托事项状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBL.C_LCXTWTBLWS                             is '流程系统委托办理文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXWTBLQR                                  is '委托办理确认';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.C_WTID                             is '委托ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.N_QRXH                             is '确认序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.C_QRJG                             is '确认结果';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.C_BLJGTHYY                             is '办理结果退回原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXWTBLQR.D_QRRQ                             is '确认日期';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.N_XH                             is '序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_ID_CCBQZX                             is '案件ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZLJL                                  is '增量记录';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZLJL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZLJL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZLJL.N_ZT                             is '修改状态';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCXJ                                  is '已查明财产现金';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCXJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCXJ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCXJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCXJ.N_SE                             is '数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCXJ.C_BZ                             is '币种';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCYHCK                                  is '已查明财产银行存款';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_YHMC                             is '银行名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_KHZH                             is '开户账号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_ZHLB                             is '账户类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_ZHZT                             is '账户状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_KHWD                             is '开户网点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_KHWDDM                             is '开户网点代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.D_KHSJ                             is '开户时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.D_XHSJ                             is '销户时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_BZ                             is '币种';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.N_SE                             is '数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_SFZT                             is '是否透支';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.N_KYZCSE                             is '可用资产数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_GBZJZH                             is '关联资金账户';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_TXDZ                             is '通讯地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_YZBM                             is '邮政编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYHCK.C_LXDH                             is '联系电话';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCHLWJRXX                                  is '已查明财产互联网金融信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZCRMC                             is '注册人名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZCRZJLX                             is '注册人证件类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZCRZJHM                             is '注册人证件号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZCRSJHM                             is '注册人手机号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZH                             is '账户';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZHLB                             is '账户类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_ZHZT                             is '账户状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.D_ZHZCSJ                             is '账户注册时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_JJBZ                             is '计价币种';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.N_ZCSE                             is '资产数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.N_KYZCSE                             is '可用资产数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_TXDZ                             is '通讯地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_YZBM                             is '邮政编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHLWJRXX.C_LXDH                             is '联系电话';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQTZJ                                  is '已查明财产其他资金';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_ZJMC                             is '资金名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.N_JE                             is '金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_BZ                             is '币种';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_KHZH                             is '开户账号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_KHYH                             is '开户银行';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_KHMC                             is '开户名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.D_CXSJ                             is '查询时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_ZHZT                             is '账户状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_DWMC                             is '单位名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTZJ.C_DWZH                             is '单位账号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCCL                                  is '已查明财产车辆';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_ZCDJJG                             is '注册登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_JDCDJBH                             is '机动车登记编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_HPZL                             is '号牌种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CLPP                             is '车辆品牌';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CLLX                             is '车辆类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CLSBH                             is '车辆识别号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_FDJH                             is '发动机号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CLXH                             is '车辆型号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.D_ZCDJRQ                             is '注册登记日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.D_CLCCRQ                             is '车辆出厂日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CLSYXZ                             is '车辆使用性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CSYS                             is '车身颜色';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_JDCZT                             is '机动车状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_SFNS                             is '是否年审';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_NK                             is '年款';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CX                             is '车系';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_PL                             is '排量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.N_XSLC                             is '行驶里程';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_CK                             is '车况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCL.C_BXQK                             is '保险情况';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZZYF                                  is '已查明财产住宅用房';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FCZH                             is '房产证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_SZXQ                             is '所在小区';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FCZL                             is '房产坐落';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FWXZ                             is '房屋性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_JZMJ                             is '建筑面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_DJJG                             is '登记价格';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FH                             is '房号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FWBM                             is '房屋编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_SZLC                             is '所在楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_QBLC                             is '全部楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_S                             is '室';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_T                             is '厅';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.N_W                             is '卫';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_JZCX                             is '建筑朝向';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_DT                             is '电梯';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.D_JCRQ                             is '建成日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZZYF.C_ZXCD                             is '装修程度';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCJSYDSYQ                                  is '已查明财产建设用地使用权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_CQZH                             is '产权证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_TDMJ                             is '土地面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_DJJG                             is '登记价格';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_SYQLX                             is '使用权类型 ';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_YT                             is '用途';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_QLR                             is '权利人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJSYDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCGP                                  is '已查明财产股票';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_CYZQMC                             is '持有证券名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_KHJG                             is '开户机构';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.D_KHSJ                             is '开户时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZQZHH                             is '证券帐户号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZHLB                             is '帐户类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.N_ZHZJJE                             is '帐户资金金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZHZT                             is '帐户状态';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZQDM                             is '证券代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZQJC                             is '证券简称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.N_CGSL                             is '持股数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZQXZ                             is '证券性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_ZHMC                             is '账户名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.D_FKJGSJ                             is '反馈结果时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_DQTGDY                             is '当前托管单元';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_JSCYRMC                             is '结算参与人名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_GFXZ                             is '股份性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_LTLX                             is '流通类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.C_QYLB                             is '权益类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGP.N_KJYSL                             is '可交易数量';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCJJ                                  is '已查明财产基金';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.C_JJMC                             is '基金名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.N_JJSL                             is '基金数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.C_JJXSDW                             is '基金销售单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJJ.C_JJBH                             is '基金编号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZQ                                  is '已查明财产债券';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.C_ZQMC                             is '债券名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.N_ZQMZ                             is '债券面值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.C_ZQFXDW                             is '债券发行单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQ.C_ZQBH                             is '债券编号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQTCCXQY                                  is '已查明财产其他财产性权益';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.C_QLMC                             is '权利名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.C_BH                             is '编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.C_QLDJDW                             is '权利登记单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTCCXQY.N_DQGZ                             is '当前估值';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCYC                                  is '已查明财产渔船';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_YCBM                             is '渔船编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CM                             is '船名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_YCZL                             is '渔船种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_ZCCC                             is '渔船船长';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_YCXK                             is '渔船形宽';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_YCXS                             is '渔船形深';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_ZDW                             is '总吨位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_JDW                             is '净吨位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.N_ZJZGL                             is '主机总功率';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CTCZ                             is '船体材质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.D_JZWGRQ                             is '建造完工日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CBHHSBM                             is '船舶呼号识别码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CBSYRMC                             is '船舶所有人名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CBSYRDZ                             is '船舶所有人地址';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_SYRZJHM                             is '所有人证件号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.C_CJG                             is '船籍港';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYC.D_SYQDJSJ                             is '所有权登记审批时间';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCCB                                  is '已查明财产船舶';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CBSBH                             is '船舶识别号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CM                             is '船名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CBCYM                             is '船舶曾用名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_IMOBH                             is 'IMO编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CJG                             is '船籍港';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_YCJG                             is '原船籍港';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CBZL                             is '船舶种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_CBHH                             is '船舶呼号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.C_ZCDD                             is '造船地点';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.D_JCRQ                             is '建成日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_CBC                             is '船舶长';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_CBK                             is '船舶宽';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_CBS                             is '船舶深';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_ZDW                             is '总吨位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_JDW                             is '净吨位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_ZZDW                             is '载重吨位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCB.N_GL                             is '功率';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCGQ                                  is '已查明财产股权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ZCH                             is '注册号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_CGGSMC                             is '持股公司名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ZS                             is '住所';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ZCZB                             is '注册资本';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_GSLX                             is '公司类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_JYFW                             is '经营范围';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.D_CLSJ                             is '成立时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_YYQX                             is '营业期限';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.N_CZE                             is '出资额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.N_CZBL                             is '出资比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ZZJGDM                             is '组织机构代码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_ZW                             is '职务';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGQ.C_NJQK                             is '年检情况';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCSW                                  is '已查明财产税务';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.C_TSZH                             is '退税账号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.N_TSJE                             is '退税金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.D_TSSJ                             is '退税时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.C_NSZH                             is '纳税账号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.N_NSJE                             is '纳税金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSW.N_DKJE                             is '抵扣金额';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZQXX                                  is '已查明财产债权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.N_SE                             is '数额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZQXX.C_ZWR                             is '债务人';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCCMJQSB                                  is '已查明财产查明机器设备';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.N_SBZJJZ                             is '设备折旧价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMJQSB.C_DW                             is '单位';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCCMCPYCL                                  is '已查明财产查明产品原材料';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.C_ZL                             is '种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.C_PM                             is '品名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCCMCPYCL.C_JLDW                             is '计量单位';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZSCQ                                  is '已查明财产知识产权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_ZZLX                             is '证照类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_ZZHM                             is '证照号码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.C_JLDW                             is '计量单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZSCQ.N_SL                             is '数量';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCGWZH                                  is '已查明财产古玩字画';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.C_ZL                             is '种类';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.C_PM                             is '品名';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGWZH.C_JLDW                             is '计量单位';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCTDCBJYQ                                  is '已查明财产土地承包经营权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_ZSH                             is '证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTDCBJYQ.C_DJJG                             is '登记机关';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZJDSYQ                                  is '已查明财产宅基地使用权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_ZSH                             is '证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZJDSYQ.C_DJJG                             is '登记机关';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCHYSYQ                                  is '已查明财产海域使用权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_DJJG                             is '登记机构';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_JLDW                             is '计量单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.N_JZ                             is '价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_YHLXA                             is '用海类型A';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_YHLXB                             is '用海类型B';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_HDMC                             is '海岛名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_HDWZ                             is '海岛位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.C_HDYT                             is '海岛用途';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.D_SYQQSSJ                             is '使用权起始时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHYSYQ.D_SYQJSSJ                             is '使用权结束时间';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQTTDSYQ                                  is '已查明财产其他土地使用权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_BDCQZSH                             is '不动产权证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_DJJG                             is '登记机构';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_JZ                             is '价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_YT                             is '用途';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_QLXZ                             is '权利性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_QSLB                             is '权属类别';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_GTZYDZHQSSM                             is '国土资源地址或权属说明';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_QLR                             is '权利人';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_SYQLX                             is '使用权类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_SYQMJ                             is '使用权面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_DYMJ                             is '独用面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.N_FTMJ                             is '分摊面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.D_ZZRQ                             is '终止日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTTDSYQ.C_SYQRDJKXB                             is '使用权人登记卡续表';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCSYYF                                  is '已查明财产商业用房';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FCZH                             is '房产证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.N_SZXQ                             is '所在小区';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FCZL                             is '房产坐落';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.N_DJJG                             is '登记价格';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FH                             is '房号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FWBM                             is '房屋编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_SZLC                             is '所在楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_QBLC                             is '全部楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_DT                             is '电梯';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.D_JCRQ                             is '建成日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYYF.C_ZXCD                             is '装修程度';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCGYYF                                  is '已查明财产工业用房';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FCZH                             is '房产证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FCZL                             is '房产坐落';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FWXZ                             is '房屋性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.N_JZMJ                             is '建筑面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.N_DJJG                             is '登记价格';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FH                             is '房号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FWBM                             is '房屋编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_SZLC                             is '所在楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_QBLC                             is '全部楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_JZCX                             is '建筑朝向';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_DT                             is '电梯';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.D_JCRQ                             is '建成日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGYYF.C_ZXCD                             is '装修程度';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQTYF                                  is '已查明财产其他用房';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FCZH                             is '房产证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FCZL                             is '房产坐落';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_GHYTHFCLX                             is '规划用途或房产类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FWXZ                             is '房屋性质';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.N_JZMJ                             is '建筑面积';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.N_DJJG                             is '登记价格';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_DH                             is '地号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FH                             is '房号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FWBM                             is '房屋编码';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_FCDJJG                             is '房产登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_SZLC                             is '所在楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_QBLC                             is '全部楼层';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_JZCX                             is '建筑朝向';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_DT                             is '电梯';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.D_JCRQ                             is '建成日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTYF.C_ZXCD                             is '装修程度';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCHKQ                                  is '已查明财产航空器';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_GJ                             is '国籍';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_HKQLX                             is '航空器类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_SBH                             is '识别号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_TFD                             is '停放地';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCHKQ.C_DJJG                             is '登记机关';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQTJTYSGJ                                  is '已查明财产其他交通运输工具';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_PP                             is '品牌';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_PZ                             is '牌照';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_JTXX                             is '具体信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQTJTYSGJ.C_DJJG                             is '登记机关';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCYBDC                                  is '已查明财产一般动产';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.N_JZ                             is '价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCYBDC.C_WZ                             is '位置';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZFGJJ                                  is '已查明财产住房公积金';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.N_JE                             is '金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZFGJJ.C_ZH                             is '账号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCGXHL                                  is '已查明财产股息红利';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.N_JE                             is '金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.C_JTXX                             is '具体信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCGXHL.C_ZH                             is '账号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCSYLBX                                  is '已查明财产收益类保险';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.N_JE                             is '金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSYLBX.C_ZH                             is '账号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCJRLCCP                                  is '已查明财产金融理财产品';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.N_JE                             is '金额';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJRLCCP.C_ZH                             is '账号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCSLLMSYQ                                  is '已查明财产森林林木使用权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_ZSH                             is '证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_DJJG                             is '登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_JLDW                             is '计量单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.N_JZ                             is '价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.C_YT                             is '用途';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCSLLMSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCJTTDSYQ                                  is '已查明财产集体土地所有权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_ZSH                             is '证书号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_DJJG                             is '登记机关';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_JLDW                             is '计量单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.N_JZ                             is '价值';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_GYQK                             is '共有情况';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_FEBL                             is '份额比例';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.D_DJSJ                             is '登记时间';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.C_YT                             is '用途';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.D_SYCBQXQ                             is '使用_承包期限起';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCJTTDSYQ.D_SYCBQXZ                             is '使用_承包期限止';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCZBYSSS                                  is '已查明财产珠宝玉石首饰';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_MC                             is '名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_JTXX                             is '具体信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_DW                             is '单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_PP                             is '品牌';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCZBYSSS.C_CFWZ                             is '存放位置';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCTKCKQ                                  is '已查明财产探矿采矿权';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_KQMC                             is '矿权名称';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_XKZH                             is '许可证号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_WZ                             is '位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCTKCKQ.C_DJJG                             is '登记机关';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXYCMCCQT                                  is '已查明财产其他';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_ID_CCBQZXYCMCC                             is '已查明财产ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_CFWZ                             is '存放位置';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_BH                             is '编号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.N_SL                             is '数量';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_DW                             is '单位';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXYCMCCQT.C_PP                             is '品牌';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXCFXF                                  is '查封续封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_ID_CCBQZXCF                             is '查封ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.N_XHXF                             is '序号_续封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_XFYY                             is '续封原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.D_CDXFRQ                             is '裁定续封日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.D_XFJMRQ                             is '续封届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_XFCCQDXH                             is '续封财产清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_XFCCQD                             is '续封财产清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFXF.C_XFWSXH                             is '续封文书序号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXCFBFJF                                  is '查封部分解封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_ID_CCBQZXCF                             is '查封ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.N_XHBFJF                             is '序号_部分解封';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_BFJCCFYY                             is '部分解除查封原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_BFJCCFWXH                             is '部分解除查封物序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_BFJCCFW                             is '部分解除查封物';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_BFSYCFW                             is '部分剩余查封物';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.D_BFJFRQ                             is '部分解封日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXCFBFJF.C_BFJFWS                             is '部分解封文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXKYXK                                  is '扣押续扣';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_ID_CCBQZXKY                             is '扣押ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.N_XHXK                             is '序号_续扣';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.D_CDXKRQ                             is '裁定续扣日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.D_XKJMRQ                             is '续扣届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_XKYY                             is '续扣原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_XKCCQDXH                             is '续扣财产清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_XKCCQD                             is '续扣财产清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYXK.C_XKWSXH                             is '续扣文书序号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXKYBFJK                                  is '扣押部分解扣';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_ID_CCBQZXKY                             is '扣押ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.N_XHBFJK                             is '序号_部分解扣';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_BFJCKYYY                             is '部分解除扣押原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_BFJCCFCCXH                             is '部分解除查封财产序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_BFJCKYWP                             is '部分解除扣押物品';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_SYKYW                             is '剩余扣押物';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.D_BFJKRQ                             is '部分解扣日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXKYBFJK.C_BFJKWS                             is '部分解扣文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXDJXD                                  is '冻结续冻';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_ID_CCBQZXDJ                             is '冻结ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.N_XHXD                             is '序号_续冻';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.D_CDXDRQ                             is '裁定续冻日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.D_XDJMRQ                             is '续冻届满日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_XDYY                             is '续冻原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_XDCCQDXH                             is '续冻财产清单序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_XDCCQD                             is '续冻财产清单';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJXD.C_XDWSXH                             is '续冻文书序号';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXDJBFJD                                  is '冻结部分解冻';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_ID_CCBQZXDJ                             is '冻结ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.N_XHBFJD                             is '序号_部分解冻';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_BFJCDJYY                             is '部分解除冻结原因';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_BFJCDJCCXH                             is '部分解除冻结财产序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_BFJCDJCC                             is '部分解除冻结财产';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.D_BFJDRQ                             is '部分解冻日期';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXDJBFJD.C_BFJDWS                             is '部分解冻文书';

set search_path to DB_CCBQZX;
commit;

comment on table  T_CCBQZXZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.C_ID_CCBQZXZXZTXX                             is '执行主体信息ID';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_CCBQZX;
commit;

comment on column T_CCBQZXZXZTXXZJXX.C_ZJHM                             is '证件号码';


-- auto create by SMD

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYY                                  is '执行异议案件主表';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_ID                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_AH                             is '案号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_AJZLX                             is '案件子类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_AJLY                             is '案件来源';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_LAAY                             is '立案案由';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_LAAYMS                             is '立案案由描述';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_LABMBS                             is '立案部门标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SADJR                             is '收案登记人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_SARQ                             is '收案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SCR                             is '审查人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_SCRQ                             is '审查日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_SCYJ                             is '审查意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SPR                             is '审批人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_LASPRQ                             is '立案审批日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_SPYJ                             is '审批意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_LARQ                             is '立案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_ZXYYSX                             is '执行异议事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_FYSX                             is '复议事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_JDSX                             is '监督事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_XDSX                             is '协调事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_QTSX                             is '其他事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_AJXH                             is '案件序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_AJLXDM                             is '案件类型代码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_FYDM                             is '法院代码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_CBBMBS                             is '承办部门标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_CBR                             is '承办人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SPZ                             is '审判长';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_HYTCY                             is '合议庭成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SJY                             is '书记员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_FARQ                             is '分案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_FDLAQX                             is '法定立案期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SJLATS                             is '实际立案天数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_LACQTS                             is '立案超期天数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_FDZXQX                             is '法定执行期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_SJZXTS                             is '实际执行天数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_ZHZX                             is '暂缓执行';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_JARQ                             is '结案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_JAAY                             is '结案案由';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_JAFS                             is '结案方式';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_JAWS                             is '结案文书';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_JAWSSDRQ                             is '结案文书送达日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_JAWSSDFS                             is '结案文书送达方式';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_LJR                             is '立卷人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_TJR                             is '提交人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_TJRQ                             is '提交日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_JSR                             is '接收人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.D_JSRQ                             is '接收日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_MLH                             is '目录号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_JZH                             is '卷宗号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_ZJCS                             is '正卷册数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_FJCS                             is '副卷册数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_ZJYS                             is '正卷页数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_FJYS                             is '副卷页数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_QTJCS                             is '其他卷册数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.N_QTJYS                             is '其他卷页数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_BJQK                             is '并卷情况';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_MJ                             is '密级';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_BGQX                             is '保管期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_GDH                             is '归档号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYY.C_QZH                             is '全宗号';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYYZXAJXX                                  is '原执行案件信息';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.N_CY                             is '成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYZC.C_JS                             is '角色';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_LX                             is '类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.C_YY                             is '原因';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYFTSYJL                                  is '法庭使用记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_TC                             is '庭次';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_DD                             is '地点';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.N_BL                             is '笔录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYSDJL                                  is '送达记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_WS                             is '文书';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_SDFS                             is '送达方式';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.N_STFY                             is '受托法院';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.N_SDR                             is '送达人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.N_SSDR                             is '受送达人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_QSR                             is '签收人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYPBJL                                  is '批办记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_PBJG                             is '批办机关';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_PBLD                             is '批办领导';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_PBWH                             is '批办文号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_BGJG                             is '报告结果';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.N_PBSX                             is '批办时限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYSFJY                                  is '司法建议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.C_JYDX                             is '建议对象';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.N_JYS                             is '建议书';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYAJPY                                  is '案件评议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_PYLX                             is '评议类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYSWHTL                                  is '审委会讨论';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXFY                                  is '执行复议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.N_XHZXFY                             is '序号_执行复议';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_FYLX                             is '复议类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.D_SQRQ                             is '申请日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_FYNR                             is '复议内容';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.N_FYSQS                             is '复议申请书';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.N_FYFY                             is '复议法院';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.D_YSFYFYRQ                             is '移送复议法院日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_FYJG                             is '复议结果';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.N_FYJDS                             is '复议决定书';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.D_FYDFRQ                             is '复议答复日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXFY.C_DFYDHXCL                             is '对复议的后续处理';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXLCJD                                  is '执行流程节点';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_CLR                             is '处理人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.N_QX                             is '期限';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXZTXX                                  is '执行主体信息';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.N_XH                             is '序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_LY                             is '来源';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DSR                             is '当事人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_LX                             is '类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_MC                             is '名称';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DZ                             is '地址';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DLR                             is '代理人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_JS                             is '角色';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_XB                             is '性别';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.N_NL                             is '年龄';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_GJ                             is '国籍';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_MZ                             is '民族';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SF                             is '身份';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_ZY                             is '职业';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_ZW                             is '职务';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_JL                             is '简历';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXRZ                                  is '执行日志';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.D_SJ                             is '时间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.C_SX                             is '事项';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXRZ.C_CLR                             is '处理人';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.N_XH                             is '序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_ID_ZXYY                             is '案件ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZLJL                                  is '增量记录';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZLJL.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZLJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZLJL.N_ZT                             is '修改状态';

set search_path to DB_ZXYY;
commit;

comment on table  T_ZXYYZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.C_ID_ZXYYZXZTXX                             is '执行主体信息ID';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_ZXYY;
commit;

comment on column T_ZXYYZXZTXXZJXX.C_ZJHM                             is '证件号码';


-- auto create by SMD

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFY                                  is '执行复议案件主表';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_ID                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_AH                             is '案号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_AJZLX                             is '案件子类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_AJLY                             is '案件来源';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_LAAY                             is '立案案由';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_LAAYMS                             is '立案案由描述';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_LABMBS                             is '立案部门标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SADJR                             is '收案登记人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_SARQ                             is '收案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SCR                             is '审查人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_SCRQ                             is '审查日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_SCYJ                             is '审查意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SPR                             is '审批人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_LASPRQ                             is '立案审批日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_SPYJ                             is '审批意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_LARQ                             is '立案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_ZXYYSX                             is '执行异议事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_FYSX                             is '复议事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_JDSX                             is '监督事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_XDSX                             is '协调事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_QTSX                             is '其他事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_AJXH                             is '案件序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_AJLXDM                             is '案件类型代码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_FYDM                             is '法院代码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_CBBMBS                             is '承办部门标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_CBR                             is '承办人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SPZ                             is '审判长';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_HYTCY                             is '合议庭成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SJY                             is '书记员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_FARQ                             is '分案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_FDLAQX                             is '法定立案期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SJLATS                             is '实际立案天数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_LACQTS                             is '立案超期天数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_FDZXQX                             is '法定执行期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_SJZXTS                             is '实际执行天数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_ZHZX                             is '暂缓执行';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_JARQ                             is '结案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_JAAY                             is '结案案由';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_JAFS                             is '结案方式';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_JAWS                             is '结案文书';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_JAWSSDRQ                             is '结案文书送达日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_JAWSSDFS                             is '结案文书送达方式';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_LJR                             is '立卷人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_TJR                             is '提交人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_TJRQ                             is '提交日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_JSR                             is '接收人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.D_JSRQ                             is '接收日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_MLH                             is '目录号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_JZH                             is '卷宗号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_ZJCS                             is '正卷册数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_FJCS                             is '副卷册数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_ZJYS                             is '正卷页数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_FJYS                             is '副卷页数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_QTJCS                             is '其他卷册数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.N_QTJYS                             is '其他卷页数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_BJQK                             is '并卷情况';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_MJ                             is '密级';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_BGQX                             is '保管期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_GDH                             is '归档号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFY.C_QZH                             is '全宗号';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYYZXAJXX                                  is '原执行案件信息';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.N_CY                             is '成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYZC.C_JS                             is '角色';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_LX                             is '类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.C_YY                             is '原因';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYFTSYJL                                  is '法庭使用记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_TC                             is '庭次';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_DD                             is '地点';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.N_BL                             is '笔录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYSDJL                                  is '送达记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_WS                             is '文书';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_SDFS                             is '送达方式';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.N_STFY                             is '受托法院';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.N_SDR                             is '送达人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.N_SSDR                             is '受送达人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_QSR                             is '签收人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYPBJL                                  is '批办记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_PBJG                             is '批办机关';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_PBLD                             is '批办领导';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_PBWH                             is '批办文号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_BGJG                             is '报告结果';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.N_PBSX                             is '批办时限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYSFJY                                  is '司法建议';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.C_JYDX                             is '建议对象';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.N_JYS                             is '建议书';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYAJPY                                  is '案件评议';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_PYLX                             is '评议类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYSWHTL                                  is '审委会讨论';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXLCJD                                  is '执行流程节点';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_CLR                             is '处理人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.N_QX                             is '期限';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXZTXX                                  is '执行主体信息';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.N_XH                             is '序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_LY                             is '来源';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DSR                             is '当事人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_LX                             is '类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_MC                             is '名称';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DZ                             is '地址';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DLR                             is '代理人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_JS                             is '角色';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_XB                             is '性别';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.N_NL                             is '年龄';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_GJ                             is '国籍';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_MZ                             is '民族';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SF                             is '身份';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_ZY                             is '职业';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_ZW                             is '职务';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_JL                             is '简历';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXRZ                                  is '执行日志';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.D_SJ                             is '时间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.C_SX                             is '事项';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXRZ.C_CLR                             is '处理人';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.N_XH                             is '序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_ID_ZXFY                             is '案件ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZLJL                                  is '增量记录';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZLJL.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZLJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZLJL.N_ZT                             is '修改状态';

set search_path to DB_ZXFY;
commit;

comment on table  T_ZXFYZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.C_ID_ZXFYZXZTXX                             is '执行主体信息ID';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_ZXFY;
commit;

comment on column T_ZXFYZXZTXXZJXX.C_ZJHM                             is '证件号码';


-- auto create by SMD

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJD                                  is '执行监督案件主表';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_ID                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_AH                             is '案号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_AJZLX                             is '案件子类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_AJLY                             is '案件来源';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_LAAY                             is '立案案由';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_LAAYMS                             is '立案案由描述';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_LABMBS                             is '立案部门标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SADJR                             is '收案登记人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_SARQ                             is '收案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SCR                             is '审查人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_SCRQ                             is '审查日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_SCYJ                             is '审查意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SPR                             is '审批人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_LASPRQ                             is '立案审批日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_SPYJ                             is '审批意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_LARQ                             is '立案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_ZXYYSX                             is '执行异议事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_FYSX                             is '复议事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_JDSX                             is '监督事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_XDSX                             is '协调事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_QTSX                             is '其他事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_AJXH                             is '案件序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_AJLXDM                             is '案件类型代码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_FYDM                             is '法院代码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_CBBMBS                             is '承办部门标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_CBR                             is '承办人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SPZ                             is '审判长';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_HYTCY                             is '合议庭成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SJY                             is '书记员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_FARQ                             is '分案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_FDLAQX                             is '法定立案期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SJLATS                             is '实际立案天数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_LACQTS                             is '立案超期天数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_FDZXQX                             is '法定执行期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_SJZXTS                             is '实际执行天数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_ZHZX                             is '暂缓执行';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_JARQ                             is '结案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_JAAY                             is '结案案由';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_JAFS                             is '结案方式';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_JAWS                             is '结案文书';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_JAWSSDRQ                             is '结案文书送达日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_JAWSSDFS                             is '结案文书送达方式';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_LJR                             is '立卷人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_TJR                             is '提交人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_TJRQ                             is '提交日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_JSR                             is '接收人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.D_JSRQ                             is '接收日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_MLH                             is '目录号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_JZH                             is '卷宗号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_ZJCS                             is '正卷册数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_FJCS                             is '副卷册数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_ZJYS                             is '正卷页数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_FJYS                             is '副卷页数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_QTJCS                             is '其他卷册数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.N_QTJYS                             is '其他卷页数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_BJQK                             is '并卷情况';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_MJ                             is '密级';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_BGQX                             is '保管期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_GDH                             is '归档号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJD.C_QZH                             is '全宗号';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDYZXAJXX                                  is '原执行案件信息';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.N_CY                             is '成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYZC.C_JS                             is '角色';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_LX                             is '类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.C_YY                             is '原因';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDFTSYJL                                  is '法庭使用记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_TC                             is '庭次';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_DD                             is '地点';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.N_BL                             is '笔录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDSDJL                                  is '送达记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_WS                             is '文书';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_SDFS                             is '送达方式';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.N_STFY                             is '受托法院';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.N_SDR                             is '送达人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.N_SSDR                             is '受送达人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_QSR                             is '签收人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDPBJL                                  is '批办记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_PBJG                             is '批办机关';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_PBLD                             is '批办领导';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_PBWH                             is '批办文号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_BGJG                             is '报告结果';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.N_PBSX                             is '批办时限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDSFJY                                  is '司法建议';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.C_JYDX                             is '建议对象';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.N_JYS                             is '建议书';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDAJPY                                  is '案件评议';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_PYLX                             is '评议类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDSWHTL                                  is '审委会讨论';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXLCJD                                  is '执行流程节点';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_CLR                             is '处理人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.N_QX                             is '期限';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXZTXX                                  is '执行主体信息';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.N_XH                             is '序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_LY                             is '来源';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DSR                             is '当事人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_LX                             is '类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_MC                             is '名称';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DZ                             is '地址';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DLR                             is '代理人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_JS                             is '角色';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_XB                             is '性别';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.N_NL                             is '年龄';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_GJ                             is '国籍';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_MZ                             is '民族';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SF                             is '身份';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_ZY                             is '职业';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_ZW                             is '职务';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_JL                             is '简历';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXRZ                                  is '执行日志';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.D_SJ                             is '时间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.C_SX                             is '事项';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXRZ.C_CLR                             is '处理人';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.N_XH                             is '序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_ID_ZXJD                             is '案件ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZLJL                                  is '增量记录';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZLJL.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZLJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZLJL.N_ZT                             is '修改状态';

set search_path to DB_ZXJD;
commit;

comment on table  T_ZXJDZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.C_ID_ZXJDZXZTXX                             is '执行主体信息ID';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_ZXJD;
commit;

comment on column T_ZXJDZXZTXXZJXX.C_ZJHM                             is '证件号码';


-- auto create by SMD

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXT                                  is '执行协调案件主表';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_ID                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_AH                             is '案号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_AJZLX                             is '案件子类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_AJLY                             is '案件来源';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_LAAY                             is '立案案由';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_LAAYMS                             is '立案案由描述';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_LABMBS                             is '立案部门标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SADJR                             is '收案登记人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_SARQ                             is '收案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SCR                             is '审查人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_SCRQ                             is '审查日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_SCYJ                             is '审查意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SPR                             is '审批人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_LASPRQ                             is '立案审批日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_SPYJ                             is '审批意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_LARQ                             is '立案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_ZXYYSX                             is '执行异议事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_FYSX                             is '复议事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_JDSX                             is '监督事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_XDSX                             is '协调事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_QTSX                             is '其他事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_AJXH                             is '案件序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_AJLXDM                             is '案件类型代码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_FYDM                             is '法院代码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_CBBMBS                             is '承办部门标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_CBR                             is '承办人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SPZ                             is '审判长';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_HYTCY                             is '合议庭成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SJY                             is '书记员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_FARQ                             is '分案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_FDLAQX                             is '法定立案期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SJLATS                             is '实际立案天数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_LACQTS                             is '立案超期天数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_FDZXQX                             is '法定执行期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_SJZXTS                             is '实际执行天数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_ZHZX                             is '暂缓执行';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_JARQ                             is '结案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_JAAY                             is '结案案由';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_JAFS                             is '结案方式';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_JAWS                             is '结案文书';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_JAWSSDRQ                             is '结案文书送达日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_JAWSSDFS                             is '结案文书送达方式';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_LJR                             is '立卷人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_TJR                             is '提交人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_TJRQ                             is '提交日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_JSR                             is '接收人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.D_JSRQ                             is '接收日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_MLH                             is '目录号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_JZH                             is '卷宗号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_ZJCS                             is '正卷册数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_FJCS                             is '副卷册数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_ZJYS                             is '正卷页数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_FJYS                             is '副卷页数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_QTJCS                             is '其他卷册数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.N_QTJYS                             is '其他卷页数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_BJQK                             is '并卷情况';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_MJ                             is '密级';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_BGQX                             is '保管期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_GDH                             is '归档号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXT.C_QZH                             is '全宗号';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTYZXAJXX                                  is '原执行案件信息';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.N_CY                             is '成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYZC.C_JS                             is '角色';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_LX                             is '类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.C_YY                             is '原因';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTFTSYJL                                  is '法庭使用记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_TC                             is '庭次';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_DD                             is '地点';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.N_BL                             is '笔录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTSDJL                                  is '送达记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_WS                             is '文书';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_SDFS                             is '送达方式';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.N_STFY                             is '受托法院';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.N_SDR                             is '送达人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.N_SSDR                             is '受送达人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_QSR                             is '签收人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTPBJL                                  is '批办记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_PBJG                             is '批办机关';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_PBLD                             is '批办领导';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_PBWH                             is '批办文号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_BGJG                             is '报告结果';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.N_PBSX                             is '批办时限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTSFJY                                  is '司法建议';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.C_JYDX                             is '建议对象';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.N_JYS                             is '建议书';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTAJPY                                  is '案件评议';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_PYLX                             is '评议类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTSWHTL                                  is '审委会讨论';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXLCJD                                  is '执行流程节点';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_CLR                             is '处理人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.N_QX                             is '期限';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXZTXX                                  is '执行主体信息';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.N_XH                             is '序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_LY                             is '来源';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DSR                             is '当事人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_LX                             is '类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_MC                             is '名称';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DZ                             is '地址';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DLR                             is '代理人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_JS                             is '角色';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_XB                             is '性别';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.N_NL                             is '年龄';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_GJ                             is '国籍';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_MZ                             is '民族';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SF                             is '身份';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_ZY                             is '职业';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_ZW                             is '职务';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_JL                             is '简历';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXRZ                                  is '执行日志';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.D_SJ                             is '时间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.C_SX                             is '事项';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXRZ.C_CLR                             is '处理人';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.N_XH                             is '序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_ID_ZXXT                             is '案件ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZLJL                                  is '增量记录';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZLJL.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZLJL.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZLJL.N_ZT                             is '修改状态';

set search_path to DB_ZXXT;
commit;

comment on table  T_ZXXTZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.C_ID_ZXXTZXZTXX                             is '执行主体信息ID';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_ZXXT;
commit;

comment on column T_ZXXTZXZTXXZJXX.C_ZJHM                             is '证件号码';


-- auto create by SMD

set search_path to DB_QTZX;
commit;

comment on table  T_QTZX                                  is '其他执行案件主表';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_ID                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_AH                             is '案号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_AJJZJD                             is '案件进展阶段';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_AJZLX                             is '案件子类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_AJLY                             is '案件来源';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_SDCLRQ                             is '收到材料日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_LAAY                             is '立案案由';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_LAAYMS                             is '立案案由描述';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_LABMBS                             is '立案部门标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SADJR                             is '收案登记人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_SARQ                             is '收案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SCR                             is '审查人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_SCRQ                             is '审查日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_SCYJ                             is '审查意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SPR                             is '审批人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_LASPRQ                             is '立案审批日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_SPYJ                             is '审批意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_LARQ                             is '立案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_ZXYYSX                             is '执行异议事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_FYSX                             is '复议事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_JDSX                             is '监督事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_XDSX                             is '协调事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_QTSX                             is '其他事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_AJXH                             is '案件序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_AJLXDZ                             is '案件类型代字';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_AJLXDM                             is '案件类型代码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_FYDM                             is '法院代码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_DQAJZTHBZ                             is '当前案件止停缓标志';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_CBBMBS                             is '承办部门标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_CBR                             is '承办人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SPZ                             is '审判长';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_HYTCY                             is '合议庭成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SJY                             is '书记员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_FARQ                             is '分案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_YSAJRQ                             is '移送案件日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_JSAJRQ                             is '接收案件日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_LAQXJMRQ                             is '立案期限届满日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_FDLAQX                             is '法定立案期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SJLATS                             is '实际立案天数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_LACQTS                             is '立案超期天数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_ZXQXQSRQ                             is '执行期限起始日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_ZXQXJMRQ                             is '执行期限届满日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_FDZXQX                             is '法定执行期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_SJZXTS                             is '实际执行天数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_ZXCQTS                             is '执行超期天数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_ZXCQYY                             is '执行超期原因';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_ZHZX                             is '暂缓执行';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_ZHZXQX                             is '暂缓执行期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_JARQ                             is '结案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_JAAY                             is '结案案由';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_JAFS                             is '结案方式';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_JAWS                             is '结案文书';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_JAWSSDRQ                             is '结案文书送达日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_JAWSSDFS                             is '结案文书送达方式';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_LJR                             is '立卷人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_TJR                             is '提交人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_TJRQ                             is '提交日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_JSR                             is '接收人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.D_JSRQ                             is '接收日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_MLH                             is '目录号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_JZH                             is '卷宗号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_ZJCS                             is '正卷册数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_FJCS                             is '副卷册数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_ZJYS                             is '正卷页数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_FJYS                             is '副卷页数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_QTJCS                             is '其他卷册数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.N_QTJYS                             is '其他卷页数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_BJQK                             is '并卷情况';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_MJ                             is '密级';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_BGQX                             is '保管期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_GDH                             is '归档号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZX.C_QZH                             is '全宗号';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXYZXAJXX                                  is '原执行案件信息';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.N_XHYZXAJ                             is '序号_原执行案件';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.N_YZXAJBS                             is '原执行案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.N_YZXFY                             is '原执行法院';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.C_YZXAH                             is '原执行案号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.D_YLARQ                             is '原立案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.D_YJARQ                             is '原结案日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZXAJXX.C_YJAFS                             is '原结案方式';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXZZCYZC                                  is '执行组织成员组成';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.N_XHCY                             is '序号_成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.N_CY                             is '成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYZC.C_JS                             is '角色';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXZZCYBGJL                                  is '执行组织成员变更记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.N_XHCY                             is '序号_成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.N_YCY                             is '原成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.C_YCYJS                             is '原成员角色';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.N_XCY                             is '新成员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.D_BGRQ                             is '变更日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZZCYBGJL.C_BGYY                             is '变更原因';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXKCZXQXJL                                  is '扣除执行期限记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.N_XHKCQX                             is '序号_扣除期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_LX                             is '类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_ZZSY                             is '中止事由';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_YQZXSY                             is '延期执行事由';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.C_QTSY                             is '其他事由';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.D_QSRQ                             is '起始日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.D_JSRQ                             is '结束日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXKCZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXYZZXQXJL                                  is '延长执行期限记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.N_XHYZQX                             is '序号_延长期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.C_YY                             is '原因';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.D_SQRQ                             is '申请日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.C_PZJG                             is '批准机关';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.D_PZRQ                             is '批准日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.D_KSRQ                             is '开始日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.C_YZQJ                             is '延长期间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXYZZXQXJL.N_XGWS                             is '相关文书';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXFTSYJL                                  is '法庭使用记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_XHFTSY                             is '序号_法庭使用';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_FTYT                             is '法庭用途';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_TC                             is '庭次';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.D_KSSJ                             is '开始时间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.D_JSSJ                             is '结束时间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_DD                             is '地点';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_GKTZ                             is '公开听证';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_DTDSR                             is '到庭当事人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_JBDTDSR                             is '拒不到庭当事人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_WZDLYZTTTDSR                             is '无正当理由中途退庭当事人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_DTDLR                             is '到庭代理人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_CTZZDZR                             is '出庭作证的证人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_JJJXBHHDL                             is '拒绝继续辩护或代理';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_DWXC                             is '对外宣传';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_PTRS                             is '旁听人数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_RDDBPTRS                             is '人大代表旁听人数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_ZXWYPTRS                             is '政协委员旁听人数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_SWHWYDTTA                             is '审委会委员到庭听案';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.N_BL                             is '笔录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.C_TZCJQK                             is '听证裁决情况';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXFTSYJL.D_FCTZTZRQ                             is '发出听证通知日期';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXSDJL                                  is '送达记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.N_XHSD                             is '序号_送达';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_WS                             is '文书';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_YSDRQ                             is '应送达日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_KSSDRQ                             is '开始送达日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_SDFS                             is '送达方式';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.N_STFY                             is '受托法院';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_GGRQ                             is '公告日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_JYRQ                             is '交邮日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_SDRQ                             is '送达日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.N_SDR                             is '送达人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.N_SSDR                             is '受送达人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_QSR                             is '签收人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_DQRHZJR                             is '代签人或转交人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.D_QSSJ                             is '签收时间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_JBQS                             is '拒不签收';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSDJL.C_WSDYY                             is '未送达原因';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXPBJL                                  is '批办记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.N_XHPB                             is '序号_批办';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_PBJG                             is '批办机关';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_PBLD                             is '批办领导';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.D_PBRQ                             is '批办日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_PBWH                             is '批办文号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_PBYQ                             is '批办要求';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_BGJG                             is '报告结果';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.D_YBJGRQ                             is '应报结果日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.N_PBSX                             is '批办时限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_DQHB                             is '定期汇报';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXPBJL.C_GPDB                             is '挂牌督办';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXSFJY                                  is '司法建议';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.N_XHSFJY                             is '序号_司法建议';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.D_TCRQ                             is '提出日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.C_JYDX                             is '建议对象';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.N_JYS                             is '建议书';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.D_FKRQ                             is '反馈日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSFJY.C_FKYJ                             is '反馈意见';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXAJPY                                  is '案件评议';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.N_XHPY                             is '序号_评议';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_PYLX                             is '评议类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.D_PYRQ                             is '评议日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_CBRYJ                             is '承办人意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_SPZYJ                             is '审判长意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_QTCYYJ                             is '其他成员意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_DSRYJ                             is '多数人意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.N_PYBL                             is '评议笔录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXAJPY.C_TLJG                             is '讨论结果';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXSWHTL                                  is '审委会讨论';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.N_XHSWHTL                             is '序号_审委会讨论';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.D_TLRQ                             is '讨论日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_YTLX                             is '议题类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_CJRY                             is '参加人员';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_TLYJ                             is '讨论意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_DSRYJ                             is '多数人意见';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.N_TLBL                             is '讨论笔录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXSWHTL.C_TLJG                             is '讨论结果';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXLCJD                                  is '执行流程节点';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.N_BHLCJDBH                             is '编号_流程节点编号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.N_XHLCJDXH                             is '序号_流程节点序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.D_QDRQ                             is '启动日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.D_JSRQ                             is '结束日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.D_JMRQ                             is '届满日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_JDZT                             is '节点状态';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_DYYWXH                             is '对应业务序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_JDMC                             is '节点名称';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_CLR                             is '处理人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.N_QX                             is '期限';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.N_SJWCTS                             is '实际完成天数';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXLCJD.C_YWMS                             is '业务描述';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXZTXX                                  is '执行主体信息';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.N_XH                             is '序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_LY                             is '来源';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DSR                             is '当事人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DSRFLDW                             is '当事人法律地位';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_YAFLDW                             is '原案法律地位';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_LX                             is '类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_MC                             is '名称';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DZ                             is '地址';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SDDZ                             is '送达地址';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_YZBM                             is '邮政编码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SJHM                             is '手机号码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_LXDH                             is '联系电话';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DZYX                             is '电子邮箱';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_QTLXFF                             is '其他联系方法';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_TSZT                             is '特殊主体';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_YXZH                             is '银行账号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DSRAJCXMM                             is '当事人案件查询密码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DLR                             is '代理人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_XGDSR                             is '相关当事人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_JS                             is '角色';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFSFYZ                             is '是否身份验证';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFYZJG                             is '身份验证结果';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_QTZXZTLX                             is '其他执行主体类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFDSZDQZQ                             is '是否第三者到期债权';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFLHGXR                             is '是否利害关系人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFSQSYWLCK                             is '是否申请使用网络查控';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFGK                             is '是否公开';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFYZZBJG                             is '身份验证甄别结果';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.N_SFYZZBSPR                             is '身份验证甄别审批人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.D_SFYZZBSPRQ                             is '身份验证甄别审批日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFYZZBCL                             is '身份验证甄别材料';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_XB                             is '性别';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.D_CSRQ                             is '出生日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.N_NL                             is '年龄';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_GJ                             is '国籍';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_MZ                             is '民族';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SF                             is '身份';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SFZHM                             is '身份证号码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_XYJRSF                             is '现役军人身份';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_JGZWXZ                             is '军官职务性质';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_JGHWZGBJB                             is '军官或文职干部级别';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_QTSFZJZL                             is '其他身份证件种类';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_QTSFZJHM                             is '其他身份证件号码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_ZY                             is '职业';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_WHCD                             is '文化程度';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_HYZK                             is '婚姻状况';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_ZZMM                             is '政治面貌';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_XZJB                             is '行政级别';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_SZDW                             is '所在单位';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_ZW                             is '职务';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_TSSF                             is '特殊身份';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_TSSLHBL                             is '特殊生理或病理';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_HJSZD                             is '户籍所在地';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_JL                             is '简历';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_JTJJZK                             is '家庭经济状况';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_CYM                             is '曾用名';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_GJHDQ                             is '国家或地区';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_TYSHXYDM                             is '统一社会信用代码';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DWXZ                             is '单位性质';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_TSHY                             is '特殊行业';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_FDDBR                             is '法定代表人';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DBRZJZL                             is '代表人证件种类';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXX.C_DBRZJHM                             is '代表人证件号码';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXRZ                                  is '执行日志';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.N_XHZXRZ                             is '序号_执行日志';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.D_SJ                             is '时间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.C_SX                             is '事项';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXRZ.C_CLR                             is '处理人';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXCPWSSWXX                                  is '裁判文书上网信息';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.N_XH                             is '序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.C_SWWSMC                             is '上网文书名称';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.N_SWWSXH                             is '上网文书序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSSWXX.D_SWRQ                             is '上网日期';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXCPWSBSWXX                                  is '裁判文书不上网信息';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_ID_QTZX                             is '案件ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.N_XH                             is '序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_WSMC                             is '文书名称';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.N_WSXH                             is '文书序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.D_SQRQ                             is '申请日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_BSWYY                             is '不上网原因';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_BSWQTYY                             is '不上网其他原因';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.C_SPJL                             is '审批结论';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.D_SPRQ                             is '审批日期';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXCPWSBSWXX.N_SPR                             is '审批人';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZLJL                                  is '增量记录';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZLJL.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZLJL.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZLJL.N_ZT                             is '修改状态';

set search_path to DB_QTZX;
commit;

comment on table  T_QTZXZXZTXXZJXX                                  is '执行主体信息证件信息';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.C_ID                             is '主键ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.C_ID_QTZXZXZTXX                             is '执行主体信息ID';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.N_AJBS                             is '案件标识';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.N_XH                             is '序号';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.C_ZJLX                             is '证件类型';
set search_path to DB_QTZX;
commit;

comment on column T_QTZXZXZTXXZJXX.C_ZJHM                             is '证件号码';




-- auto create by SMD

set search_path to DB_WS;
commit;

comment on table  T_WS                                  is '文书';
set search_path to DB_WS;
commit;

comment on column T_WS.C_ID                             is '案件ID';
set search_path to DB_WS;
commit;

comment on column T_WS.N_AJBS                             is '案件标识';
set search_path to DB_WS;
commit;

comment on column T_WS.N_XHWS                             is '序号_文书';
set search_path to DB_WS;
commit;

comment on column T_WS.C_LB                             is '类别';
set search_path to DB_WS;
commit;

comment on column T_WS.C_MC                             is '名称';
set search_path to DB_WS;
commit;

comment on column T_WS.N_ZZR                             is '制作人';
set search_path to DB_WS;
commit;

comment on column T_WS.D_ZZSJ                             is '制作时间';
set search_path to DB_WS;
commit;

comment on column T_WS.C_NR                             is '内容';
set search_path to DB_WS;
commit;

comment on column T_WS.C_YSBZ                             is '压缩标志';
set search_path to DB_WS;
commit;

comment on column T_WS.C_WJGS                             is '文件格式';
set search_path to DB_WS;
commit;

comment on column T_WS.N_QFR                             is '签发人';
set search_path to DB_WS;
commit;

comment on column T_WS.D_QFRQ                             is '签发日期';

set search_path to DB_WS;
commit;

comment on table  T_WSZLJL                                  is '增量记录';
set search_path to DB_WS;
commit;

comment on column T_WSZLJL.C_ID                             is '主键ID';
set search_path to DB_WS;
commit;

comment on column T_WSZLJL.N_AJBS                             is '案件标识';
set search_path to DB_WS;
commit;

comment on column T_WSZLJL.D_UPDATETIME                             is '更新时间';
set search_path to DB_WS;
commit;

comment on column T_WSZLJL.N_ZT                             is '修改状态';




-- auto create by SMD

set search_path to DB_FY;
commit;

comment on table  T_JG                                  is '组织机构';
set search_path to DB_FY;
commit;

comment on column T_JG.C_ZZJGID                             is '组织机构ID';
set search_path to DB_FY;
commit;

comment on column T_JG.N_JGBS                             is '机构标识';
set search_path to DB_FY;
commit;

comment on column T_JG.C_JGMC                             is '机构名称';
set search_path to DB_FY;
commit;

comment on column T_JG.C_JGLX                             is '机构类型';
set search_path to DB_FY;
commit;

comment on column T_JG.C_YX                             is '有效';
set search_path to DB_FY;
commit;

comment on column T_JG.N_FYDM                             is '法院代码';
set search_path to DB_FY;
commit;

comment on column T_JG.N_LSJGBS                             is '隶属机构标识';
set search_path to DB_FY;
commit;

comment on column T_JG.C_SFPCFT                             is '是否派出法庭';
set search_path to DB_FY;
commit;

comment on column T_JG.C_BMJC                             is '部门简称';

set search_path to DB_FY;
commit;

comment on table  T_RY                                  is '组织人员';
set search_path to DB_FY;
commit;

comment on column T_RY.C_ZZRYID                             is '主键ID';
set search_path to DB_FY;
commit;

comment on column T_RY.N_RYBS                             is '人员标识';
set search_path to DB_FY;
commit;

comment on column T_RY.C_XM                             is '姓名';
set search_path to DB_FY;
commit;

comment on column T_RY.C_DLBS                             is '登录标识';
set search_path to DB_FY;
commit;

comment on column T_RY.C_XB                             is '性别';
set search_path to DB_FY;
commit;

comment on column T_RY.D_CSRQ                             is '出生日期';
set search_path to DB_FY;
commit;

comment on column T_RY.C_MZ                             is '民族';
set search_path to DB_FY;
commit;

comment on column T_RY.C_WHCD                             is '文化程度';
set search_path to DB_FY;
commit;

comment on column T_RY.C_HYZK                             is '婚姻状况';
set search_path to DB_FY;
commit;

comment on column T_RY.C_SFZHM                             is '身份证号码';
set search_path to DB_FY;
commit;

comment on column T_RY.C_ZZMM                             is '政治面貌';
set search_path to DB_FY;
commit;

comment on column T_RY.C_XZJB                             is '行政级别';
set search_path to DB_FY;
commit;

comment on column T_RY.C_ZW                             is '职务';
set search_path to DB_FY;
commit;

comment on column T_RY.C_BZ                             is '编制';
set search_path to DB_FY;
commit;

comment on column T_RY.C_DHHM                             is '电话号码';
set search_path to DB_FY;
commit;

comment on column T_RY.C_SJHM                             is '手机号码';
set search_path to DB_FY;
commit;

comment on column T_RY.C_YX                             is '有效';
set search_path to DB_FY;
commit;

comment on column T_RY.C_FGDJ                             is '法官等级';
set search_path to DB_FY;
commit;

comment on column T_RY.C_FJDJ                             is '法警等级';
set search_path to DB_FY;
commit;

comment on column T_RY.N_SZJG                             is '所在机构';

