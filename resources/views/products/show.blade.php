@extends('products.layout')

@section('content')
	

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
	<table class="table table-bordered" >

	@foreach( json_decode($product->images,true)  as $img)
						
						<img src="{{asset('images/')}}/{{$img}}" style="border: 1px solid green; margin-top: 30px; width: 400px;">
						
									@endforeach
</table>

	</div>
	</div>
	</div>
	<div class="row">
		<div class="col-lg-12">

			<div class="pull-right">
				<a class="btn btn-success" href="{{ route('products.index') }}"> Back to Posts </a>
			</div>
		</div>
	</div>
@endsection