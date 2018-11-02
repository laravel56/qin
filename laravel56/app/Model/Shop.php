<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    
    //定义表名
   protected $table = 'Shop';
   //定义主键
   protected $primaryKey='tbid';

   public function index()
   {
     //第一参数 模型 第二参数 两表关联中间表  第三参数 当前表在中间表中关联字段 第四参数 关联模型表在中间表中关联字段
       return $this->belongsToMany('App\Model\Member','shop_member','shop_id','member_id');
   }
}
