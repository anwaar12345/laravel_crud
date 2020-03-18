<?php
   
   namespace App\Http\Controllers;
  
   use Illuminate\Http\Request;
   use App\Exports\CsvExport;
   use App\Imports\CsvImport;
   use Maatwebsite\Excel\Facades\Excel;
     
   class MyController extends Controller
   {
       /**
       * @return \Illuminate\Support\Collection
       */
       public function importExportView()
       {
          return view('products.import');
       }
      
       /**
       * @return \Illuminate\Support\Collection
       */
       public function export() 
       {
           return Excel::download(new CsvExport, 'CsvData.xlsx');
       }
      
       /**
       * @return \Illuminate\Support\Collection
       */
       public function import(Request $request) 
       {
        //    dd($request);
           Excel::import(new CsvImport,$request->file('file'));
              
           return back();
       }
}