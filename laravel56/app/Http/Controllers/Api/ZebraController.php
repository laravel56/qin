<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Model\Goods;
use App\Model\GoodsSku;
use App\Model\Admin;
use App\Model\Shop;
use App\Model\Member;
use App\Model\Merchant;
use App\Model\Comment;
use App\Model\Post;
use App\Http\Resources\UserResource;
class ZebraController extends Controller
{
      public function list()
    {
    	// 一对一
    	// $data = Goods::find(84)->index;
    	// var_dump($data);
    	
    	// 定义相对的关联(一对一)
    	// $data = GoodsSku::find(5711)->goods_sku;
    	// var_dump($data);
  
    	// 一对多
    	// $data = Admin::find(84)->index;
    	// // var_dump($data);

    	// 一对多（逆向）
    	// $data = shop::find(21)->index;
    	// var_dump($data);

    	// 多对多
		// $data = Member::find(1)->index;
        // var_dump($data);
        // dd($data);
    	// 多对多（逆向）
		// $data = Shop::find(21)->index;
        // var_dump($data);

        //获取中间表字段
		// foreach ($data as $value) {
  //           $a =  $value->pivot;
  //           dd($a);
  //       }
        
        //远程一对多
        // $data = Merchant::find(1)->index;
        // var_dump($data);

        //多态关联
        // $data = Comment::find(1)->commentable;
        // var_dump($data);
        // return new UserResource($data);

    }
}
