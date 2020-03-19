<?php
   
   namespace App\Http\Controllers;
  
   use Illuminate\Http\Request;
   use App\Exports\CsvExport;
   use App\Imports\CsvImport;
   use Maatwebsite\Excel\Facades\Excel;
   use App\CsvData;     
   class MyController extends Controller
   {
       /**
       * @return \Illuminate\Support\Collection
       */
       public function importExportView()
       {
        $csv = CsvData::get();
          return view('products.import',compact('csv'));
       }
      
       /**
       * @return \Illuminate\Support\Collection
       */
       public function export() 
       {
           return Excel::download(new CsvExport, 'CsvData.csv');
       }
      
       /**
       * @return \Illuminate\Support\Collection
       */
       public function import(Request $request) 
       {
        //    dd($request);
    // print_r($request->file('file'));
        // exit;
           Excel::import(new CsvImport,$request->file('file'));
              
           return back()->with('success', 'Csv Data Uploaded Successfully!');
       }



       public function destroy(CsvData $csvdata)
       {
           $csvdata->query()->delete();
   
           return back()->with('success', 'CSV Data Deleted Successfully!');
       }
   

}