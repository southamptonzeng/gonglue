<?php

namespace app\admin\controller\gonglue;

use app\common\controller\Backend;
use think\Request;

/**
 * 内容管理
 *
 * @icon fa fa-circle-o
 */
class Content extends Backend
{

    /**
     * Content模型对象
     * @var \app\admin\model\gonglue\Content
     */
    protected $model = null;
    protected $noNeedLogin =
        [
            'category',
            'categoryContent',
            'viewContent',
            'viewComment',
            'addComment',
            'addContent',
            'searchContent',
            'likeContent',
            'likeComment',
            'contentLikeStatus',
            'contentCommentLikeStatus'

        ];

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\gonglue\Content;
        $this->view->assign("statusList", $this->model->getStatusList());
    }

    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */

    /**
     * 获取分类
     */
    public function category(Request $request)
    {
        $category = new \app\admin\model\gonglue\Contentcategory();
        $page = $request->param('page');
        $num = $request->param('num');

        $data = $category->page($page, $num)->select();
        return json($data);
    }

    /**
     * 具体分类下的文章
     */
    public function categoryContent(Request $request)
    {
        $content = new \app\admin\model\gonglue\Content();
        $category_id = $request->param('category_id');
        $num = $request->param('num');
        $page = $request->param('page');
        return json($content
            ->where('category_id', $category_id)
            ->page($page, $num)->select());

    }

    /**
     * 浏览单个博文
     */
    public function viewContent(Request $request)
    {

        $data = $request->param('content_id');

        //计算该content评论条数
        $contentComment = new \app\admin\model\gonglue\Contentcomment();
        $count = $contentComment->where('content_id', $data)->count();

        //更新评论条数
        $content = new \app\admin\model\gonglue\Content();
        $content->where('id', $data)->setField('comments', $count);

        $viewData = $content->where('id', $data)->find();
        $content->where('id', $data)->setInc('views');
        return json($viewData);
    }

    /**
     * 浏览博文的评论
     */
    public function viewComment(Request $request) {
        $data = $request->param('content_id');
        $num = $request->param('num');
        $page = $request->param('page');

        $contentComment = new \app\admin\model\gonglue\Contentcomment();
        $commentData = $contentComment->where('content_id', $data)->page($page, $num)->select();
        return json($commentData);
    }

    /**
     * 添加评论
     */
    public function addComment(Request $request)
    {

        $data = $request->param();
        $contentComment = new \app\admin\model\gonglue\Contentcomment();
        $result = $contentComment->addComment($data);
        if ($result == 1) {
            $content_id = $request->param('content_id');
            $content = new \app\admin\model\gonglue\Content();
            $content->where('id', $content_id)->setInc('comments');

            return json(
                [
                    'code' => 1,
                    'msg' => '评论添加成功'
                ]
            );
        } else {
            $this->error($result);
        }

    }

    /**
     * 添加文章
     */
    public function addContent(Request $request)
    {

        $data = $request->param();
        $content = new \app\admin\model\gonglue\Content();
        $result = $content->addContent($data);
        if ($result == 1) {
            return json(
                [
                    'code' => 1,
                    'msg' => '文章添加成功'
                ]
            );
        } else {
            $this->error($result);
        }

    }

    /**
     * 搜索文章
     */
    public function searchContent(Request $request)
    {
        $keywords = $request->param('keywords');  //获取搜索关键字
        $page = $request->param('page');
        $num = $request->param('num');

        $where['title|content'] = array('like','%'.$keywords.'%');  //用like条件搜索title和content两个字段
        $Content = new \app\admin\model\gonglue\Content();
        $data =$Content->where($where)->page($page, $num)->select();
        return json($data);
    }

    /**
     * 文章点赞
     */
    public function likeContent(Request $request) {

        $data = [
            'content_id' => $request->param('content_id'),
            'username' => $request->param('username')
        ];

        $content = new \app\admin\model\gonglue\Content();
        $content->where('id', $data['content_id'])->setInc('likes');

        $contentLike =new \app\admin\model\gonglue\Contentlike();
        $contentLike->save($data);

        return json(
            [
                'code' => 1,
                'msg' => '点赞成功'
            ]
        );
    }

    /**
     * 文章评论点赞
     */
    public function likeComment(Request $request) {
        $data = [
            'comment_id' => $request->param('comment_id'),
            'username' => $request->param('username')
        ];

        $comment = new \app\admin\model\gonglue\Contentcomment();
        $comment->where('id', $data['comment_id'])->setInc('likes');

        $contentCommentLike = new \app\admin\model\gonglue\Contentcommentlike();
        $contentCommentLike->save($data);

        return json(
            [
                'code' => 1,
                'msg' => '点赞成功'
            ]
        );
    }

    /**
     * 内容点赞状态
     */
    public function contentLikeStatus(Request $request) {
        $content_id = $request->param('content_id');
        $username = $request->param('username');

        $contentLike =new \app\admin\model\gonglue\Contentlike();
        $res = $contentLike->where('content_id', $content_id)->where('username', $username)->find();

        if (empty($res)) {
            return json([
                'code' => 0,
                'msg' => ''
            ]);
        } else {
            return json(
                [
                    'code' => 1,
                    'msg' => ''
                ]
            );
        }

    }

    /**
     * 话题评论点赞状态
     */
    public function contentCommentLikeStatus(Request $request) {
        $comment_id = $request->param('comment_id');
        $username = $request->param('username');

        $contentCommentLike = new \app\admin\model\gonglue\Contentcommentlike();
        $res = $contentCommentLike->where('comment_id', $comment_id)->where('username', $username)->find();

        if (empty($res)) {
            return json([
                'code' => 0,
                'msg' => ''
            ]);
        } else {
            return json(
                [
                    'code' => 1,
                    'msg' => ''
                ]
            );
        }

    }
}