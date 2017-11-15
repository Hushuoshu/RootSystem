SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE login_log (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  account        VARCHAR(255)   NOT NULL
  COMMENT '账号',
  login_ip       VARCHAR(100)   NOT NULL
  COMMENT '登陆ip',
  login_time     DATETIME       NOT NULL
  COMMENT '登陆时间',
  detail_address VARCHAR(255)   NULL
  COMMENT '详细地址信息',
  province       VARCHAR(255)   NULL
  COMMENT '省',
  city           VARCHAR(255)   NULL
  COMMENT '城市',
  city_code      VARCHAR(255)   NULL
  COMMENT '城市id',
  address        VARCHAR(255)   NULL
  COMMENT '地址',
  point_x        DECIMAL(11, 8) NULL
  COMMENT '经度',
  point_y        DECIMAL(10, 8)  NULL
  COMMENT '纬度'
);