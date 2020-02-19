<?php

return array(
    array(
        'name'    => 'name',
        'title'   => '博客名称',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '婚庆攻略',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'enname',
        'title'   => '博客英文名称',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => 'FastAdmin\'s Gonglue',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'theme',
        'title'   => '皮肤名称',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => 'default',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'keywords',
        'title'   => '关键字',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => 'FastAdmin,FastAdmin博客,后台博客,开发博客',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'description',
        'title'   => '描述',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '基于ThinkPHP5和Bootstrap的极速后台开发框架',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'intro',
        'title'   => '个人简介',
        'type'    => 'text',
        'content' =>
            array(),
        'value'   => 'FastAdmin是一款基于ThinkPHP5和Bootstrap的极速后台开发框架，其强大的CRUD一键生成功能和丰富的插件扩展，让你的后台开发更加简单、快速。',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'listpagesize',
        'title'   => '列表每页显示数量',
        'type'    => 'number',
        'content' =>
            array(),
        'value'   => '10',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'commentpagesize',
        'title'   => '评论每页显示数量',
        'type'    => 'number',
        'content' =>
            array(),
        'value'   => '10',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'avatar',
        'title'   => '头像',
        'type'    => 'image',
        'content' =>
            array(),
        'value'   => '/assets/addons/gonglue/img/avatar.png', //没有改变路径TODO
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'donate',
        'title'   => '打赏图片',
        'type'    => 'image',
        'content' =>
            array(),
        'value'   => '/assets/addons/gonglue/img/qrcode.png', //没有改变路径TODO
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'logo',
        'title'   => 'Logo图片',
        'type'    => 'image',
        'content' =>
            array(),
        'value'   => '/assets/addons/gonglue/img/logo.jpg', //没有改变路径TODO
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'background',
        'title'   => '背景图片',
        'type'    => 'image',
        'content' =>
            array(),
        'value'   => 'https://cdn.fastadmin.net/uploads/20180507/1a81b9aaa3d52367b02b844e6437cf74.jpg',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'copyright',
        'title'   => '底部版权信息',
        'type'    => 'text',
        'content' =>
            array(),
        'value'   => 'Copyright @ 2017~2019 Theme design by jeanstudio',
        'rule'    => '',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'domain',
        'title'   => '绑定二级域名前缀',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '',
        'rule'    => '',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'iscommentaudit',
        'title'   => '发表评论审核',
        'type'    => 'radio',
        'content' =>
            array(
                1  => '全部审核',
                0  => '无需审核',
                -1 => '仅含有过滤词时审核',
            ),
        'value'   => '-1',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'audittype',
        'title'   => '审核方式',
        'type'    => 'radio',
        'content' =>
            array(
                'local'    => '本地',
                'baiduyun' => '百度云',
            ),
        'value'   => 'local',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '如果启用百度云，请输入百度云AI平台应用的AK和SK',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'aip_appid',
        'title'   => '百度AI平台应用Appid',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '',
        'rule'    => '',
        'msg'     => '',
        'tip'     => '百度云AI开放平台应用AppId',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'aip_apikey',
        'title'   => '百度AI平台应用Apikey',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '',
        'rule'    => '',
        'msg'     => '',
        'tip'     => '百度云AI开放平台应用ApiKey',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'aip_secretkey',
        'title'   => '百度AI平台应用Secretkey',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '',
        'rule'    => '',
        'msg'     => '',
        'tip'     => '百度云AI开放平台应用Secretkey',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'searchtype',
        'title'   => '搜索方式',
        'type'    => 'radio',
        'content' =>
            [
                'local'     => '本地搜索，采用Like(无需配置,效率低)',
                'xunsearch' => '采用Xunsearch全文搜索(需安装插件+配置)',
            ],
        'value'   => 'local',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '如果启用Xunsearch全文搜索，需安装Xunsearch插件并配置Xunsearch服务器',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'pagemode',
        'title'   => '分页模式',
        'type'    => 'radio',
        'content' =>
            [
                'normal'   => '普通分页模式',
                'infinite' => '采用无限加载更多模式',
            ],
        'value'   => 'infinite',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'commentavatarmode',
        'title'   => '评论头像模式',
        'type'    => 'radio',
        'content' =>
            [
                'letter'   => '根据名称使用字母头像',
                'gravatar' => '根据Email使用Gravatar头像',
            ],
        'value'   => 'letter',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'rewrite',
        'title'   => '伪静态',
        'type'    => 'array',
        'content' =>
            array(),
        'value'   =>
            array(),
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
);