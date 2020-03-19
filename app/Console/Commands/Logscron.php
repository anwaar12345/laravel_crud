<?php

namespace App\Console\Commands;
use App\requestlogg;
use Carbon\Carbon;
use Illuminate\Console\Command;

class Logscron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'Logs:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle(requestlogg $requestlogg)
    {
        //

        \Log::info("Cron is working fine!");

     

        /*

           Write your database logic we bellow:

           Item::create(['name'=>'hello new']);

        */

        // $requestlogg->query()->delete()->where('created_at', '<',Carbon::now()->subDays(3)); 
      \DB::table('requestloggs')->where('created_at', '<',Carbon::now()->subDays(3))->delete();

        $this->info('Logs::cron Command Run successfully!');
    }
}
