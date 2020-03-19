@include('layouts.nav')
<div class="container">
@if($message = Session::get('success'))
		<div class="alert alert-success" style="margin-top: 30px;">
			<p> {{ $message }} </p>
		</div>
	@endif
    <div class="card bg-light mt-3">
    
        <div class="card-header">
           Shah Blog
        </div>
        <div class="card-body">
            <form action="{{ route('import') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="file" name="file" class="form-control" required>
                <br>
                <button class="btn btn-success">Import Csv Data</button>
                <a class="btn btn-warning" href="{{ route('export') }}">Export Csv Data</a>
            </form>
        </div>

    </div>

<div>

<div class="card bg-light mt-3">
<table class="table table-bordered"> 
		<tr>
			<th colspan="3"> All Imported Data From Csv </th>
            <!-- <form action="#" method="POST"> -->

                        <a class="btn btn-danger" href="{{ route('delete') }}" style="width:100px; margin:20px;">Delete All</a> 
 			
					<!-- </form> -->
            
		</tr>
@foreach($csv as $key => $data)
<tr><td> {{ $data->csv_filename }} </td>
                
				<td> {{ $data->csv_header }} </td>
				<td> {{ $data->csv_data }} </td>  
                </tr>              
@endforeach

</table>


</div>


<a class="btn btn-success" href="/products" style="margin-top:20px;">Go Back -> </a>
    
</div>
</div>
   
</body>
</html>