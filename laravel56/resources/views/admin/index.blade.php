

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
</head>
<body class="hold-transition skin-blue fixed sidebar-mini">
<div class="wrapper" >
  
<!-- 头部 -->
@include('admin.common._css')
<!-- header -->
@include('admin.common._header')
  <!-- 左侧 -->
@include('admin.common._left')
<!-- 内容部分 -->
  <div class="content-wrapper" >    
    <section class="content-header cc-header"  style="border-bottom: 1px solid #999;" >
      <h1>Dashboard</h1>
      <ol class="breadcrumb" style="padding-top: 47px;">
        <li onclick="location.reload()"><a href="#"><i class="fa fa-refresh"></i>刷新 </a></li>
      </ol>
    </section>
     <section class="content" >
     <iframe   id="contentiframe"  name="menuFrame" src='{{url("$project/welcome")}}' style="overflow:visible;" scrolling="auto" frameborder="no" width="100%"></iframe>
   </section>
    
  </div>

  <!-- 底部 -->
@include('admin.common._footer')
  <!-- 右侧设置 -->
@include('admin.common._js')
  <div class="control-sidebar-bg"></div>
</div>
</body>
</html>
