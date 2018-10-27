<?php

namespace App\Model;
 
use Illuminate\Database\Eloquent\Model;

class GoodsSku extends Model
{
   //定义表名
   protected $table = 'goods_pingtai_sku';
    //定义主键
   protected $primaryKey='tbid';

   public function goods_sku()
   {
 		return $this->belongsTo('App\Model\Goods','goods_id','tbid');
   }
}
