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
		$data = Member::find(1)->index;
    	// var_dump($data);

    	



        return new UserResource($data);

    }
}
