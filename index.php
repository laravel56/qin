<?php
// if (!(defined('IN_IA'))) {
//     exit('Access Denied');
// }

class Reqkuaimai_EweiShopV2Model
{
    private $apiUrl = 'https://opensy.kuaimai.com/router/rest';
    private $appKey = '1712554';
    private $appSecret = 'f1e9a1bd3507cc722f40e7ac6d8b90a4';

    private function getBytes($string) {
        $bytes = '';
        for($i = 0; $i < strlen($string); $i++){
            $bytes .= ord($string[$i]);
        }
        return $bytes;
    }

    //生成签名
    private function sign($param)
    {
        ksort($param); //按索引排序

        /*echo '排完序之后：';
        var_dump($param);*/

        $string = '';
        $string .=  $this->appSecret; //首先拼接appSecret
        foreach ($param as $k => $p) { //拼接各个参数
            $string .= ($k . $p);
        }
        $string .= $this->appSecret;

        /*echo '拼接各种参数之后：';
        print_r($string);*/

        /*$string = $this->getBytes($string);
        echo '转化成字节流之后：'. $string;*/

        $string = md5($string); //md5加密

        /*echo 'md5之后：';
        print_r($string);*/
        return $string;


        /*echo '16进制之后：';
        print_r(bin2hex($string));

        return bin2hex($string);//转化为16进制*/
    }

    /**
     * 发送post请求
     * @param string $url 请求地址
     * @param array $post_data post键值对数据
     * @return string
     */
    function send_post($url, $post_data) {

        $postdata = http_build_query($post_data);
        $options = array(
            'http' => array(
                'method' => 'POST',
                'header' => 'Content-type:application/x-www-form-urlencoded',
                'content' => $postdata,
                'timeout' => 15 * 60 // 超时时间（单位:s）
            )
        );
        $context = stream_context_create($options);
        $result = file_get_contents($url, false, $context);

        return $result;
    }
    //请求数据
    public function req($param){
        $param['timestamp'] = time() * 1000; //php里时间戳是10位数，而java是13位？所以，乘以1000
        $param['appKey'] = $this->appKey;
        $param['format'] = 'json';
        $param['simplify'] = 'true';
        $param['signMethod'] = 'md5';
//echo '请求参数：';var_dump($param);
        $param['sign'] = $this->sign($param);//生成签名
         $res_arr = $this->send_post($this->apiUrl,$param);
        return $res_arr;
    }
}
  $dome = new Reqkuaimai_EweiShopV2Model();

$a= $dome->req(['method'=>'raycloud.kmsy.trade.fullinfo.list.find','v'=>'1.0','fields'=>'tid,shopId,status,order.tid,order.oid,paymentLog.tid,paymentLog.created']);
var_dump($a);
?>