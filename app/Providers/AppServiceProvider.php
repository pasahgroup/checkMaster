<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\myCompany;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //dd('register');
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        
         // Using view composer to set following variables globally
           view()->composer('*',function($view) {
            $view->with('user', Auth::user());
            $view->with('userx', User::all()); 
           // $view->with('xx', User::join('properties','users.property_id','properties.id')
           // ->select('properties.property_name')->first()); 
             $view->with('company', myCompany::where('status','Active')->first()); 
        });
    }
}
