<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    
    //定义表名
   protected $table = 'admin_member';
   //定义主键
   protected $primaryKey='tbid';

   public function index()
   {
   	  //第一参数 模型  第二参数 外键字段 
   	  //第三参数 Goods 表的 id 值去 GoodsSku 表中查询 goods_id 与之匹配的 GoodsSku 记录
       return $this->hasMany('App\Model\Shop','admin_id','tbid');

   }

}
