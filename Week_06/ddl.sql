create table `user`
(
    `id`            bigint            NOT NULL AUTO_INCREMENT COMMENT '用户id',
    `name`          varchar(64)       NOT NULL COMMENT '用户名',
    `gender`        tinyint           NOT NULL COMMENT '性别 0:男，1:女',
    `phone_number`  int               NOT NULL COMMENT '手机号',
    `status`        tinyint           NOT NULL COMMENT '用户状态 0:有效，1:删除',
    `create_time`   TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) engine = InnoDB DEFAULT CHARSET = utf8 COMMENT '用户表';

create table `goods`
(
    `id`            bigint            NOT NULL AUTO_INCREMENT COMMENT '商品id',
    `name`          varchar(255)      NOT NULL COMMENT '商品名称',
    `price`         double            NOT NULL COMMENT '商品价格',
    `status`        tinyint           NOT NULL COMMENT '商品状态 0:有效，1:删除',
    `description`   varchar(255)      NOT NULL COMMENT '商品描述',
    `create_time`   TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   TIMESTAMP         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) engine = InnoDB default CHARSET = utf8 COMMENT '商品表';

create table `order`
(
    `id`             bigint           NOT NULL AUTO_INCREMENT COMMENT '订单id',
    `user_id`        bigint           NOT NULL COMMENT '用户id',
    `goods_id`       bigint           NOT NULL COMMENT '商品id',
    `status`         tinyint          NOT NULL COMMENT '订单状态 0:有效，1:取消',
    `create_time`    TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`    TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) engine = InnoDB DEFAULT CHARSET = utf8 COMMENT '订单表';

# 根据场景可以考虑增加订单详情表、支付表、物流表
