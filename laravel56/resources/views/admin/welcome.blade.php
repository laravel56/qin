<!DOCTYPE html>
<html>
<head>
@include('admin.common._js')

@include('admin.common._css')

</head>
<body>
<a href="{{url('user')}}">sssssssssssss</a>
<button onclick="location.reload()">刷新</button>
<button id='aa'>trtttt</button>
<script type="text/javascript">
$(function(){
	$('#aa').click(function(){
		$.ajax({
			url:'stores',
			type:'post',
			data:{
				'_token':'{{csrf_token()}}',
				'title':'1',
				'body':""
			}
		}).done(function(e){
			console.log(e);
		});
	});
})
	
</script>

</body>
</html>