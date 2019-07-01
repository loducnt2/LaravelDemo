<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use View;
use Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Muốn sử dụng View::share thì phải thư viện: use View; 
        // Muốn sử dụng Auth::check() thì phải use thư viện:  use Auth;
        //View::share('name1', 'Chung Nguyễn');

        /*if(Auth::check()) {
            view()->share("current_user", Auth::user());
        }*/

        View::composer('*', function ($view) {
            $view->with('current_user', Auth::user());
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
