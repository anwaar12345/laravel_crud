<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trash</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
</head>
<body>
@include('layouts.nav')
    <div class="container" style="margin-top:50px;">
	<table class="table table-bordered"> 
		<tr>
			<th> No </th>
			<th> Post </th>
			<th> Created By </th>
			 <th> Images </th>

		</tr>

		@foreach($products as $key => $product)
			<tr>
				<td> {{ $product->id }} </td>
				<td> {{ $product->post }} </td>
				<td> {{ $product->createdby }} </td>
				<td>	
				<?php
		if($product->images){
		?>
				@foreach( json_decode($product->images,true)  as $img)
 				
				<img src="{{asset('images/')}}/{{$img}}" width="100px">
	
			@endforeach
		<?php }else{
			echo "No Data"; 
		} ?>
			</td>

				@php 
continue;
@endphp
	
						</tr>
		
	
	@endforeach

	</table>
	{{ $products->links() }}
	<a href="/products" class="btn btn-success">Back To Previous Page</a>
</div>
</body>
</html>