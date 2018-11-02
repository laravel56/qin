<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
	  //定义表名
    protected $table = 'video';
    //定义主键
    protected $primaryKey='tbid';
    public function comments()
    {
        return $this->morphMany('App\Model\Comment', 'commentable');
    }
}
