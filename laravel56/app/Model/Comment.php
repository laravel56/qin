<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
      //定义表名
    protected $table = 'comment';
    //定义主键
    protected $primaryKey='tbid';
    // 多态关联
    public function commentable()
    {
        return $this->morphTo();
    }
}
