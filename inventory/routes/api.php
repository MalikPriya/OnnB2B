<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\CollectionController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/home', 'Admin\AdminController@home')->name('home');
//category section
Route::get('category', 'Api\CategoryController@list');
Route::get('category/show/{id}', 'Api\CategoryController@show');
Route::post('category/create', 'Api\CategoryController@store');
Route::patch('category/update/{id}', 'Api\CategoryController@update');
Route::delete('category/delete/{id}', 'Api\CategoryController@delete');

//collection section
Route::get('collection', 'Api\CollectionController@list');
Route::get('collection/show/{id}', 'Api\CollectionController@show');
Route::post('collection/create', 'Api\CollectionController@store');
Route::patch('collection/update/{id}', 'Api\CollectionController@update');
Route::delete('collection/delete/{id}', 'Api\CollectionController@delete');

//product section
Route::get('products', 'Api\ProductController@list');
Route::get('products/show/{id}', 'Api\ProductController@show');
Route::get('products-color-size/show/{productid}', 'Api\ProductController@colorsize');
Route::get('products-color/view/{productid}', 'Api\ProductController@productcolor');
Route::get('products-size/view/{productid}/{colorid}', 'Api\ProductController@productsize');
//product details by slug
Route::get('products/view/{slug}', 'Api\ProductController@view');

//use of products
Route::get('products/{only_for}', 'Api\ProductController@productuse');


Route::post('products/create', 'Api\ProductController@store');
Route::patch('products/update{id}', 'Api\ProductController@update');
Route::delete('products/delete/{id}', 'Api\ProductController@delete');


//product details by category Id
Route::get('category/{categoryId}/products', 'Api\ProductController@productlist');


//all color list
Route::get('color', 'Api\ProductController@color');


//product details by collection Id



Route::get('collection/{collectionId}/products','Api\ProductController@productindex');

//product color list
Route::get('color/{productId}/products','Api\ProductController@productcolor');
// Route::get('products/{id}', 'Api\ProductController@show');
// Route::post('products', 'Api\ProductController@store');
// Route::put('products/{id}', 'Api\ProductController@update');
// Route::delete('products/{id}', 'Api\ProductController@delete');


//offer section


Route::get('offers', 'Api\OfferController@list');
Route::get('offers/show/{id}', 'Api\OfferController@show');
Route::post('offers/create', 'Api\OfferController@store');
Route::patch('offers/update/{id}', 'Api\OfferController@update');
Route::delete('offers/delete/{id}', 'Api\OfferController@delete');


//store section
Route::get('store', 'Api\StoreController@list');
Route::get('store/show/{id}', 'Api\StoreController@show');
Route::post('store/create', 'Api\StoreController@store');
Route::patch('store/update/{id}', 'Api\StoreController@update');
Route::delete('store/delete/{id}', 'Api\StoreController@delete');
//store visit
Route::get('store-visit', 'Api\ActivityController@storeVisitIndex');
Route::post('store-visit/create', 'Api\ActivityController@storeVisitStore');
Route::get('latest/store-visit/{storeId}', 'Api\ActivityController@storeVisitlist');
//distributor create


Route::get('distributor', 'Api\UserController@distributorlist');
Route::get('distributor/show/{id}', 'Api\UserController@distributorshow');
Route::post('distributor/create', 'Api\UserController@distributorstore');

//activity log
Route::get('useractivity', 'Api\ActivityController@index');
Route::get('useractivity/show/{id}', 'Api\ActivityController@show');
Route::get('useractivity/view', 'Api\ActivityController@view');
Route::post('useractivity/create', 'Api\ActivityController@store');
Route::patch('useractivity/update/{id}','Api\ActivityController@update');
Route::delete('useractivity/delete/{id}','Api\ActivityController@delete');


//day start
Route::get('day-start', 'Api\UserController@daylist');
Route::get('day-start/show/{id}', 'Api\UserController@dayshow');
Route::get('day-start/view/{id}', 'Api\UserController@startdayshow');
Route::post('day-start/create', 'Api\UserController@daystore');
Route::patch('day-start/update/{id}', 'Api\UserController@dayupdate');
Route::delete('day-start/delete/{id}', 'Api\UserController@daydelete');
//day end
Route::get('day-end', 'Api\UserController@enddaylist');
Route::get('day-end/show/{id}', 'Api\UserController@dayshow');
Route::get('day-end/view/{id}', 'Api\UserController@enddayshow');
Route::post('day-end/create', 'Api\UserController@enddaystore');
Route::patch('day-end/update/{id}', 'Api\UserController@dayupdate');
Route::delete('day-end/delete/{id}', 'Api\UserController@daydelete');

