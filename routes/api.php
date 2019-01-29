<?php
use Illuminate\Http\Request;


Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::get('signup/activate/{token}', 'AuthController@signupActivate');

    Route::group([
      'middleware' => 'auth:api'
    ], function() {
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
    });
});

Route::group([
    'namespace' => 'Auth',
    'middleware' => 'api',
    'prefix' => 'password'
], function () {
    Route::post('create', 'PasswordResetController@create');
    Route::get('find/{token}', 'PasswordResetController@find');
    Route::post('reset', 'PasswordResetController@reset');
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('users/profile', 'UsersController@profile');
    Route::resource('users', 'UsersController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
    Route::post('users/pause', 'UsersController@pause');
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::resource('roles', 'RolesController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
    Route::get('role', 'RolesController@allRoles');
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::resource('permissions', 'PermissionsController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
    Route::get('permission', 'PermissionsController@allPermissions');
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('location', 'LocationController@getCurrent');
    Route::get('locations', 'LocationController@index');
    Route::get('location/{id}', 'LocationController@get');
    Route::post('location', 'LocationController@add');
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::post('notices/pause', 'NoticeController@pause');
    Route::get('notices/read', 'NoticeController@read');
    Route::resource('notices', 'NoticeController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('attendance/student', 'AttendanceController@student');
    Route::get('attendance/mobile', 'AttendanceController@allMobile');
    Route::resource('attendance', 'AttendanceController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::resource('materials', 'StudyMaterialsController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::resource('subjects', 'SubjectsController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});


Route::post('payments/notify', 'PaymentController@notify');
Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('payments/student', 'PaymentController@student');
    Route::get('payments/history', 'PaymentController@history');
    Route::get('payments/pay', 'PaymentController@pay');
    Route::resource('payments', 'PaymentController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('timetable/mobile', 'TimeTableController@mobile');
    Route::resource('timetable', 'TimeTableController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('results/mobile', 'ExamResultContoller@mobile');
    Route::resource('results', 'ExamResultContoller', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

Route::group([
    'middleware' => 'auth:api'
], function () {
    Route::get('class/teacher', 'ClassController@teacher');
    Route::resource('class', 'ClassController', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
});

