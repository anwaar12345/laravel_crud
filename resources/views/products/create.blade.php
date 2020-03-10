@extends('products.layout')

@section('content')
	<div class="row">
		<div class="col-lg-12">
			<div class="pull-left">
				<h3> Add New Post </h3>
			</div>
			<div class="pull-right">
				<a class="btn btn-success" href="{{ route('products.index') }}"> Back to Post </a>
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

	<form action="{{ route('products.store')  }}" method="POST" enctype="multipart/form-data">
		@csrf
		<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Name:</strong>
					<input type="text" name="post" class="form-control" placeholder="New Post">
				</div>
			</div>
				<input type="hidden" value="{{ Auth::id() }}" name="uid">
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Detail:</strong>
					<textarea name="createdby" placeholder="Author" class="form-control"></textarea>
				</div>
			</div>

			<div class="col-lg-12">
				<div class="form-group">
					<strong>Post Images:</strong>
					<input type="file" name="images[]" class="form-control-file" multiple>
						
				</div>
			</div>


			<div class="col-lg-12">
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>
@endsection