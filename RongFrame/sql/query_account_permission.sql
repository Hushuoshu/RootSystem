DROP TABLE IF EXISTS `query_account_permission`;
CREATE TABLE query_account_permission(
  account_id int PRIMARY KEY COMMENT '账号id',
  query_sql TEXT NULL COMMENT '查询sql语句'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
