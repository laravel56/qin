<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Merchant extends Model
{
	  //定义表名
    protected $table = 'Merchant';
    //定义主键
    protected $primaryKey='tbid';
    //远程一对多
    public  function index()
    {	
     	/**
     	  	第一个参数是我们最终希望访问的模型名称，
     	  	第二个参数是中间模型的名称
     		第三个参数表示中间模型的外键名
     		第四个参数表示最终模型的外键名。
     		第五个参数表示本地键名
     		第六个参数表示中间模型的本地键名：
     	 */
		return $this->hasManyThrough("App\Model\Shop","App\Model\Admin",'Merchant','admin_id','tbid','tbid'); 

    }
	//多态关联
    public function commentable()
    {
        return $this->morphTo();
    }
}
