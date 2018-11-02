<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	  //定义表名
    protected $table = 'post';
    //定义主键
    protected $primaryKey='tbid';
     public function comments()
    {
        return $this->morphMany('App\Model\Comment', 'commentable');
    }
}
