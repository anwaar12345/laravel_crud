<!DOCTYPE html>
<html>
<head>
	<title>Shah Blog</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
</head>
<body>
@include('layouts.nav')
<div class="container">
<div class="row">
		<div class="col-lg-12">
			<div class="pull-left">
				<h3> make a Blog </h3>
			</div>
			<div class="pull-right" style="margin-top:10px; margin-bottom:10px;">
				<a class="btn btn-success" href="{{ route('products.create') }}"> Create New Post </a> &nbsp;&nbsp;   
				<a href="{{ url('/importExportView') }}" class="btn btn-success">Upload CSV</a> &nbsp;
				<a class="btn btn-success" href="{{ route('trash') }}"> Trash </a> 
				
			</div>
			<hr>
		</div>
	</div>

	@if($message = Session::get('success'))
		<div class="alert alert-success">
			<p> {{ $message }} </p>
		</div>
	@endif

	<table class="table table-bordered"> 
		<tr>
			<th> No </th>
			<th> Post </th>
			<th> Created By </th>
			 <th> Images </th>
			<th> Action </th>
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

				<td>
					<form action="{{ route('products.destroy', $product->id) }}" method="POST">
						<a class="btn btn-info" href="{{ route('products.show', $product->id) }}">Show</a>
						<a class="btn btn-primary" href="{{ route('products.edit', $product->id) }}">Edit</a>
						@csrf
						@method('DELETE')
						<button type="submit" class="btn btn-danger">Delete</button>

						
					</form>
					
					
				</td>	
				@php 
continue;
@endphp
	
						</tr>
		
		@endforeach
	</table>
	{{ $products->links() }}

</div>
</body>
</html>
