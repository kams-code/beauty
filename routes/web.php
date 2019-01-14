<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/',function(){
   $post = DB::select("SELECT * from clients limit 1")[0];
   dd($post->email);
   return DB::table('clients')->where('id','>=',1)->get(['nom','prenom']);
});*/
Auth::routes();

Route::get('/home', 'HomeController@index');

// ------ les routes de clients ---------
Route::resource('clients','clientController');

// ------- les routes de factures --------
Route::resource('factures','factureController');

// ------ les routes de tickets ------
Route::resource('tickets','ticketController');

// ----- les routes de reservations -------
Route::resource('reservations','reservationController');

// ------ les routes de produits ------
Route::resource('produits','produitController');
 
// ----- les routes de equipements -----
Route::resource('equipements','equipementController');

// ---- les routes de services ------
Route::resource('services','serviceController');

// ------ les routes de personnels ----
Route::resource('personnels','personnelController');

// ---- les routes de horaires ------
Route::resource('horaires','horaireController');

// ----- les routes de fournisseurs ----
Route::resource('fournisseurs','fournisseurController');

// ------ les routes de roles ------
Route::resource('roles','roleController');