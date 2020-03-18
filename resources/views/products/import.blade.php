@include('layouts.nav')
<div class="container">
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
    <a class="btn btn-success" href="/products" style="margin-top:20px;">Go Back -> </a>
</div>
   
</body>
</html>