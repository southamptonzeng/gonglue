--
-- 表的结构 `__PREFIX__gonglue_contentcategory`
--

CREATE TABLE IF NOT EXISTS `__PREFIX__gonglue_contentcategory` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `nickname` varchar(50) DEFAULT '' COMMENT '分类昵称',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT 'index' COMMENT '分类标志',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容分类表';

BEGIN;
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (1, 0, '分类一', '', 'index', '', '', '', 1553606219, 1565316234, 0, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (2, 0, '娱乐', '', 'index', '', '', '', 1582464917, 1582464917, 2, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (3, 0, '游戏', '', 'index', '', '', '', 1582464923, 1582464923, 3, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (4, 0, '快乐', '', 'index', '', '', '', 1582464928, 1582464928, 4, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (5, 0, '音乐', '', 'index', '', '', '', 1582464935, 1582464935, 5, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (6, 0, '家庭', '', 'index', '', '', '', 1582464942, 1582464942, 6, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (7, 0, '文学', '', 'index', '', '', '', 1582464947, 1582464947, 7, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (8, 0, '体育', '', 'index', '', '', '', 1582464953, 1582464953, 8, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (9, 0, '篮球', '', 'index', '', '', '', 1582464960, 1582464960, 9, 'normal');
INSERT INTO `__PREFIX__gonglue_contentcategory` VALUES (10, 0, '科学', '', 'index', '', '', '', 1582464966, 1582464966, 10, 'normal');
COMMIT;


--
-- 表的结构 `__PREFIX__gonglue_content`
--

CREATE TABLE IF NOT EXISTS `__PREFIX__gonglue_content` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) DEFAULT '' COMMENT '大图',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容表';

BEGIN;
INSERT INTO `__PREFIX__gonglue_content` VALUES (1, 1, '我是标题', '我是内容', '', 'zengzh', '', 7, 0, 1, 1553606219, 1565316234, 0, 'normal');
INSERT INTO `__PREFIX__gonglue_content` VALUES (5, 4, '今天是个好日子', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">wx.navigateTo 和 wx.redirectTo 不允许跳转到 tab 所包含的页面，只能用 wx.switchTab 跳转。需要注意的是，wx.switchTab 中的 url 不能传参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">微信新提供的 wx.reLaunch 接口可以传入参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">另外，在页面中我们通常会用到一些组件模板，因此在父子之间也会有相应的数据传递。</span><br style=\"outline: 0px; overflow-wrap: break-word;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">使用 name 属性，作为模板的名字。然后在这里面使用 is 属性，声明需要的使用的模板。</span></p>', '', '欧阳锋', '', 0, 0, 0, 1582465044, 1582465044, 5, 'normal');
INSERT INTO `__PREFIX__gonglue_content` VALUES (6, 3, '笑傲江湖', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">wx.navigateTo 和 wx.redirectTo 不允许跳转到 tab 所包含的页面，只能用 wx.switchTab 跳转。需要注意的是，wx.switchTab 中的 url 不能传参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">微信新提供的 wx.reLaunch 接口可以传入参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">另外，在页面中我们通常会用到一些组件模板，因此在父子之间也会有相应的数据传递。</span><br style=\"outline: 0px; overflow-wrap: break-word;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">使用 name 属性，作为模板的名字。然后在这里面使用 is 属性，声明需要的使用的模板。</span></p>', '', '杨过', '', 0, 0, 0, 1582465083, 1582465083, 6, 'normal');
INSERT INTO `__PREFIX__gonglue_content` VALUES (7, 8, '天龙八部', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">wx.navigateTo 和 wx.redirectTo 不允许跳转到 tab 所包含的页面，只能用 wx.switchTab 跳转。需要注意的是，wx.switchTab 中的 url 不能传参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">微信新提供的 wx.reLaunch 接口可以传入参数。</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(89, 96, 123); line-height: 30px; overflow-x: auto; overflow-wrap: break-word; text-indent: 2em;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">另外，在页面中我们通常会用到一些组件模板，因此在父子之间也会有相应的数据传递。</span><br style=\"outline: 0px; overflow-wrap: break-word;\"><span style=\"outline: 0px; font-family: SimHei; overflow-wrap: break-word; font-size: 16px;\">使用 name 属性，作为模板的名字。然后在这里面使用 is 属性，声明需要的使用的模板。</span></p>', '', '虚竹', '', 0, 0, 0, 1582465108, 1582465108, 7, 'normal');
INSERT INTO `__PREFIX__gonglue_content` VALUES (8, 2, '我是内容', '<p>我是内容</p>', '', '张明明', '', 0, 0, 0, 1582507966, 1582507966, 8, 'normal');
COMMIT;

--
-- 表的结构 `__PREFIX__gonglue_contentcomment`
--

CREATE TABLE IF NOT EXISTS `__PREFIX__gonglue_contentcomment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '内容ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `content` text NOT NULL COMMENT '内容',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`,`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容评论表';

BEGIN;
INSERT INTO `__PREFIX__gonglue_contentcomment` VALUES (1, 1, 0, 'zengzh', '', '我是评论', 0, 0, 1553606219, 1565316234, 'normal');
COMMIT;

--
-- 表的结构 `__PREFIX__gonglue_topic`
--
CREATE TABLE IF NOT EXISTS `__PREFIX__gonglue_topic` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `flag` set('hot','recommend') NOT NULL DEFAULT 'recommend' COMMENT '标志',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) DEFAULT '' COMMENT '大图',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';

BEGIN;
INSERT INTO `__PREFIX__gonglue_topic` VALUES (1, 'hot', '我是标题', '我是内容', '', 'zengzh', '', 11, 3, 1, 1553606219, 1565316234, 0, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (5, 'hot', '测试', '测试内容', '', 'root', '', 9, 2, 0, 1582427002, 1582427002, 5, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (6, 'hot,recommend', '今天是个好日子牙', '内容要多一点哦<span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span>', '', '卢本伟', '', 9, 0, 0, 1582443183, 1582443183, 6, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (7, 'hot,recommend', '我太 安达市大所', '内诶诶诶诶额<span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span>', '', '张明明', '', 18, 2, 0, 1582443238, 1582443238, 7, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (8, 'hot,recommend', '敖德萨奥所大所多', '<span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span>', '', '张明明', '', 9, 0, 0, 1582443274, 1582443274, 8, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (9, 'hot,recommend', '今天是个好日子牙', '<span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span><span style=\"white-space:normal;\">内容要多一点哦</span>', '', '大萨达所', '', 9, 0, 0, 1582443290, 1582443290, 9, 'normal');
INSERT INTO `__PREFIX__gonglue_topic` VALUES (10, 'recommend', '我是话题', '<p>我是话题</p>', '', '虚竹', '', 9, 0, 0, 1582507944, 1582507944, 10, 'normal');
COMMIT;


--
-- 表的结构 `__PREFIX__gonglue_topiccomment`
--

CREATE TABLE IF NOT EXISTS `__PREFIX__gonglue_topiccomment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '话题ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `content` text NOT NULL COMMENT '内容',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`,`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题评论表';

BEGIN;
INSERT INTO `__PREFIX__gonglue_topiccomment` VALUES (1, 1, 0, 'zengzh', '', '我是评论', 0, 0, 1553606219, 1565316234, 'normal');
INSERT INTO `__PREFIX__gonglue_topiccomment` VALUES (9, 7, 7, '张明明', '', '俗话说哦的好呀，<span style=\"white-space:normal;\">俗话说哦的好呀，<span style=\"white-space:normal;\">俗话说哦的好呀，<span style=\"white-space:normal;\">俗话说哦的好呀</span></span></span>', 0, 0, 1582455245, 1582455245, 'normal');
COMMIT;