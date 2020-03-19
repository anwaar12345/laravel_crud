<?php

namespace App\Imports;

use App\CsvData;
use Maatwebsite\Excel\Concerns\ToModel;

class CsvImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new CsvData([
            'csv_filename' => $row[0],
            'csv_header' => $row[1],
            'csv_data' => $row[2],
        ]);
        
    }
}
