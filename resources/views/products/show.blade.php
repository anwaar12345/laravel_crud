@extends('products.layout')

@section('content')
	<div class="row">
		<div class="col-lg-12">
			<div class="pull-left">
				<h3> your Clicked Post</h3>
			</div>
			<div class="pull-right">
				<a class="btn btn-success" href="{{ route('products.index') }}"> Back to Posts </a>
			</div>
		</div>
	</div>

	<div class="row">
			<div class="col-lg-12">
				<div class="form-group">
					<strong>Post:</strong>
					{{ $product->post }}
				</div>
			</div>

			<div class="col-lg-12">
				<div class="form-group">
					<strong>Created By:</strong>
					{{ $product->createdby }}
				</div>
			</div>
	</div>
<strong>
post images:
</strong>	
	<div class="row">
	<div class="col-lg-12">
	<div class="table-responsive">
	<table class="table table-bordered">

	@foreach( json_decode($product->images,true)  as $img)
						
						<img src="{{asset('images/')}}/{{$img}}" width="100px">
						
									@endforeach
</table>

	</div>
	</div>
	</div>
@endsection