//user attendance
Route::get('user-attendance', 'Api\UserController@index');
Route::get('user-attendance/show/{id}', 'Api\UserController@show');
Route::post('user-attendance/create', 'Api\UserController@store');
Route::patch('user-attendance/update/{id}', 'Api\UserController@update');
Route::delete('user-attendance/delete/{id}', 'Api\UserController@delete');

Route::post('get-otp', 'Api\UserController@logincheck');
Route::post('login-with-otp', 'Api\UserController@otpcheck');

Route::get('user-profile/{id}', 'Api\userProfileController@myprofile');

Route::patch('update-profile/{id}', 'Api\userProfileController@updateprofile');
//user notification
Route::get('user-notification', 'Api\NotificationController@index');
Route::get('user-notification/show/{id}', 'Api\NotificationController@show');
Route::post('user-notification/create', 'Api\NotificationController@store');
Route::patch('user-notification/update/{id}', 'Api\NotificationController@update');
Route::delete('user-notification/delete/{id}', 'Api\NotificationController@delete');




//no order reason


Route::get('no-order-reason', 'Api\StoreController@noorderlist');

Route::post('no-order-reason/update', 'Api\StoreController@noorder');

//cart list
Route::get('cart/list', 'Api\CartController@list');
Route::get('cart/details/{id}', 'Api\CartController@show');
Route::get('cart/user/{id}', 'Api\CartController@showByUser');

//addTocart
Route::post('addTocart', 'Api\CartController@addcart');
Route::post('bulkAddcart', 'Api\CartController@bulkAddcart');
Route::post('simpleBulkAddcart', 'Api\CartController@simpleBulkAddcart');

//order-place
Route::post('place-order', 'Api\OrderController@placeorder');
Route::post('place-order-update', 'Api\OrderController@placeOrderUpdate');
//quantity update
Route::post('cart/qty-update/{id}/{type}', 'Api\CartController@qtyUpdate');
//cart -delete
Route::get('cart/delete/{id}', 'Api\CartController@delete');

//product -order
Route::get('order', 'Api\OrderController@list');
Route::get('order/show/{id}', 'Api\OrderController@show');
Route::get('order/view/{userid}', 'Api\OrderController@view');
Route::post('order/create', 'Api\OrderController@store');
Route::patch('order/update/{id}', 'Api\OrderController@update');
Route::delete('order/delete/{id}', 'Api\OrderController@delete');

//total sales report
Route::get('report/{storeId}', 'Api\OrderController@report');
//product id wise order
Route::get('order/{storeId}/{productId}', 'Api\OrderController@orderproduct');

//Order listing for sales person date wise filter
Route::post('filter/date', 'Api\OrderController@datefilter');

//Order listing for sales person filter by store
Route::get('filter/store/{id}', 'Api\OrderController@storefilter');
//Order listing for sales person filter by order id

Route::get('filter/order/{id}', 'Api\OrderController@orderfilter');

// search

Route::post('search', 'Api\SearchController@index')->name('index');

//search store

Route::post('search-store', 'Api\SearchController@searchStore')->name('instore-search');


//app terms-about-privacy
Route::get('/settings', 'Api\AboutController@about');
Route::get('/settings/show/{id}', 'Api\AboutController@show');




// file upload
Route::post('file-upload','Api\ProductController@fileUpload');
Route::get('area/list','Api\ProductController@areaList');
Route::post('distributor/list','Api\ProductController@distributorList');
// Route::post('distributor/list','Api\ProductController@distributorList');
Route::post('distributor/visit/start','Api\ProductController@distributorVisitStart');
Route::post('distributor/visit/end','Api\ProductController@distributorVisitEnd');
Route::post('distributor/visit/status','Api\ProductController@distributorVisitStatus');
Route::get('catalogue/list','Api\ProductController@catalogueList');



