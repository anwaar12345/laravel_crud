@extends('products.layout')

@section('content')
	<div class="row">
		<div class="col-lg-12">
			<div class="pull-left">
				<h3> Edit your Post </h3>
			</div>
			<div class="pull-right">
				<a class="btn btn-success" href="{{ route('products.index') }}"> Back to Posts </a>
			</div>
		</div>
	</div>

	@if($errors->any())
		<div class="alert alert-danger">
			<strong>Oopps! </strong> Something went wrong.
			<ul>
				@foreach($errors->all() as $error)
					<li> {{ $error }} </li>
				@endforeach
			</ul>
		</div>
	@endif

	<form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
		@csrf
		@method("PUT")
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Post:</strong>
					<input type="text" name="post" value="{{ $product->post }}" class="form-control" placeholder="Update">
				</div>
			</div>
			<input type="hidden" value="{{ Auth::id() }}" name="uid">
			<input type="hidden" value="{{ $product->images }}" name="images">
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Created By:</strong>
					<textarea name="createdby" placeholder="Author" class="form-control">{{ $product->createdby }}</textarea>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Post Images:</strong>
					@foreach( json_decode($product->images,true)  as $img)
						
						<img src="{{asset('images/')}}/{{$img}}" width="100px">
						
									@endforeach
					<input type="file" name="images[]" class="form-control-file" multiple>
						
				</div>
			</div>


			<div class="col-lg-12">
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>

@endsection