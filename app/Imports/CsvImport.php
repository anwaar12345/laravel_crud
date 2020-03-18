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
        $i = 0;

        return new CsvData([
            //

            'csv_filename' => $row[$i],
            'csv_header' => $row[$i],
            'csv_data' => $row[$i],
        ]);
    }
}
