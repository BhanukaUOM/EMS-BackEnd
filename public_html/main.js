(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"],{

/***/ "./src/$$_lazy_route_resource lazy recursive":
/*!**********************************************************!*\
  !*** ./src/$$_lazy_route_resource lazy namespace object ***!
  \**********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncaught exception popping up in devtools
	return Promise.resolve().then(function() {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = "./src/$$_lazy_route_resource lazy recursive";

/***/ }),

/***/ "./src/app/app-routing.module.ts":
/*!***************************************!*\
  !*** ./src/app/app-routing.module.ts ***!
  \***************************************/
/*! exports provided: AppRoutingModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppRoutingModule", function() { return AppRoutingModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./services/afterlogin.service */ "./src/app/services/afterlogin.service.ts");
/* harmony import */ var _services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./services/beforelogin.service */ "./src/app/services/beforelogin.service.ts");
/* harmony import */ var _components_dashboard_dashboard_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./components/dashboard/dashboard.component */ "./src/app/components/dashboard/dashboard.component.ts");
/* harmony import */ var _components_home_home_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./components/home/home.component */ "./src/app/components/home/home.component.ts");
/* harmony import */ var _components_users_users_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./components/users/users.component */ "./src/app/components/users/users.component.ts");
/* harmony import */ var _components_login_login_component__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./components/login/login.component */ "./src/app/components/login/login.component.ts");
/* harmony import */ var _components_signup_signup_component__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./components/signup/signup.component */ "./src/app/components/signup/signup.component.ts");
/* harmony import */ var _components_password_request_reset_request_reset_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./components/password/request-reset/request-reset.component */ "./src/app/components/password/request-reset/request-reset.component.ts");
/* harmony import */ var _components_password_response_reset_response_reset_component__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./components/password/response-reset/response-reset.component */ "./src/app/components/password/response-reset/response-reset.component.ts");
/* harmony import */ var _components_signup_confrim_signup_confrim_component__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! ./components/signup-confrim/signup-confrim.component */ "./src/app/components/signup-confrim/signup-confrim.component.ts");
/* harmony import */ var _components_roles_roles_component__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! ./components/roles/roles.component */ "./src/app/components/roles/roles.component.ts");
/* harmony import */ var _components_permissions_permissions_component__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! ./components/permissions/permissions.component */ "./src/app/components/permissions/permissions.component.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};














var appRoutes = [
    {
        path: '',
        component: _components_home_home_component__WEBPACK_IMPORTED_MODULE_5__["HomeComponent"],
        canActivate: [_services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__["BeforeloginService"]]
    },
    {
        path: '',
        component: _components_dashboard_dashboard_component__WEBPACK_IMPORTED_MODULE_4__["DashboardComponent"],
        canActivate: [_services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__["AfterloginService"]]
    },
    {
        path: 'login',
        component: _components_login_login_component__WEBPACK_IMPORTED_MODULE_7__["LoginComponent"],
        canActivate: [_services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__["BeforeloginService"]]
    },
    {
        path: 'dashboard',
        component: _components_dashboard_dashboard_component__WEBPACK_IMPORTED_MODULE_4__["DashboardComponent"],
        canActivate: [_services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__["AfterloginService"]]
    },
    {
        path: 'reset-password',
        component: _components_password_request_reset_request_reset_component__WEBPACK_IMPORTED_MODULE_9__["RequestResetComponent"],
        canActivate: [_services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__["BeforeloginService"]]
    },
    {
        path: 'reset-password-submit',
        component: _components_password_response_reset_response_reset_component__WEBPACK_IMPORTED_MODULE_10__["ResponseResetComponent"],
        canActivate: [_services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__["BeforeloginService"]]
    },
    {
        path: 'signup',
        component: _components_signup_signup_component__WEBPACK_IMPORTED_MODULE_8__["SignupComponent"],
        canActivate: [_services_beforelogin_service__WEBPACK_IMPORTED_MODULE_3__["BeforeloginService"]]
    },
    {
        path: 'signup/activate',
        component: _components_signup_confrim_signup_confrim_component__WEBPACK_IMPORTED_MODULE_11__["SignupConfrimComponent"],
    },
    {
        path: 'users',
        component: _components_users_users_component__WEBPACK_IMPORTED_MODULE_6__["UsersComponent"],
        canActivate: [_services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__["AfterloginService"]]
    },
    {
        path: 'roles',
        component: _components_roles_roles_component__WEBPACK_IMPORTED_MODULE_12__["RolesComponent"],
        canActivate: [_services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__["AfterloginService"]]
    },
    {
        path: 'permissions',
        component: _components_permissions_permissions_component__WEBPACK_IMPORTED_MODULE_13__["PermissionsComponent"],
        canActivate: [_services_afterlogin_service__WEBPACK_IMPORTED_MODULE_2__["AfterloginService"]]
    }
];
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"])({
            imports: [
                _angular_router__WEBPACK_IMPORTED_MODULE_1__["RouterModule"].forRoot(appRoutes)
            ],
            exports: [_angular_router__WEBPACK_IMPORTED_MODULE_1__["RouterModule"]]
        })
    ], AppRoutingModule);
    return AppRoutingModule;
}());



/***/ }),

/***/ "./src/app/app.component.css":
/*!***********************************!*\
  !*** ./src/app/app.component.css ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/app.component.html":
/*!************************************!*\
  !*** ./src/app/app.component.html ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<app-nav></app-nav>\n<ng-snotify></ng-snotify>\n<router-outlet></router-outlet>"

/***/ }),

/***/ "./src/app/app.component.ts":
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/*! exports provided: AppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppComponent", function() { return AppComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};

var AppComponent = /** @class */ (function () {
    function AppComponent() {
        this.title = 'RoleManagmentFrontend';
    }
    AppComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-root',
            template: __webpack_require__(/*! ./app.component.html */ "./src/app/app.component.html"),
            styles: [__webpack_require__(/*! ./app.component.css */ "./src/app/app.component.css")]
        })
    ], AppComponent);
    return AppComponent;
}());



/***/ }),

/***/ "./src/app/app.module.ts":
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/*! exports provided: AppModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppModule", function() { return AppModule; });
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ng-bootstrap/ng-bootstrap */ "./node_modules/@ng-bootstrap/ng-bootstrap/fesm5/ng-bootstrap.js");
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./app.component */ "./src/app/app.component.ts");
/* harmony import */ var _app_routing_module__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./app-routing.module */ "./src/app/app-routing.module.ts");
/* harmony import */ var _components_nav_nav_component__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./components/nav/nav.component */ "./src/app/components/nav/nav.component.ts");
/* harmony import */ var _components_dashboard_dashboard_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./components/dashboard/dashboard.component */ "./src/app/components/dashboard/dashboard.component.ts");
/* harmony import */ var _components_home_home_component__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./components/home/home.component */ "./src/app/components/home/home.component.ts");
/* harmony import */ var _components_login_login_component__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! ./components/login/login.component */ "./src/app/components/login/login.component.ts");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! ./services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var _services_afterlogin_service__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! ./services/afterlogin.service */ "./src/app/services/afterlogin.service.ts");
/* harmony import */ var _services_beforelogin_service__WEBPACK_IMPORTED_MODULE_14__ = __webpack_require__(/*! ./services/beforelogin.service */ "./src/app/services/beforelogin.service.ts");
/* harmony import */ var _components_signup_signup_component__WEBPACK_IMPORTED_MODULE_15__ = __webpack_require__(/*! ./components/signup/signup.component */ "./src/app/components/signup/signup.component.ts");
/* harmony import */ var _components_password_request_reset_request_reset_component__WEBPACK_IMPORTED_MODULE_16__ = __webpack_require__(/*! ./components/password/request-reset/request-reset.component */ "./src/app/components/password/request-reset/request-reset.component.ts");
/* harmony import */ var _components_password_response_reset_response_reset_component__WEBPACK_IMPORTED_MODULE_17__ = __webpack_require__(/*! ./components/password/response-reset/response-reset.component */ "./src/app/components/password/response-reset/response-reset.component.ts");
/* harmony import */ var _components_users_users_component__WEBPACK_IMPORTED_MODULE_18__ = __webpack_require__(/*! ./components/users/users.component */ "./src/app/components/users/users.component.ts");
/* harmony import */ var _components_signup_confrim_signup_confrim_component__WEBPACK_IMPORTED_MODULE_19__ = __webpack_require__(/*! ./components/signup-confrim/signup-confrim.component */ "./src/app/components/signup-confrim/signup-confrim.component.ts");
/* harmony import */ var _components_roles_roles_component__WEBPACK_IMPORTED_MODULE_20__ = __webpack_require__(/*! ./components/roles/roles.component */ "./src/app/components/roles/roles.component.ts");
/* harmony import */ var _components_permissions_permissions_component__WEBPACK_IMPORTED_MODULE_21__ = __webpack_require__(/*! ./components/permissions/permissions.component */ "./src/app/components/permissions/permissions.component.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






















var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
            declarations: [
                _app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"],
                _components_nav_nav_component__WEBPACK_IMPORTED_MODULE_8__["NavComponent"],
                _components_dashboard_dashboard_component__WEBPACK_IMPORTED_MODULE_9__["DashboardComponent"],
                _components_home_home_component__WEBPACK_IMPORTED_MODULE_10__["HomeComponent"],
                _components_login_login_component__WEBPACK_IMPORTED_MODULE_11__["LoginComponent"],
                _components_signup_signup_component__WEBPACK_IMPORTED_MODULE_15__["SignupComponent"],
                _components_password_request_reset_request_reset_component__WEBPACK_IMPORTED_MODULE_16__["RequestResetComponent"],
                _components_password_response_reset_response_reset_component__WEBPACK_IMPORTED_MODULE_17__["ResponseResetComponent"],
                _components_users_users_component__WEBPACK_IMPORTED_MODULE_18__["UsersComponent"],
                _components_signup_confrim_signup_confrim_component__WEBPACK_IMPORTED_MODULE_19__["SignupConfrimComponent"],
                _components_roles_roles_component__WEBPACK_IMPORTED_MODULE_20__["RolesComponent"],
                _components_permissions_permissions_component__WEBPACK_IMPORTED_MODULE_21__["PermissionsComponent"]
            ],
            imports: [
                _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["BrowserModule"],
                ng_snotify__WEBPACK_IMPORTED_MODULE_2__["SnotifyModule"],
                _app_routing_module__WEBPACK_IMPORTED_MODULE_7__["AppRoutingModule"],
                _angular_common_http__WEBPACK_IMPORTED_MODULE_3__["HttpClientModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_4__["FormsModule"],
                _ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__["NgbModule"]
            ],
            providers: [
                _services_api_service__WEBPACK_IMPORTED_MODULE_12__["ApiService"],
                _services_afterlogin_service__WEBPACK_IMPORTED_MODULE_13__["AfterloginService"],
                _services_beforelogin_service__WEBPACK_IMPORTED_MODULE_14__["BeforeloginService"],
                { provide: 'SnotifyToastConfig', useValue: ng_snotify__WEBPACK_IMPORTED_MODULE_2__["ToastDefaults"] },
                ng_snotify__WEBPACK_IMPORTED_MODULE_2__["SnotifyService"]
            ],
            bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]]
        })
    ], AppModule);
    return AppModule;
}());



/***/ }),

/***/ "./src/app/components/dashboard/dashboard.component.css":
/*!**************************************************************!*\
  !*** ./src/app/components/dashboard/dashboard.component.css ***!
  \**************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/dashboard/dashboard.component.html":
/*!***************************************************************!*\
  !*** ./src/app/components/dashboard/dashboard.component.html ***!
  \***************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<p>\n  dashboard works!\n</p>\n"

/***/ }),

/***/ "./src/app/components/dashboard/dashboard.component.ts":
/*!*************************************************************!*\
  !*** ./src/app/components/dashboard/dashboard.component.ts ***!
  \*************************************************************/
/*! exports provided: DashboardComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DashboardComponent", function() { return DashboardComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var DashboardComponent = /** @class */ (function () {
    function DashboardComponent() {
    }
    DashboardComponent.prototype.ngOnInit = function () {
    };
    DashboardComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-dashboard',
            template: __webpack_require__(/*! ./dashboard.component.html */ "./src/app/components/dashboard/dashboard.component.html"),
            styles: [__webpack_require__(/*! ./dashboard.component.css */ "./src/app/components/dashboard/dashboard.component.css")]
        }),
        __metadata("design:paramtypes", [])
    ], DashboardComponent);
    return DashboardComponent;
}());



/***/ }),

/***/ "./src/app/components/home/home.component.css":
/*!****************************************************!*\
  !*** ./src/app/components/home/home.component.css ***!
  \****************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/home/home.component.html":
/*!*****************************************************!*\
  !*** ./src/app/components/home/home.component.html ***!
  \*****************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<p>\n  home works!\n</p>\n"

/***/ }),

/***/ "./src/app/components/home/home.component.ts":
/*!***************************************************!*\
  !*** ./src/app/components/home/home.component.ts ***!
  \***************************************************/
/*! exports provided: HomeComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "HomeComponent", function() { return HomeComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var HomeComponent = /** @class */ (function () {
    function HomeComponent() {
    }
    HomeComponent.prototype.ngOnInit = function () {
    };
    HomeComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-home',
            template: __webpack_require__(/*! ./home.component.html */ "./src/app/components/home/home.component.html"),
            styles: [__webpack_require__(/*! ./home.component.css */ "./src/app/components/home/home.component.css")]
        }),
        __metadata("design:paramtypes", [])
    ], HomeComponent);
    return HomeComponent;
}());



/***/ }),

/***/ "./src/app/components/login/login.component.css":
/*!******************************************************!*\
  !*** ./src/app/components/login/login.component.css ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ":root {\n  --input-padding-x: 1.5rem;\n  --input-padding-y: 0.75rem;\n}\n\nbody {\n  background: #9CECFB;\n  /* fallback for old browsers */\n  /* Chrome 10-25, Safari 5.1-6 */\n  background: linear-gradient(to right, #0052D4, #65C7F7, #9CECFB);\n  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n}\n\n.card-signin {\n  border: 2px solid #65C7F7;\n  border-radius: 1rem;\n  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);\n}\n\n.card-signin .card-title {\n  margin-bottom: 2rem;\n  font-weight: 300;\n  font-size: 1.5rem;\n}\n\n.card-signin .card-body {\n  padding: 2rem;\n}\n\n.form-signin {\n  width: 100%;\n}\n\n.form-signin .btn {\n  font-size: 80%;\n  border-radius: 5rem;\n  letter-spacing: .1rem;\n  font-weight: bold;\n  padding: 1rem;\n  transition: all 0.2s;\n}\n\n.form-label-group {\n  position: relative;\n  margin-bottom: 1rem;\n}\n\n.form-label-group input {\n  border-radius: 2rem;\n}\n\n.form-label-group>input,\n.form-label-group>label {\n  padding: 0.75rem 1.5rem;\n}\n\n.form-label-group>label {\n  position: absolute;\n  top: 0;\n  left: 0;\n  display: block;\n  width: 100%;\n  margin-bottom: 0;\n  /* Override default `<label>` margin */\n  line-height: 1.5;\n  color: #495057;\n  border: 1px solid transparent;\n  border-radius: .25rem;\n  transition: all .1s ease-in-out;\n}\n\n.form-label-group input:not(:placeholder-shown) {\n  padding-top: 1.00rem;\n  padding-bottom: 0.25rem;\n}\n\n.form-label-group input:not(:placeholder-shown)~label {\n  padding-top: 0.25rem;\n  padding-bottom: 0.25rem;\n  font-size: 12px;\n  color: #777;\n}\n\n.btn-google {\n  color: white;\n  background-color: #ea4335;\n}\n\n.btn-facebook {\n  color: white;\n  background-color: #3b5998;\n}\n"

/***/ }),

/***/ "./src/app/components/login/login.component.html":
/*!*******************************************************!*\
  !*** ./src/app/components/login/login.component.html ***!
  \*******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"body\">\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-9 col-md-7 col-lg-5 mx-auto\">\n        <div class=\"card card-signin my-5\">\n          <div class=\"card-body\">\n            <div class=\"alert alert-danger\" [hidden]=\"!error\">\n              {{ error }}\n            </div>\n            <h5 class=\"card-title text-center\">Sign In</h5>\n            <form class=\"form-signin\" #loginForm=ngForm (ngSubmit)=\"onSubmit()\">\n              <div class=\"form-label-group\">\n                <input type=\"email\" name=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus [(ngModel)]=\"form.email\">\n\n              </div>\n\n              <div class=\"form-label-group\">\n                <input type=\"password\" name=\"password\" id=\"inputPassword\" [(ngModel)]=\"form.password\" class=\"form-control\" placeholder=\"Password\" required>\n\n              </div>\n\n              <div class=\"custom-control custom-checkbox mb-3\">\n                <input type=\"checkbox\" name=\"remember_me\" class=\"custom-control-input\" id=\"customCheck1\" [(ngModel)]=\"form.remember_me\">\n                <label class=\"custom-control-label\" for=\"customCheck1\">Remember password</label>\n              </div>\n              <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" [disabled]=\"!loginForm.valid\">Sign in</button>\n            </form>\n\n            <p style=\"text-align: right;\"><a [routerLink]=\"['/reset-password']\" routerLinkActive=\"router-link-active\" ><small>Fogot Password?</small></a></p>\n              <hr class=\"my-4\">\n              <button class=\"btn btn-lg btn-google btn-block text-uppercase\" type=\"submit\"><i class=\"fab fa-google mr-2\"></i> Sign in with Google</button>\n              <button class=\"btn btn-lg btn-facebook btn-block text-uppercase\" type=\"submit\"><i class=\"fab fa-facebook-f mr-2\"></i> Sign in with Facebook</button>\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/login/login.component.ts":
/*!*****************************************************!*\
  !*** ./src/app/components/login/login.component.ts ***!
  \*****************************************************/
/*! exports provided: LoginComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LoginComponent", function() { return LoginComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _services_auth_service__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../services/auth.service */ "./src/app/services/auth.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var LoginComponent = /** @class */ (function () {
    function LoginComponent(api, token, router, auth, notify) {
        this.api = api;
        this.token = token;
        this.router = router;
        this.auth = auth;
        this.notify = notify;
        this.form = {
            email: null,
            password: null,
            remember_me: false
        };
        this.error = null;
    }
    LoginComponent.prototype.ngOnInit = function () {
    };
    LoginComponent.prototype.onSubmit = function () {
        var _this = this;
        this.notify.info("Wait...", { timeout: 0 });
        var headers = {
            'Content-Type': 'application/json'
        };
        return this.api.post('auth/login', this.form, headers).subscribe(function (data) { return _this.tokenHandler(data); }, function (error) { return _this.errorHandler(error.error); });
    };
    LoginComponent.prototype.errorHandler = function (error) {
        this.notify.clear();
        console.log(error);
        if (error.errors && error.errors.email) {
            this.error = error.errors.email;
        }
        else if (error.message == "Unauthorized") {
            this.error = null;
            this.notify.error("Invalid Login Details or email not confirmed", { timeout: 0 });
        }
        else {
            this.error = null;
            this.notify.error(error.message, { timeout: 0 });
        }
    };
    LoginComponent.prototype.tokenHandler = function (data) {
        this.notify.clear();
        console.log(data);
        this.token.set(data.token_type + " " + data.access_token);
        this.auth.changeAuthStatus(true);
        this.router.navigateByUrl('/dashboard');
        this.notify.info("Login Succesfully", { timeout: 2000 });
    };
    LoginComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-login',
            template: __webpack_require__(/*! ./login.component.html */ "./src/app/components/login/login.component.html"),
            styles: [__webpack_require__(/*! ./login.component.css */ "./src/app/components/login/login.component.css")]
        }),
        __metadata("design:paramtypes", [_services_api_service__WEBPACK_IMPORTED_MODULE_1__["ApiService"],
            _services_token_service__WEBPACK_IMPORTED_MODULE_2__["TokenService"],
            _angular_router__WEBPACK_IMPORTED_MODULE_3__["Router"],
            _services_auth_service__WEBPACK_IMPORTED_MODULE_4__["AuthService"],
            ng_snotify__WEBPACK_IMPORTED_MODULE_5__["SnotifyService"]])
    ], LoginComponent);
    return LoginComponent;
}());



/***/ }),

/***/ "./src/app/components/nav/nav.component.css":
/*!**************************************************!*\
  !*** ./src/app/components/nav/nav.component.css ***!
  \**************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/nav/nav.component.html":
/*!***************************************************!*\
  !*** ./src/app/components/nav/nav.component.html ***!
  \***************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<nav class=\"navbar navbar-expand-md navbar-dark bg-dark\">\n  <a class=\"navbar-brand\" routerLink=\"\" *ngIf=\"!loggedIn\">Role Managment</a>\n  <a class=\"navbar-brand\" routerLink=\"dashboard\" *ngIf=\"loggedIn\">Role Managment</a>\n  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" (click)=\"isCollapsed = !isCollapsed\"\n  data-target=\"#navbarsExampleDefault\"\n    aria-controls=\"navbarsExampleDefault\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n    <span class=\"navbar-toggler-icon\"></span>\n  </button>\n  <div class=\"collapse navbar-collapse\" id=\"navbarsExampleDefault\" [ngbCollapse]=\"isCollapsed\">\n    <ul class=\"navbar-nav mr-auto\">\n    </ul>\n    <form class=\"form-inline my-2 my-lg-0\">\n      <a class=\"text-white\" routerLink=\"login\" style=\"padding-right: 20px;\" *ngIf=\"!loggedIn\">Login</a>\n      <a class=\"text-white\" routerLink=\"signup\" style=\"padding-right: 20px;\" *ngIf=\"!loggedIn\">Register</a>\n\n      <a class=\"text-white\" routerLink=\"users\" style=\"padding-right: 20px;\" *ngIf=\"loggedIn\">Users</a>\n      <a class=\"text-white\" routerLink=\"roles\" style=\"padding-right: 20px;\" *ngIf=\"loggedIn\">Roles</a>\n      <a class=\"text-white\" routerLink=\"permissions\" style=\"padding-right: 20px;\" *ngIf=\"loggedIn\">Permissions</a>\n      <a class=\"text-white\" href=\"javascript:void(0)\" (click)=\"logout($event)\" style=\"padding-right: 20px;\" *ngIf=\"loggedIn\">Logout</a>\n    </form>\n  </div>\n</nav>\n\n"

/***/ }),

/***/ "./src/app/components/nav/nav.component.ts":
/*!*************************************************!*\
  !*** ./src/app/components/nav/nav.component.ts ***!
  \*************************************************/
/*! exports provided: NavComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "NavComponent", function() { return NavComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _services_auth_service__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../services/auth.service */ "./src/app/services/auth.service.ts");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var NavComponent = /** @class */ (function () {
    function NavComponent(auth, router, token, notify) {
        this.auth = auth;
        this.router = router;
        this.token = token;
        this.notify = notify;
        this.isCollapsed = true;
    }
    NavComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.auth.authStatus.subscribe(function (value) { return _this.loggedIn = value; });
        console.log(this.loggedIn);
    };
    NavComponent.prototype.logout = function (Event) {
        if (Event === void 0) { Event = MouseEvent; }
        event.preventDefault;
        this.token.remove();
        this.auth.changeAuthStatus(false);
        this.router.navigateByUrl('/login');
        location.reload();
        this.notify.info("Logout Succesfully", { timeout: 2000 });
    };
    NavComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-nav',
            template: __webpack_require__(/*! ./nav.component.html */ "./src/app/components/nav/nav.component.html"),
            styles: [__webpack_require__(/*! ./nav.component.css */ "./src/app/components/nav/nav.component.css")]
        }),
        __metadata("design:paramtypes", [_services_auth_service__WEBPACK_IMPORTED_MODULE_3__["AuthService"],
            _angular_router__WEBPACK_IMPORTED_MODULE_2__["Router"],
            _services_token_service__WEBPACK_IMPORTED_MODULE_4__["TokenService"],
            ng_snotify__WEBPACK_IMPORTED_MODULE_1__["SnotifyService"]])
    ], NavComponent);
    return NavComponent;
}());



/***/ }),

/***/ "./src/app/components/password/request-reset/request-reset.component.css":
/*!*******************************************************************************!*\
  !*** ./src/app/components/password/request-reset/request-reset.component.css ***!
  \*******************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ":root {\n  --input-padding-x: 1.5rem;\n  --input-padding-y: 0.75rem;\n}\n\nbody {\n  background: #9CECFB;\n  /* fallback for old browsers */\n  /* Chrome 10-25, Safari 5.1-6 */\n  background: linear-gradient(to right, #0052D4, #65C7F7, #9CECFB);\n  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n}\n\n.card-signin {\n  border: 2px solid #65C7F7;\n  border-radius: 1rem;\n  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);\n}\n\n.card-signin .card-title {\n  margin-bottom: 2rem;\n  font-weight: 300;\n  font-size: 1.5rem;\n}\n\n.card-signin .card-body {\n  padding: 2rem;\n}\n\n.form-signin {\n  width: 100%;\n}\n\n.form-signin .btn {\n  font-size: 80%;\n  border-radius: 5rem;\n  letter-spacing: .1rem;\n  font-weight: bold;\n  padding: 1rem;\n  transition: all 0.2s;\n}\n\n.form-label-group {\n  position: relative;\n  margin-bottom: 1rem;\n}\n\n.form-label-group input {\n  border-radius: 2rem;\n}\n\n.form-label-group>input,\n.form-label-group>label {\n  padding: 0.75rem 1.5rem;\n}\n\n.form-label-group>label {\n  position: absolute;\n  top: 0;\n  left: 0;\n  display: block;\n  width: 100%;\n  margin-bottom: 0;\n  /* Override default `<label>` margin */\n  line-height: 1.5;\n  color: #495057;\n  border: 1px solid transparent;\n  border-radius: .25rem;\n  transition: all .1s ease-in-out;\n}\n\n.form-label-group input::-webkit-input-placeholder {\n  color: transparent;\n}\n\n.form-label-group input:-ms-input-placeholder {\n  color: transparent;\n}\n\n.form-label-group input::-ms-input-placeholder {\n  color: transparent;\n}\n\n.form-label-group input::placeholder {\n  color: transparent;\n}\n\n.form-label-group input:not(:placeholder-shown) {\n  padding-top: 1.00rem;\n  padding-bottom: 0.25rem;\n}\n\n.form-label-group input:not(:placeholder-shown)~label {\n  padding-top: 0.25rem;\n  padding-bottom: 0.25rem;\n  font-size: 12px;\n  color: #777;\n}\n\n.btn-google {\n  color: white;\n  background-color: #ea4335;\n}\n\n.btn-facebook {\n  color: white;\n  background-color: #3b5998;\n}\n"

/***/ }),

/***/ "./src/app/components/password/request-reset/request-reset.component.html":
/*!********************************************************************************!*\
  !*** ./src/app/components/password/request-reset/request-reset.component.html ***!
  \********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"body\">\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-9 col-md-7 col-lg-5 mx-auto\">\n        <div class=\"card card-signin my-5\">\n          <div class=\"card-body\">\n            <div class=\"alert alert-danger\" [hidden]=\"!error\">\n              {{ error }}\n            </div>\n            <h5 class=\"card-title text-center\">Reset Password</h5>\n            <form class=\"form-signin\" #passwordResetForm=ngForm (ngSubmit)=\"onSubmit()\">\n              <div class=\"form-label-group\">\n                <input type=\"email\" name=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Enter Email address\" required autofocus [(ngModel)]=\"form.email\">\n                <label for=\"inputEmail\">Email address</label>\n              </div>\n              <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" [disabled]=\"!passwordResetForm.valid\">Reset Password</button>\n            </form>\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/password/request-reset/request-reset.component.ts":
/*!******************************************************************************!*\
  !*** ./src/app/components/password/request-reset/request-reset.component.ts ***!
  \******************************************************************************/
/*! exports provided: RequestResetComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RequestResetComponent", function() { return RequestResetComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var RequestResetComponent = /** @class */ (function () {
    function RequestResetComponent(api, notify) {
        this.api = api;
        this.notify = notify;
        this.form = {
            email: null
        };
        this.error = null;
    }
    RequestResetComponent.prototype.ngOnInit = function () {
    };
    RequestResetComponent.prototype.onSubmit = function () {
        var _this = this;
        this.notify.clear();
        var header = {
            'Content-Type': 'application/json'
        };
        this.notify.info('Wait...', { timeout: 0 });
        return this.api.post('password/create', this.form, header).subscribe(function (data) { return _this.datahandler(data); }, function (error) { return _this.errorHandler(error.error); });
    };
    RequestResetComponent.prototype.datahandler = function (data) {
        this.notify.clear();
        this.notify.info(data.message);
    };
    RequestResetComponent.prototype.errorHandler = function (error) {
        this.notify.clear();
        console.log(error);
        if (error.errors && error.errors.email) {
            this.error = error.errors.email;
        }
        else {
            this.error = null;
            this.notify.error(error.message, { timeout: 0 });
        }
        this.form.email = null;
    };
    RequestResetComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-request-reset',
            template: __webpack_require__(/*! ./request-reset.component.html */ "./src/app/components/password/request-reset/request-reset.component.html"),
            styles: [__webpack_require__(/*! ./request-reset.component.css */ "./src/app/components/password/request-reset/request-reset.component.css")]
        }),
        __metadata("design:paramtypes", [_services_api_service__WEBPACK_IMPORTED_MODULE_1__["ApiService"],
            ng_snotify__WEBPACK_IMPORTED_MODULE_2__["SnotifyService"]])
    ], RequestResetComponent);
    return RequestResetComponent;
}());



/***/ }),

/***/ "./src/app/components/password/response-reset/response-reset.component.css":
/*!*********************************************************************************!*\
  !*** ./src/app/components/password/response-reset/response-reset.component.css ***!
  \*********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ":root {\n  --input-padding-x: 1.5rem;\n  --input-padding-y: 0.75rem;\n}\n\nbody {\n  background: #9CECFB;\n  /* fallback for old browsers */\n  /* Chrome 10-25, Safari 5.1-6 */\n  background: linear-gradient(to right, #0052D4, #65C7F7, #9CECFB);\n  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n}\n\n.card-signin {\n  border: 2px solid #65C7F7;\n  border-radius: 1rem;\n  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);\n}\n\n.card-signin .card-title {\n  margin-bottom: 2rem;\n  font-weight: 300;\n  font-size: 1.5rem;\n}\n\n.card-signin .card-body {\n  padding: 2rem;\n}\n\n.form-signin {\n  width: 100%;\n}\n\n.form-signin .btn {\n  font-size: 80%;\n  border-radius: 5rem;\n  letter-spacing: .1rem;\n  font-weight: bold;\n  padding: 1rem;\n  transition: all 0.2s;\n}\n\n.form-label-group {\n  position: relative;\n  margin-bottom: 1rem;\n}\n\n.form-label-group input {\n  border-radius: 2rem;\n}\n\n.form-label-group>input,\n.form-label-group>label {\n  padding: 0.75rem 1.5rem;\n}\n\n.form-label-group>label {\n  position: absolute;\n  top: 0;\n  left: 0;\n  display: block;\n  width: 100%;\n  margin-bottom: 0;\n  /* Override default `<label>` margin */\n  line-height: 1.5;\n  color: #495057;\n  border: 1px solid transparent;\n  border-radius: .25rem;\n  transition: all .1s ease-in-out;\n}\n\n.btn-google {\n  color: white;\n  background-color: #ea4335;\n}\n\n.btn-facebook {\n  color: white;\n  background-color: #3b5998;\n}\n"

/***/ }),

/***/ "./src/app/components/password/response-reset/response-reset.component.html":
/*!**********************************************************************************!*\
  !*** ./src/app/components/password/response-reset/response-reset.component.html ***!
  \**********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"body\">\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-9 col-md-7 col-lg-5 mx-auto\">\n        <div class=\"card card-signin my-5\">\n          <div class=\"card-body\">\n            <div class=\"alert alert-danger\" [hidden]=\"!error\">\n                {{ error }}\n              </div>\n            <h5 class=\"card-title text-center\">Reset Password</h5>\n            <form class=\"form-signin\" #ResetResponseForm=ngForm (ngSubmit)=\"onSubmit()\">\n              <div class=\"form-label-group\">\n                <input type=\"email\" name=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus [(ngModel)]=\"form.email\">\n              </div>\n\n              <div class=\"form-label-group\">\n                <input type=\"password\" name=\"password\" id=\"inputPassword\" [(ngModel)]=\"form.password\" class=\"form-control\" placeholder=\"Password\" required>\n              </div>\n\n              <div class=\"form-label-group\">\n                <input type=\"password\" name=\"password_confirmation\" id=\"inputPasswordConfirmation\" [(ngModel)]=\"form.password_confirmation\" class=\"form-control\" placeholder=\"Re Enter Password\" required>\n              </div>\n\n              <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" [disabled]=\"!ResetResponseForm.valid\">Change Password</button>\n            </form>\n\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/password/response-reset/response-reset.component.ts":
/*!********************************************************************************!*\
  !*** ./src/app/components/password/response-reset/response-reset.component.ts ***!
  \********************************************************************************/
/*! exports provided: ResponseResetComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ResponseResetComponent", function() { return ResponseResetComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var ResponseResetComponent = /** @class */ (function () {
    function ResponseResetComponent(api, router, notify, route) {
        var _this = this;
        this.api = api;
        this.router = router;
        this.notify = notify;
        this.route = route;
        this.error = null;
        this.form = {
            email: null,
            password: null,
            password_confirmation: null,
            token: null
        };
        route.queryParams.subscribe(function (params) {
            _this.form.token = params['token'];
        });
    }
    ResponseResetComponent.prototype.ngOnInit = function () {
    };
    ResponseResetComponent.prototype.onSubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info('Wait...', { timeout: 0 });
        var header = {
            'Content-Type': 'application/json'
        };
        return this.api.get('password/find/' + this.form.token, header).subscribe(function (data) { return _this.resetHandler(data); }, function (error) { return _this.handleerror(error.error); });
    };
    ResponseResetComponent.prototype.handleerror = function (error) {
        console.log(error);
        this.notify.clear();
        if (error.errors && error.errors.password) {
            this.error = error.errors.password;
        }
        else
            this.notify.error(error.message, { timeout: 0 });
    };
    ResponseResetComponent.prototype.resetHandler = function (data) {
        var _this = this;
        this.notify.clear();
        console.log(data);
        if (data.email == this.form.email) {
            this.notify.info('Wait...', { timeout: 0 });
            var header = {
                'Content-Type': 'application/json'
            };
            return this.api.post('password/reset', this.form, header).subscribe(function (data) {
                _this.notify.clear();
                _this.notify.info('Password Reset Successfully', { timeout: 2000 });
                _this.router.navigateByUrl('/login');
            }, function (error) { return _this.handleerror(error.error); });
        }
        else {
            this.notify.error("Incorrect Email", { timeout: 0 });
        }
    };
    ResponseResetComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-response-reset',
            template: __webpack_require__(/*! ./response-reset.component.html */ "./src/app/components/password/response-reset/response-reset.component.html"),
            styles: [__webpack_require__(/*! ./response-reset.component.css */ "./src/app/components/password/response-reset/response-reset.component.css")]
        }),
        __metadata("design:paramtypes", [_services_api_service__WEBPACK_IMPORTED_MODULE_1__["ApiService"],
            _angular_router__WEBPACK_IMPORTED_MODULE_2__["Router"],
            ng_snotify__WEBPACK_IMPORTED_MODULE_3__["SnotifyService"],
            _angular_router__WEBPACK_IMPORTED_MODULE_2__["ActivatedRoute"]])
    ], ResponseResetComponent);
    return ResponseResetComponent;
}());



/***/ }),

/***/ "./src/app/components/permissions/permissions.component.css":
/*!******************************************************************!*\
  !*** ./src/app/components/permissions/permissions.component.css ***!
  \******************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/permissions/permissions.component.html":
/*!*******************************************************************!*\
  !*** ./src/app/components/permissions/permissions.component.html ***!
  \*******************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"container\">\n  <div class=\"row\" style=\"margin-top: 30px;\">\n    <div class=\"col-6\">\n      <h3>Permissions</h3>\n    </div>\n    <div class=\"col-md-3 col-6 text-right\">\n      <a class=\"text-white btn btn-info\" (click)='add()'>Add New Permission</a>\n    </div>\n    <div class=\"col-md-3 text-right\">\n      <input type=\"search\" class=\"form-control\" id=\"search\" name=\"search\" placeholder=\"Search\"  [(ngModel)]=\"keyword\" (keyup)=\"search()\"/>\n    </div>\n  </div>\n</div>\n<hr>\n\n<div class=\"container\">\n    <table class=\"table table-bordered text-center\">\n        <thead>\n          <tr>\n            <th (click)=\"sort('name')\"><a href=\"javascript:void(0)\" style=\"color:black\">Name <span *ngIf=\"sortData.col=='name'\"><i class=\"fa fa-caret-down\" *ngIf=\"sortData.order=='asc'\"></i><i class=\"fa fa-caret-up\" *ngIf=\"sortData.order=='desc'\"></i></span></a></th>\n            <th>Action</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr *ngFor=\"let permission of permissions\">\n            <td>{{ permission.name }}</td>\n              <td>\n              <a href=\"javascript:void(0)\" class=\"item\"  (click)='edit( permission.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Edit\" style=\"padding-right: 10px;\">\n                  <i class=\"fa fa-edit\"></i>\n              </a>\n              <a href=\"javascript:void(0)\" class=\"item\"  (click)='delete( permission.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\" style=\"padding-right: 10px;\">\n                  <i class=\"fa fa-trash\"></i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n      <div class=\"col-12 justify-content-center\" style=\"display: flex !important; justify-content: center !important;\">\n        <ngb-pagination [(collectionSize)]=\"pagination.max\" (pageChange)=\"paginateClick($event)\" [(page)]=\"pagination.page\" (onclick)=\"paginateClick()\"></ngb-pagination>\n      </div>\n    </div>\n\n<!-- The Modal -->\n<div id=\"editModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n  <div class=\"modal-dialog\" permission=\"document\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <h5 class=\"modal-title\">Edit Permission</h5>\n        <button type=\"button\" class=\"close\" (click)='closeEditModal()'>\n          <span aria-hidden=\"true\">&times;</span>\n        </button>\n      </div>\n      <div class=\"modal-body\">\n            <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                {{ error.name }}\n              </div>\n        <form #newPermissionForm=ngForm>\n          <div class=\"form-group\">\n              <label for=\"name\">Name</label>\n              <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter name\"  required [(ngModel)]=\"data.name\"/>\n          </div>\n        </form>\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"submit\" class=\"btn btn-primary\"  [disabled]=\"!newPermissionForm.valid\" (click)='editsubmit()'>Save changes</button>\n        <button type=\"button\" class=\"btn btn-secondary\" (click)='closeEditModal()'>Close</button>\n      </div>\n    </div>\n  </div>\n</div>\n\n<!-- The Modal -->\n<div id=\"addModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n\n  <div class=\"modal-dialog\" permission=\"document\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <h5 class=\"modal-title\">Add New Permission</h5>\n        <button type=\"button\" class=\"close\" (click)='closeAddModal()'>\n          <span aria-hidden=\"true\">&times;</span>\n        </button>\n      </div>\n      <div class=\"modal-body\">\n            <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                {{ error.name }}\n              </div>\n        <form #editPermissionForm=ngForm>\n\n            <div class=\"form-group\">\n                <label for=\"name\">Name</label>\n              <input type=\"name\" name=\"name\" id=\"inputName\" class=\"form-control\" placeholder=\"Name\" [(ngModel)]=\"form.name\" required>\n            </div>\n\n        </form>\n\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" class=\"btn btn-primary\" (click)='addModalSubmit()' [disabled]=\"!editPermissionForm.valid\">Save changes</button>\n        <button type=\"button\" class=\"btn btn-secondary\" (click)='closeAddModal()'>Close</button>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/permissions/permissions.component.ts":
/*!*****************************************************************!*\
  !*** ./src/app/components/permissions/permissions.component.ts ***!
  \*****************************************************************/
/*! exports provided: PermissionsComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "PermissionsComponent", function() { return PermissionsComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ng-bootstrap/ng-bootstrap */ "./node_modules/@ng-bootstrap/ng-bootstrap/fesm5/ng-bootstrap.js");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var PermissionsComponent = /** @class */ (function () {
    function PermissionsComponent(pg, token, http, router, api, notify) {
        this.pg = pg;
        this.token = token;
        this.http = http;
        this.router = router;
        this.api = api;
        this.notify = notify;
        this.permissions = null; //Store API Data
        this.error = []; //Form errors
        this.keyword = null; //Current Search Keyword
        this.pagination = {
            'page': '1',
            'max': '10'
        };
        this.data = {
            "id": null,
            "name": null,
        };
        this.form = {
            name: null
        };
        this.headers = {
            'Authorization': this.token.get()
        };
        this.sortData = {
            "col": null,
            "order": null
        };
        pg.boundaryLinks = true;
        pg.rotate = true;
    }
    PermissionsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Loading...", { timeout: 0 });
        if (this.keyword)
            this.api.get('permissions?search=' + this.keyword + '&page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.notify.clear(); _this.token.remove(); _this.router.navigateByUrl("/login"); });
        else
            this.api.get('permissions?page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.token.remove(); _this.router.navigateByUrl("/login"); });
    };
    PermissionsComponent.prototype.datahandler = function (data) {
        console.log(data.data);
        this.notify.clear();
        this.permissions = data.data;
        this.pagination.max = data.total;
    };
    //sort handler
    PermissionsComponent.prototype.sort = function (col) {
        console.log(col);
        if (this.sortData.order == "asc" && this.sortData.col == col) {
            this.sortData.order = "desc";
        }
        else if (this.sortData.order == "desc" && this.sortData.col == col) {
            this.sortData.order = null;
            col = null;
        }
        else {
            this.sortData.order = "asc";
        }
        this.sortData.col = col;
        this.ngOnInit();
    };
    //Paginate Handling
    PermissionsComponent.prototype.paginateClick = function (page) {
        console.log(page);
        this.pagination.page = page;
        this.ngOnInit();
    };
    //Serach Handling
    PermissionsComponent.prototype.search = function () {
        this.ngOnInit();
    };
    //Permission edit Handling
    PermissionsComponent.prototype.edit = function (id) {
        var _this = this;
        this.notify.clear();
        this.data.name = null;
        this.api.get('permissions/' + id, this.headers).subscribe(function (data) { return _this.editDataHandler(data); }, function (error) { return _this.notify.error("Permission Not Found", { timeout: 0 }); });
        this.data.id = id;
        var modal = document.getElementById('editModal');
        modal.style.display = "block";
    };
    PermissionsComponent.prototype.editDataHandler = function (data) {
        this.data.name = data.name;
    };
    PermissionsComponent.prototype.editsubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.put('permissions/' + this.data.id, this.data, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("Permission Updated Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeEditModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    PermissionsComponent.prototype.closeEditModal = function () {
        this.error = [];
        var modal = document.getElementById('editModal');
        modal.style.display = "none";
    };
    //Permission delete Handling
    PermissionsComponent.prototype.delete = function (id) {
        var _this = this;
        this.notify.clear();
        this.notify.warning('Are you sure you want to detele this Permission?', 'Delete Permission', {
            timeout: 0,
            showProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            buttons: [
                { text: 'Yes', action: function () {
                        var headers = {
                            'Authorization': _this.token.get()
                        };
                        return _this.api.delete('permissions/' + id, headers).subscribe(function (data) { _this.notify.info("Success", { timeout: 2000 }); _this.ngOnInit(); }, function (error) { return _this.notify.error(error.message, { timeout: 0 }); });
                    }, bold: false },
                { text: 'No' }
            ]
        });
    };
    //New Permission add Handling
    PermissionsComponent.prototype.add = function () {
        this.notify.clear();
        this.form.name = null;
        var modal = document.getElementById('addModal');
        modal.style.display = "block";
    };
    PermissionsComponent.prototype.addModalSubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.post('permissions', this.form, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("Permission Added Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeAddModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    PermissionsComponent.prototype.closeAddModal = function () {
        this.error = [];
        var modal = document.getElementById('addModal');
        modal.style.display = "none";
    };
    PermissionsComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-permissions',
            template: __webpack_require__(/*! ./permissions.component.html */ "./src/app/components/permissions/permissions.component.html"),
            styles: [__webpack_require__(/*! ./permissions.component.css */ "./src/app/components/permissions/permissions.component.css")]
        }),
        __metadata("design:paramtypes", [_ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__["NgbPaginationConfig"], _services_token_service__WEBPACK_IMPORTED_MODULE_6__["TokenService"], _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"], _angular_router__WEBPACK_IMPORTED_MODULE_4__["Router"], _services_api_service__WEBPACK_IMPORTED_MODULE_2__["ApiService"], ng_snotify__WEBPACK_IMPORTED_MODULE_3__["SnotifyService"]])
    ], PermissionsComponent);
    return PermissionsComponent;
}());



/***/ }),

/***/ "./src/app/components/roles/roles.component.css":
/*!******************************************************!*\
  !*** ./src/app/components/roles/roles.component.css ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/roles/roles.component.html":
/*!*******************************************************!*\
  !*** ./src/app/components/roles/roles.component.html ***!
  \*******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"container\">\n    <div class=\"row\" style=\"margin-top: 30px;\">\n      <div class=\"col-6\">\n        <h3>Roles</h3>\n      </div>\n      <div class=\"col-md-3 col-6 text-right\">\n        <a class=\"text-white btn btn-info\" (click)='add()'>Add New Role</a>\n      </div>\n      <div class=\"col-md-3 text-right\">\n        <input type=\"search\" class=\"form-control\" id=\"search\" name=\"search\" placeholder=\"Search\"  [(ngModel)]=\"keyword\" (keyup)=\"search()\"/>\n      </div>\n    </div>\n  </div>\n    <hr>\n\n    <div class=\"container\">\n        <table class=\"table table-bordered text-center\">\n            <thead>\n              <tr>\n                <th (click)=\"sort('name')\"><a href=\"javascript:void(0)\" style=\"color:black\">Name <span *ngIf=\"sortData.col=='name'\"><i class=\"fa fa-caret-down\" *ngIf=\"sortData.order=='asc'\"></i><i class=\"fa fa-caret-up\" *ngIf=\"sortData.order=='desc'\"></i></span></a></th>\n                <th>Permissions</th>\n                <th>Action</th>\n              </tr>\n            </thead>\n            <tbody>\n              <tr *ngFor=\"let role of roles\">\n                <td>{{ role.name }}</td>\n                <td><div *ngFor=\"let permission of role.permissions\">{{ permission.name }}</div></td>\n                  <td>\n                  <a href=\"javascript:void(0)\" class=\"item\"  (click)='edit( role.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Edit\" style=\"padding-right: 10px;\">\n                      <i class=\"fa fa-edit\"></i>\n                  </a>\n                  <a href=\"javascript:void(0)\" class=\"item\"  (click)='delete( role.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\" style=\"padding-right: 10px;\">\n                      <i class=\"fa fa-trash\"></i>\n                  </a>\n                </td>\n              </tr>\n            </tbody>\n          </table>\n          <div class=\"col-12 justify-content-center\" style=\"display: flex !important; justify-content: center !important;\">\n            <ngb-pagination [(collectionSize)]=\"pagination.max\" (pageChange)=\"paginateClick($event)\" [(page)]=\"pagination.page\" (onclick)=\"paginateClick()\"></ngb-pagination>\n          </div>\n        </div>\n\n    <!-- The Modal -->\n    <div id=\"editModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n\n        <div class=\"modal-dialog\" role=\"document\">\n            <div class=\"modal-content\">\n              <div class=\"modal-header\">\n                <h5 class=\"modal-title\">Edit Role</h5>\n                <button type=\"button\" class=\"close\" (click)='closeEditModal()'>\n                  <span aria-hidden=\"true\">&times;</span>\n                </button>\n              </div>\n              <div class=\"modal-body\">\n                    <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                        {{ error.name }}\n                      </div>\n                <form #newRoleForm=ngForm>\n                  <div class=\"form-group\">\n                      <label for=\"name\">Name</label>\n                      <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter name\"  required [(ngModel)]=\"data.name\"/>\n                  </div>\n                  <div class=\"form-group\">\n                      <label for=\"name\">Permissions</label>\n                      <div *ngFor=\"let permission of permissions\">\n                          <input type=\"checkbox\" name=\"{{ permission.name }}\" value=\"{{ permission.name }}\" (change)=\"checkbox($event)\" *ngIf=\"!data.permission.includes(permission.name)\">\n                        <input type=\"checkbox\" name=\"{{ permission.name }}\" value=\"{{ permission.name }}\" (change)=\"checkbox($event)\" *ngIf=\"data.permission.includes(permission.name)\" checked> {{ permission.name }}\n                      </div>\n                  </div>\n                </form>\n              </div>\n              <div class=\"modal-footer\">\n                <button type=\"submit\" class=\"btn btn-primary\"  [disabled]=\"!newRoleForm.valid\" (click)='editsubmit()'>Save changes</button>\n                <button type=\"button\" class=\"btn btn-secondary\" (click)='closeEditModal()'>Close</button>\n              </div>\n            </div>\n          </div>\n\n    </div>\n\n    <!-- The Modal -->\n    <div id=\"addModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n\n        <div class=\"modal-dialog\" role=\"document\">\n            <div class=\"modal-content\">\n              <div class=\"modal-header\">\n                <h5 class=\"modal-title\">Add New Role</h5>\n                <button type=\"button\" class=\"close\" (click)='closeAddModal()'>\n                  <span aria-hidden=\"true\">&times;</span>\n                </button>\n              </div>\n              <div class=\"modal-body\">\n                    <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                        {{ error.name }}\n                      </div>\n                <form #editRoleForm=ngForm>\n\n                    <div class=\"form-group\">\n                        <label for=\"name\">Name</label>\n                      <input type=\"name\" name=\"name\" id=\"inputName\" class=\"form-control\" placeholder=\"Name\" [(ngModel)]=\"form.name\" required>\n                    </div>\n                    <div class=\"form-group\">\n                        <label for=\"name\">Permissions</label>\n                        <div *ngFor=\"let permission of permissions\">\n                            <input type=\"checkbox\" name=\"{{ permission.name }}\" value=\"{{ permission.name }}\" (change)=\"checkboxAdd($event)\"> {{ permission.name }}\n                        </div>\n                    </div>\n\n                </form>\n\n              </div>\n              <div class=\"modal-footer\">\n                <button type=\"button\" class=\"btn btn-primary\" (click)='addModalSubmit()' [disabled]=\"!editRoleForm.valid\">Save changes</button>\n                <button type=\"button\" class=\"btn btn-secondary\" (click)='closeAddModal()'>Close</button>\n              </div>\n            </div>\n          </div>\n    </div>\n"

/***/ }),

/***/ "./src/app/components/roles/roles.component.ts":
/*!*****************************************************!*\
  !*** ./src/app/components/roles/roles.component.ts ***!
  \*****************************************************/
/*! exports provided: RolesComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RolesComponent", function() { return RolesComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ng-bootstrap/ng-bootstrap */ "./node_modules/@ng-bootstrap/ng-bootstrap/fesm5/ng-bootstrap.js");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var RolesComponent = /** @class */ (function () {
    function RolesComponent(pg, token, http, router, api, notify) {
        this.pg = pg;
        this.token = token;
        this.http = http;
        this.router = router;
        this.api = api;
        this.notify = notify;
        this.roles = null; //Store API Data
        this.permissions = null; //Store all permissions Data
        this.error = []; //Form errors
        this.keyword = null; //Current Search Keyword
        this.pagination = {
            'page': '1',
            'max': '10'
        };
        this.data = {
            "id": null,
            "name": null,
            "permission": []
        };
        this.form = {
            "name": null,
            "permission": []
        };
        this.headers = {
            'Authorization': this.token.get()
        };
        this.sortData = {
            "col": null,
            "order": null
        };
        pg.boundaryLinks = true;
        pg.rotate = true;
    }
    RolesComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Loading...", { timeout: 0 });
        if (this.keyword)
            this.api.get('roles?search=' + this.keyword + '&page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.notify.clear(); _this.token.remove(); _this.router.navigateByUrl("/login"); });
        else
            this.api.get('roles?page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.token.remove(); _this.router.navigateByUrl("/login"); });
        this.api.get('permission', this.headers).subscribe(function (data) { console.log(data); _this.permissions = data; }, function (error) { _this.notify.clear(); _this.notify.error(error.error.message); });
    };
    RolesComponent.prototype.datahandler = function (data) {
        console.log(data.data);
        this.notify.clear();
        this.roles = data.data;
        this.pagination.max = data.total;
    };
    //sort handler
    RolesComponent.prototype.sort = function (col) {
        console.log(col);
        if (this.sortData.order == "asc" && this.sortData.col == col) {
            this.sortData.order = "desc";
        }
        else if (this.sortData.order == "desc" && this.sortData.col == col) {
            this.sortData.order = null;
            col = null;
        }
        else {
            this.sortData.order = "asc";
        }
        this.sortData.col = col;
        this.ngOnInit();
    };
    //Paginate Handling
    RolesComponent.prototype.paginateClick = function (page) {
        console.log(page);
        this.pagination.page = page;
        this.ngOnInit();
    };
    //Serach Handling
    RolesComponent.prototype.search = function () {
        this.ngOnInit();
    };
    //Role edit Handling
    RolesComponent.prototype.edit = function (id) {
        var _this = this;
        this.notify.clear();
        this.data.name = null;
        this.data.permission = [];
        this.api.get('roles/' + id, this.headers).subscribe(function (data) { return _this.editDataHandler(data); }, function (error) { return _this.notify.error("Role Not Found", { timeout: 0 }); });
        this.data.id = id;
        var modal = document.getElementById('editModal');
        modal.style.display = "block";
    };
    RolesComponent.prototype.editDataHandler = function (data) {
        this.data.name = data.name;
        for (var i = 0; i < data.permissions.length; i++)
            this.data.permission.push(data.permissions[i].name);
    };
    RolesComponent.prototype.checkbox = function (event) {
        if (event.srcElement.checked) {
            this.data.permission.push(event.srcElement.name);
        }
        else {
            var index = this.data.permission.indexOf(event.srcElement.name);
            this.data.permission.splice(index, index + 1);
        }
        console.log(this.data.permission);
    };
    RolesComponent.prototype.editsubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.put('roles/' + this.data.id, this.data, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("Role Updated Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeEditModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    RolesComponent.prototype.closeEditModal = function () {
        this.error = [];
        var modal = document.getElementById('editModal');
        modal.style.display = "none";
    };
    //Role delete Handling
    RolesComponent.prototype.delete = function (id) {
        var _this = this;
        this.notify.clear();
        this.notify.warning('Are you sure you want to detele this Role?', 'Delete Role', {
            timeout: 0,
            showProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            buttons: [
                { text: 'Yes', action: function () {
                        var headers = {
                            'Authorization': _this.token.get()
                        };
                        return _this.api.delete('roles/' + id, headers).subscribe(function (data) { _this.notify.info("Success", { timeout: 2000 }); _this.ngOnInit(); }, function (error) { return _this.notify.error(error.message, { timeout: 0 }); });
                    }, bold: false },
                { text: 'No' }
            ]
        });
    };
    //New Role add Handling
    RolesComponent.prototype.add = function () {
        this.notify.clear();
        this.form.name = null;
        this.form.permission = [];
        var modal = document.getElementById('addModal');
        modal.style.display = "block";
    };
    RolesComponent.prototype.addModalSubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.post('roles', this.form, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("Role Added Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeAddModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    RolesComponent.prototype.checkboxAdd = function (event) {
        if (event.srcElement.checked) {
            this.form.permission.push(event.srcElement.name);
        }
        else {
            var index = this.form.permission.indexOf(event.srcElement.name);
            this.form.permission.splice(index, index + 1);
        }
        console.log(this.form.permission);
    };
    RolesComponent.prototype.closeAddModal = function () {
        this.error = [];
        var modal = document.getElementById('addModal');
        modal.style.display = "none";
    };
    RolesComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-roles',
            template: __webpack_require__(/*! ./roles.component.html */ "./src/app/components/roles/roles.component.html"),
            styles: [__webpack_require__(/*! ./roles.component.css */ "./src/app/components/roles/roles.component.css")]
        }),
        __metadata("design:paramtypes", [_ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__["NgbPaginationConfig"], _services_token_service__WEBPACK_IMPORTED_MODULE_6__["TokenService"], _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"], _angular_router__WEBPACK_IMPORTED_MODULE_4__["Router"], _services_api_service__WEBPACK_IMPORTED_MODULE_2__["ApiService"], ng_snotify__WEBPACK_IMPORTED_MODULE_3__["SnotifyService"]])
    ], RolesComponent);
    return RolesComponent;
}());



/***/ }),

/***/ "./src/app/components/signup-confrim/signup-confrim.component.css":
/*!************************************************************************!*\
  !*** ./src/app/components/signup-confrim/signup-confrim.component.css ***!
  \************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ":root {\n  --input-padding-x: 1.5rem;\n  --input-padding-y: 0.75rem;\n}\n\nbody {\n  background: #9CECFB;\n  /* fallback for old browsers */\n  /* Chrome 10-25, Safari 5.1-6 */\n  background: linear-gradient(to right, #0052D4, #65C7F7, #9CECFB);\n  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n}\n\n.card-signin {\n  border: 2px solid #65C7F7;\n  border-radius: 1rem;\n  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);\n}\n\n.card-signin .card-title {\n  margin-bottom: 2rem;\n  font-weight: 300;\n  font-size: 1.5rem;\n}\n\n.card-signin .card-body {\n  padding: 2rem;\n}\n\n.form-signin {\n  width: 100%;\n}\n\n.form-signin .btn {\n  font-size: 80%;\n  border-radius: 5rem;\n  letter-spacing: .1rem;\n  font-weight: bold;\n  padding: 1rem;\n  transition: all 0.2s;\n}\n\n.form-label-group {\n  position: relative;\n  margin-bottom: 1rem;\n}\n\n.form-label-group input {\n  border-radius: 2rem;\n}\n\n.form-label-group>input,\n.form-label-group>label {\n  padding: 0.75rem 1.5rem;\n}\n\n.form-label-group>label {\n  position: absolute;\n  top: 0;\n  left: 0;\n  display: block;\n  width: 100%;\n  margin-bottom: 0;\n  /* Override default `<label>` margin */\n  line-height: 1.5;\n  color: #495057;\n  border: 1px solid transparent;\n  border-radius: .25rem;\n  transition: all .1s ease-in-out;\n}\n\n.btn-google {\n  color: white;\n  background-color: #ea4335;\n}\n\n.btn-facebook {\n  color: white;\n  background-color: #3b5998;\n}\n"

/***/ }),

/***/ "./src/app/components/signup-confrim/signup-confrim.component.html":
/*!*************************************************************************!*\
  !*** ./src/app/components/signup-confrim/signup-confrim.component.html ***!
  \*************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"body\">\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-9 col-md-7 col-lg-5 mx-auto\">\n        <div class=\"card card-signin my-5\">\n          <div class=\"card-body\">\n            <h5 class=\"card-title text-center\">Activate Account</h5>\n            <form class=\"form-signin\" #ResetResponseForm=ngForm (ngSubmit)=\"onSubmit()\">\n              <div class=\"form-label-group\">\n                <input type=\"text\" name=\"token\" id=\"inputtoken\" class=\"form-control\" placeholder=\"Enter Activation Token\" required autofocus [(ngModel)]=\"token\">\n              </div>\n              <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" [disabled]=\"!ResetResponseForm.valid\">Activate</button>\n            </form>\n\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/signup-confrim/signup-confrim.component.ts":
/*!***********************************************************************!*\
  !*** ./src/app/components/signup-confrim/signup-confrim.component.ts ***!
  \***********************************************************************/
/*! exports provided: SignupConfrimComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SignupConfrimComponent", function() { return SignupConfrimComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var src_app_services_api_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! src/app/services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var SignupConfrimComponent = /** @class */ (function () {
    function SignupConfrimComponent(notify, router, route, api) {
        var _this = this;
        this.notify = notify;
        this.router = router;
        this.route = route;
        this.api = api;
        this['token'] = null;
        route.queryParams.subscribe(function (params) {
            _this.token = params['token'];
        });
    }
    SignupConfrimComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.notify.clear();
        if (this.token) {
            this.notify.info("Wait...", { timeout: 0 });
            this.api.get("auth/signup/activate/" + this.token, null).subscribe(function (data) { _this.notify.clear(); _this.notify.info("Account Activated", { timeout: 2000 }); _this.router.navigateByUrl("/login"); }, function (error) { _this.notify.clear(); _this.notify.error(error.error.message); });
        }
    };
    SignupConfrimComponent.prototype.onSubmit = function () {
        this.ngOnInit();
    };
    SignupConfrimComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-signup-confrim',
            template: __webpack_require__(/*! ./signup-confrim.component.html */ "./src/app/components/signup-confrim/signup-confrim.component.html"),
            styles: [__webpack_require__(/*! ./signup-confrim.component.css */ "./src/app/components/signup-confrim/signup-confrim.component.css")]
        }),
        __metadata("design:paramtypes", [ng_snotify__WEBPACK_IMPORTED_MODULE_3__["SnotifyService"], _angular_router__WEBPACK_IMPORTED_MODULE_1__["Router"], _angular_router__WEBPACK_IMPORTED_MODULE_1__["ActivatedRoute"], src_app_services_api_service__WEBPACK_IMPORTED_MODULE_2__["ApiService"]])
    ], SignupConfrimComponent);
    return SignupConfrimComponent;
}());



/***/ }),

/***/ "./src/app/components/signup/signup.component.css":
/*!********************************************************!*\
  !*** ./src/app/components/signup/signup.component.css ***!
  \********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ":root {\n  --input-padding-x: 1.5rem;\n  --input-padding-y: 0.75rem;\n}\n\nbody {\n  background: #9CECFB;\n  /* fallback for old browsers */\n  /* Chrome 10-25, Safari 5.1-6 */\n  background: linear-gradient(to right, #0052D4, #65C7F7, #9CECFB);\n  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n}\n\n.card-signin {\n  border: 2px solid #65C7F7;\n  border-radius: 1rem;\n  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);\n}\n\n.card-signin .card-title {\n  margin-bottom: 2rem;\n  font-weight: 300;\n  font-size: 1.5rem;\n}\n\n.card-signin .card-body {\n  padding: 2rem;\n}\n\n.form-signin {\n  width: 100%;\n}\n\n.form-signin .btn {\n  font-size: 80%;\n  border-radius: 5rem;\n  letter-spacing: .1rem;\n  font-weight: bold;\n  padding: 1rem;\n  transition: all 0.2s;\n}\n\n.form-label-group {\n  position: relative;\n  margin-bottom: 1rem;\n}\n\n.form-label-group input {\n  border-radius: 2rem;\n}\n\n.form-label-group>input,\n.form-label-group>label {\n  padding: 0.75rem 1.5rem;\n}\n\n.form-label-group>label {\n  position: absolute;\n  top: 0;\n  left: 0;\n  display: block;\n  width: 100%;\n  margin-bottom: 0;\n  /* Override default `<label>` margin */\n  line-height: 1.5;\n  color: #495057;\n  border: 1px solid transparent;\n  border-radius: .25rem;\n  transition: all .1s ease-in-out;\n}\n\n.form-label-group input:not(:placeholder-shown) {\n  padding-top: 1.00rem;\n  padding-bottom: 0.25rem;\n}\n\n.form-label-group input:not(:placeholder-shown)~label {\n  padding-top: 0.25rem;\n  padding-bottom: 0.25rem;\n  font-size: 12px;\n  color: #777;\n}\n\n.btn-google {\n  color: white;\n  background-color: #ea4335;\n}\n\n.btn-facebook {\n  color: white;\n  background-color: #3b5998;\n}\n"

/***/ }),

/***/ "./src/app/components/signup/signup.component.html":
/*!*********************************************************!*\
  !*** ./src/app/components/signup/signup.component.html ***!
  \*********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"body\">\n  <div class=\"container\">\n    <div class=\"row\">\n      <div class=\"col-sm-9 col-md-7 col-lg-5 mx-auto\">\n        <div class=\"card card-signin my-5\">\n          <div class=\"card-body\">\n            <h5 class=\"card-title text-center\">Add new User</h5>\n            <form class=\"form-signin\" #registerForm=ngForm (ngSubmit)=\"onSubmit()\">\n\n                <div class=\"alert alert-danger\" [hidden]=\"!error.role\">\n                    {{ error.role }}\n                  </div>\n                <div class=\"alert alert-danger\" [hidden]=\"!error.email\">\n                    {{ error.email }}\n                  </div>\n                  <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                      {{ error.name }}\n                    </div>\n                  <div class=\"alert alert-danger\" [hidden]=\"!error.password\">\n                      {{ error.password }}\n                    </div>\n                  <!-- <div class=\"form-label-group\">\n                    <p>Role:</p>\n                    <select class=\"form-control\" name=\"role\" id=\"inputRole\" required [(ngModel)]=\"form.role\" autofocus>\n                        <option value=\"CompanyAdmin\">CompanyAdmin</option>\n                      </select>\n                    </div> -->\n\n              <div class=\"form-label-group\">\n                  <input type=\"name\" name=\"name\" id=\"inputName\" class=\"form-control\" placeholder=\"Name\" [(ngModel)]=\"form.name\" required>\n                </div>\n                <div class=\"form-label-group\">\n                    <input type=\"email\" name=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required [(ngModel)]=\"form.email\">\n                  </div>\n              <div class=\"form-label-group\">\n                <input type=\"password\" name=\"password\" id=\"inputPassword\" [(ngModel)]=\"form.password\" class=\"form-control\" placeholder=\"Password\" required>\n              </div>\n\n              <div class=\"form-label-group\">\n                <input type=\"password\" name=\"password_confirmation\" id=\"inputPasswordConfirm\" [(ngModel)]=\"form.password_confirmation\" class=\"form-control\" placeholder=\"Re enter Password\" required>\n              </div>\n\n              <div class=\"custom-control custom-checkbox mb-3\">\n                <input type=\"checkbox\" name=\"terms\" class=\"custom-control-input\" id=\"customCheck1\" [(ngModel)]=\"form.terms\">\n                <label class=\"custom-control-label\" for=\"customCheck1\">Agree terms and conditions</label>\n              </div>\n              <button class=\"btn btn-lg btn-primary btn-block text-uppercase\" type=\"submit\" [disabled]=\"!registerForm.valid || form.terms==false\">Add</button>\n            </form>\n            </div>\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n"

/***/ }),

/***/ "./src/app/components/signup/signup.component.ts":
/*!*******************************************************!*\
  !*** ./src/app/components/signup/signup.component.ts ***!
  \*******************************************************/
/*! exports provided: SignupComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SignupComponent", function() { return SignupComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var SignupComponent = /** @class */ (function () {
    function SignupComponent(api, token, router, notify) {
        this.api = api;
        this.token = token;
        this.router = router;
        this.notify = notify;
        this.form = {
            name: null,
            email: null,
            password: null,
            password_confirmation: null,
            terms: false
            // role : null
        };
        this.error = [];
    }
    SignupComponent.prototype.ngOnInit = function () {
    };
    SignupComponent.prototype.onSubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info('Wait...', { timeout: 0 });
        var header = {
            'Content-Type': 'application/json'
        };
        return this.api.post('auth/signup', this.form, header).subscribe(function (data) { return _this.tokenHandler(data); }, function (error) { return _this.errorHandle(error); });
    };
    SignupComponent.prototype.tokenHandler = function (data) {
        this.notify.clear();
        console.log(data);
        this.notify.info(data.message, { timeout: 2000 });
        this.notify.info("Please Confirm Email Address", { timeout: 0 });
        this.router.navigateByUrl('/login');
    };
    SignupComponent.prototype.errorHandle = function (error) {
        this.notify.clear();
        console.log(error);
        this.error = error.error.errors;
    };
    SignupComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-signup',
            template: __webpack_require__(/*! ./signup.component.html */ "./src/app/components/signup/signup.component.html"),
            styles: [__webpack_require__(/*! ./signup.component.css */ "./src/app/components/signup/signup.component.css")]
        }),
        __metadata("design:paramtypes", [_services_api_service__WEBPACK_IMPORTED_MODULE_1__["ApiService"],
            _services_token_service__WEBPACK_IMPORTED_MODULE_2__["TokenService"],
            _angular_router__WEBPACK_IMPORTED_MODULE_3__["Router"],
            ng_snotify__WEBPACK_IMPORTED_MODULE_4__["SnotifyService"]])
    ], SignupComponent);
    return SignupComponent;
}());



/***/ }),

/***/ "./src/app/components/users/users.component.css":
/*!******************************************************!*\
  !*** ./src/app/components/users/users.component.css ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ""

/***/ }),

/***/ "./src/app/components/users/users.component.html":
/*!*******************************************************!*\
  !*** ./src/app/components/users/users.component.html ***!
  \*******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"container\">\n  <div class=\"row\" style=\"margin-top: 30px;\">\n    <div class=\"col-6\">\n      <h3>Users</h3>\n    </div>\n    <div class=\"col-md-3 col-6 text-right\">\n      <a class=\"text-white btn btn-info\" (click)='add()'>Add New User</a>\n    </div>\n    <div class=\"col-md-3 text-right\">\n      <input type=\"search\" class=\"form-control\" id=\"search\" name=\"search\" placeholder=\"Search\"  [(ngModel)]=\"keyword\" (keyup)=\"search()\"/>\n    </div>\n  </div>\n</div>\n  <hr>\n\n  <div class=\"container\">\n      <table class=\"table table-bordered text-center\">\n          <thead>\n            <tr>\n              <th>Avatar</th>\n              <th (click)=\"sort('name')\"><a href=\"javascript:void(0)\" style=\"color:black\">Name <span *ngIf=\"sortData.col=='name'\"><i class=\"fa fa-caret-down\" *ngIf=\"sortData.order=='asc'\"></i><i class=\"fa fa-caret-up\" *ngIf=\"sortData.order=='desc'\"></i></span></a></th>\n              <th (click)=\"sort('email')\"><a href=\"javascript:void(0)\" style=\"color:black\">Email <span *ngIf=\"sortData.col=='email'\"><i class=\"fa fa-caret-down\" *ngIf=\"sortData.order=='asc'\"></i><i class=\"fa fa-caret-up\" *ngIf=\"sortData.order=='desc'\"></i></span></a></th>\n              <th (click)=\"sort('active')\"><a href=\"javascript:void(0)\" style=\"color:black\">Active <span *ngIf=\"sortData.col=='active'\"><i class=\"fa fa-caret-down\" *ngIf=\"sortData.order=='desc'\"></i><i class=\"fa fa-caret-up\" *ngIf=\"sortData.order=='asc'\"></i></span></a></th>\n              <th>Role</th>\n              <th>Action</th>\n            </tr>\n          </thead>\n          <tbody>\n            <tr *ngFor=\"let user of users\">\n              <td><img src=\"{{ host + user.avatar_url }}\" style=\"max-height: 40px;\"></td>\n              <td>{{ user.name }}</td>\n              <td>{{ user.email }}</td>\n              <td *ngIf=\"user.active\">Active</td>\n              <td *ngIf=\"!user.active\">Deactivated</td>\n              <td>\n                <div *ngFor=\"let role of user.roles\">{{ role.name }}</div>\n              </td>\n              <td>\n                <a href=\"javascript:void(0)\" class=\"item\"  (click)='pause( user.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Pause\" style=\"padding-right: 10px;\" *ngIf=\"user.active\">\n                    <i class=\"fa fa-pause\"></i>\n                </a>\n                <a href=\"javascript:void(0)\" class=\"item\"  (click)='pause( user.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Continue\" style=\"padding-right: 10px;\" *ngIf=\"!user.active\">\n                    <i class=\"fa fa-play\"></i>\n                </a>\n                <a href=\"javascript:void(0)\" class=\"item\"  (click)='edit( user.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Edit\" style=\"padding-right: 10px;\">\n                    <i class=\"fa fa-edit\"></i>\n                </a>\n                <a href=\"javascript:void(0)\" class=\"item\"  (click)='delete( user.id )' data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\" style=\"padding-right: 10px;\">\n                    <i class=\"fa fa-trash\"></i>\n                </a>\n              </td>\n            </tr>\n          </tbody>\n        </table>\n        <div class=\"col-12 justify-content-center\" style=\"display: flex !important; justify-content: center !important;\">\n          <ngb-pagination [(collectionSize)]=\"pagination.max\" (pageChange)=\"paginateClick($event)\" [(page)]=\"pagination.page\" (onclick)=\"paginateClick()\"></ngb-pagination>\n        </div>\n      </div>\n\n  <!-- The Modal -->\n  <div id=\"editModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n\n      <div class=\"modal-dialog\" role=\"document\">\n          <div class=\"modal-content\">\n            <div class=\"modal-header\">\n              <h5 class=\"modal-title\">Edit User</h5>\n              <button type=\"button\" class=\"close\" (click)='closeEditModal()'>\n                <span aria-hidden=\"true\">&times;</span>\n              </button>\n            </div>\n            <div class=\"modal-body\">\n                <div class=\"alert alert-danger\" [hidden]=\"!error.role\">\n                    {{ error.role }}\n                  </div>\n                  <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                      {{ error.name }}\n                    </div>\n              <form #newUserForm=ngForm>\n                <div class=\"form-group\">\n                    <label for=\"name\">Name</label>\n                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter name\"  required [(ngModel)]=\"data.name\"/>\n                </div>\n                <div class=\"form-group\">\n                    <label for=\"name\">Role</label>\n                    <div *ngFor=\"let role of roles\">\n                        <input type=\"checkbox\" name=\"{{ role.name }}\" value=\"{{ role.name }}\" (change)=\"checkbox($event)\" *ngIf=\"!data.role.includes(role.name)\">\n                      <input type=\"checkbox\" name=\"{{ role.name }}\" value=\"{{ role.name }}\" (change)=\"checkbox($event)\" *ngIf=\"data.role.includes(role.name)\" checked> {{ role.name }}\n                    </div>\n                </div>\n              </form>\n            </div>\n            <div class=\"modal-footer\">\n              <button type=\"submit\" class=\"btn btn-primary\"  [disabled]=\"!newUserForm.valid\" (click)='editsubmit()'>Save changes</button>\n              <button type=\"button\" class=\"btn btn-secondary\" (click)='closeEditModal()'>Close</button>\n            </div>\n          </div>\n        </div>\n\n  </div>\n\n  <!-- The Modal -->\n  <div id=\"addModal\" class=\"modal\" style=\"background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.4);\">\n\n      <div class=\"modal-dialog\" role=\"document\">\n          <div class=\"modal-content\">\n            <div class=\"modal-header\">\n              <h5 class=\"modal-title\">Add New User</h5>\n              <button type=\"button\" class=\"close\" (click)='closeAddModal()'>\n                <span aria-hidden=\"true\">&times;</span>\n              </button>\n            </div>\n            <div class=\"modal-body\">\n                <div class=\"alert alert-danger\" [hidden]=\"!error.role\">\n                    {{ error.role }}\n                  </div>\n                <div class=\"alert alert-danger\" [hidden]=\"!error.email\">\n                    {{ error.email }}\n                  </div>\n                  <div class=\"alert alert-danger\" [hidden]=\"!error.name\">\n                      {{ error.name }}\n                    </div>\n                  <div class=\"alert alert-danger\" [hidden]=\"!error.password\">\n                      {{ error.password }}\n                    </div>\n              <form #editUserForm=ngForm>\n\n                  <div class=\"form-group\">\n                      <label for=\"name\">Name</label>\n                    <input type=\"name\" name=\"name\" id=\"inputName\" class=\"form-control\" placeholder=\"Name\" [(ngModel)]=\"form.name\" required>\n                  </div>\n                  <div class=\"form-group\">\n                      <label for=\"name\">Email</label>\n                      <input type=\"email\" name=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required [(ngModel)]=\"form.email\">\n                    </div>\n                    <div class=\"form-group\">\n                        <label for=\"name\">Role</label>\n                        <div *ngFor=\"let role of roles\">\n                            <input type=\"checkbox\" name=\"{{ role.name }}\" value=\"{{ role.name }}\" (change)=\"checkboxAdd($event)\"> {{ role.name }}\n                        </div>\n                    </div>\n                    <div class=\"form-group\">\n                        <label for=\"name\">Password</label>\n                  <input type=\"password\" name=\"password\" id=\"inputPassword\" [(ngModel)]=\"form.password\" class=\"form-control\" placeholder=\"Password\" required>\n                </div>\n\n                <div class=\"form-group\">\n                    <label for=\"name\">Password Confirmation</label>\n                  <input type=\"password\" name=\"password_confirmation\" id=\"inputPasswordConfirm\" [(ngModel)]=\"form.password_confirmation\" class=\"form-control\" placeholder=\"Re enter Password\" required>\n                </div>\n              </form>\n\n            </div>\n            <div class=\"modal-footer\">\n              <button type=\"button\" class=\"btn btn-primary\" (click)='addModalSubmit()' [disabled]=\"!editUserForm.valid\">Save changes</button>\n              <button type=\"button\" class=\"btn btn-secondary\" (click)='closeAddModal()'>Close</button>\n            </div>\n          </div>\n        </div>\n  </div>\n"

/***/ }),

/***/ "./src/app/components/users/users.component.ts":
/*!*****************************************************!*\
  !*** ./src/app/components/users/users.component.ts ***!
  \*****************************************************/
/*! exports provided: UsersComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UsersComponent", function() { return UsersComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _services_api_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/api.service */ "./src/app/services/api.service.ts");
/* harmony import */ var ng_snotify__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng-snotify */ "./node_modules/ng-snotify/index.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ng-bootstrap/ng-bootstrap */ "./node_modules/@ng-bootstrap/ng-bootstrap/fesm5/ng-bootstrap.js");
/* harmony import */ var _services_token_service__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../services/token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var UsersComponent = /** @class */ (function () {
    function UsersComponent(pg, token, http, router, api, notify) {
        this.pg = pg;
        this.token = token;
        this.http = http;
        this.router = router;
        this.api = api;
        this.notify = notify;
        this.users = null; //Store Users Data
        this.roles = null; //Store all roles Data
        this.error = []; //Form errors
        this.keyword = null; //Current Search Keyword
        this.pagination = {
            'page': '1',
            'max': '10'
        };
        this.data = {
            "id": null,
            "name": null,
            "role": []
        };
        this.form = {
            'name': null,
            'email': null,
            'password': null,
            'password_confirmation': null,
            'role': []
        };
        this.headers = {
            'Authorization': this.token.get()
        };
        this.sortData = {
            "col": null,
            "order": null
        };
        pg.boundaryLinks = true;
        pg.rotate = true;
    }
    UsersComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Loading...", { timeout: 0 });
        if (this.keyword) {
            this.api.get('users?search=' + this.keyword + '&page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.notify.clear(); _this.token.remove(); _this.router.navigateByUrl("/login"); });
        }
        else {
            this.api.get('users?page=' + this.pagination.page + '&sort=' + this.sortData.col + '&order=' + this.sortData.order, this.headers).subscribe(function (data) { return _this.datahandler(data); }, function (error) { _this.token.remove(); _this.router.navigateByUrl("/login"); });
        }
        this.api.get('role', this.headers).subscribe(function (data) { console.log(data); _this.roles = data; }, function (error) { _this.notify.clear(); _this.notify.error(error.error.message); });
    };
    UsersComponent.prototype.datahandler = function (data) {
        console.log(data.data);
        this.notify.clear();
        this.users = data.data;
        this.pagination.max = data.total;
    };
    //sort handler
    UsersComponent.prototype.sort = function (col) {
        console.log(col);
        if (this.sortData.order == "asc" && this.sortData.col == col) {
            this.sortData.order = "desc";
        }
        else if (this.sortData.order == "desc" && this.sortData.col == col) {
            this.sortData.order = null;
            col = null;
        }
        else {
            this.sortData.order = "asc";
        }
        this.sortData.col = col;
        this.ngOnInit();
    };
    //Paginate Handling
    UsersComponent.prototype.paginateClick = function (page) {
        console.log(page);
        this.pagination.page = page;
        this.ngOnInit();
    };
    //Serach Handling
    UsersComponent.prototype.search = function () {
        this.ngOnInit();
    };
    //Pause or Active User Handling
    UsersComponent.prototype.pause = function (id) {
        var _this = this;
        this.notify.clear();
        console.log(id);
        var body = {
            "id": id
        };
        return this.api.post('users/pause', body, this.headers).subscribe(function (data) { _this.notify.info("Success", { timeout: 2000 }); _this.ngOnInit(); }, function (error) { return _this.notify.error(error.message, { timeout: 0 }); });
    };
    //User edit Handling
    UsersComponent.prototype.edit = function (id) {
        var _this = this;
        this.notify.clear();
        this.data.name = null;
        this.data.role = [];
        this.api.get('users/' + id, this.headers).subscribe(function (data) { return _this.editDataHandler(data); }, function (error) { return _this.notify.error("User Not Found", { timeout: 0 }); });
        this.data.id = id;
        var modal = document.getElementById('editModal');
        modal.style.display = "block";
    };
    UsersComponent.prototype.editDataHandler = function (data) {
        console.log(data);
        this.data.name = data.name;
        for (var i = 0; i < data.roles.length; i++)
            this.data.role.push(data.roles[i].name);
    };
    UsersComponent.prototype.checkbox = function (event) {
        if (event.srcElement.checked) {
            this.data.role.push(event.srcElement.name);
        }
        else {
            var index = this.data.role.indexOf(event.srcElement.name);
            this.data.role.splice(index, index + 1);
        }
        console.log(this.data.role);
    };
    UsersComponent.prototype.editsubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.put('users/' + this.data.id, this.data, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("User Updated Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeEditModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    UsersComponent.prototype.closeEditModal = function () {
        this.error = [];
        var modal = document.getElementById('editModal');
        modal.style.display = "none";
    };
    //User delete Handling
    UsersComponent.prototype.delete = function (id) {
        var _this = this;
        this.notify.clear();
        this.notify.warning('Are you sure you want to detele this User?', 'Delete User', {
            timeout: 0,
            showProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            buttons: [
                { text: 'Yes', action: function () {
                        var headers = {
                            'Authorization': _this.token.get()
                        };
                        return _this.api.delete('users/' + id, headers).subscribe(function (data) { _this.notify.info("Success", { timeout: 2000 }); _this.ngOnInit(); }, function (error) { return _this.notify.error(error.message, { timeout: 0 }); });
                    }, bold: false },
                { text: 'No' }
            ]
        });
    };
    //New User add Handling
    UsersComponent.prototype.add = function () {
        this.notify.clear();
        this.form.name = null;
        this.form.email = null;
        this.form.password = null;
        this.form.password_confirmation = null;
        this.form.role = [];
        var modal = document.getElementById('addModal');
        modal.style.display = "block";
    };
    UsersComponent.prototype.checkboxAdd = function (event) {
        if (event.srcElement.checked) {
            this.form.role.push(event.srcElement.name);
        }
        else {
            var index = this.form.role.indexOf(event.srcElement.name);
            this.form.role.splice(index, index + 1);
        }
        console.log(this.form.role);
    };
    UsersComponent.prototype.addModalSubmit = function () {
        var _this = this;
        this.notify.clear();
        this.notify.info("Wait...", { timeout: 0 });
        this.api.post('users', this.form, this.headers).subscribe(function (data) {
            _this.notify.clear();
            _this.notify.info("User Added Successfully", { timeout: 2000 });
            _this.ngOnInit();
            _this.closeAddModal();
        }, function (error) { _this.notify.clear(); _this.error = error.error.errors; });
    };
    UsersComponent.prototype.closeAddModal = function () {
        this.error = [];
        var modal = document.getElementById('addModal');
        modal.style.display = "none";
    };
    UsersComponent = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"])({
            selector: 'app-users',
            template: __webpack_require__(/*! ./users.component.html */ "./src/app/components/users/users.component.html"),
            styles: [__webpack_require__(/*! ./users.component.css */ "./src/app/components/users/users.component.css")]
        }),
        __metadata("design:paramtypes", [_ng_bootstrap_ng_bootstrap__WEBPACK_IMPORTED_MODULE_5__["NgbPaginationConfig"], _services_token_service__WEBPACK_IMPORTED_MODULE_6__["TokenService"], _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"], _angular_router__WEBPACK_IMPORTED_MODULE_4__["Router"], _services_api_service__WEBPACK_IMPORTED_MODULE_2__["ApiService"], ng_snotify__WEBPACK_IMPORTED_MODULE_3__["SnotifyService"]])
    ], UsersComponent);
    return UsersComponent;
}());



/***/ }),

/***/ "./src/app/services/afterlogin.service.ts":
/*!************************************************!*\
  !*** ./src/app/services/afterlogin.service.ts ***!
  \************************************************/
/*! exports provided: AfterloginService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AfterloginService", function() { return AfterloginService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _token_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var AfterloginService = /** @class */ (function () {
    function AfterloginService(Token) {
        this.Token = Token;
    }
    AfterloginService.prototype.canActivate = function (route, state) {
        return this.Token.loggedIn();
    };
    AfterloginService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])(),
        __metadata("design:paramtypes", [_token_service__WEBPACK_IMPORTED_MODULE_1__["TokenService"]])
    ], AfterloginService);
    return AfterloginService;
}());



/***/ }),

/***/ "./src/app/services/api.service.ts":
/*!*****************************************!*\
  !*** ./src/app/services/api.service.ts ***!
  \*****************************************/
/*! exports provided: ApiService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ApiService", function() { return ApiService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var ApiService = /** @class */ (function () {
    function ApiService(http) {
        this.http = http;
        this.host = "https://ems.aladinlabs.com";
        this.baseURL = this.host + "/api/";
    }
    ApiService.prototype.post = function (url, data, headers) {
        return this.http.post("" + this.baseURL + url, data, { headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"](headers) });
    };
    ApiService.prototype.get = function (url, headers) {
        return this.http.get("" + this.baseURL + url, { headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"](headers) });
    };
    ApiService.prototype.delete = function (url, headers) {
        return this.http.delete("" + this.baseURL + url, { headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"](headers) });
    };
    ApiService.prototype.put = function (url, data, headers) {
        return this.http.put("" + this.baseURL + url, data, { headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"](headers) });
    };
    ApiService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])({
            providedIn: 'root'
        }),
        __metadata("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"]])
    ], ApiService);
    return ApiService;
}());



/***/ }),

/***/ "./src/app/services/auth.service.ts":
/*!******************************************!*\
  !*** ./src/app/services/auth.service.ts ***!
  \******************************************/
/*! exports provided: AuthService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AuthService", function() { return AuthService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var rxjs__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! rxjs */ "./node_modules/rxjs/_esm5/index.js");
/* harmony import */ var _token_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AuthService = /** @class */ (function () {
    function AuthService(token) {
        this.token = token;
        this.loggedIn = new rxjs__WEBPACK_IMPORTED_MODULE_1__["BehaviorSubject"](this.token.loggedIn());
        this.authStatus = this.loggedIn.asObservable();
    }
    AuthService.prototype.changeAuthStatus = function (value) {
        this.loggedIn.next(value);
    };
    AuthService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])({
            providedIn: 'root'
        }),
        __metadata("design:paramtypes", [_token_service__WEBPACK_IMPORTED_MODULE_2__["TokenService"]])
    ], AuthService);
    return AuthService;
}());



/***/ }),

/***/ "./src/app/services/beforelogin.service.ts":
/*!*************************************************!*\
  !*** ./src/app/services/beforelogin.service.ts ***!
  \*************************************************/
/*! exports provided: BeforeloginService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BeforeloginService", function() { return BeforeloginService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _token_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./token.service */ "./src/app/services/token.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var BeforeloginService = /** @class */ (function () {
    function BeforeloginService(Token) {
        this.Token = Token;
    }
    BeforeloginService.prototype.canActivate = function (route, state) {
        return !this.Token.loggedIn();
    };
    BeforeloginService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])(),
        __metadata("design:paramtypes", [_token_service__WEBPACK_IMPORTED_MODULE_1__["TokenService"]])
    ], BeforeloginService);
    return BeforeloginService;
}());



/***/ }),

/***/ "./src/app/services/token.service.ts":
/*!*******************************************!*\
  !*** ./src/app/services/token.service.ts ***!
  \*******************************************/
/*! exports provided: TokenService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "TokenService", function() { return TokenService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./api.service */ "./src/app/services/api.service.ts");
var __decorate = (undefined && undefined.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (undefined && undefined.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var TokenService = /** @class */ (function () {
    function TokenService(api) {
        this.api = api;
        this.iss = {
            login: this.api.baseURL + 'login',
            signup: this.api.baseURL + 'signup'
        };
    }
    TokenService.prototype.set = function (token) {
        localStorage.setItem('token', token);
        //localStorage.setItem('user', JSON.stringify(token.user));
    };
    TokenService.prototype.get = function () {
        return localStorage.getItem('token');
    };
    TokenService.prototype.remove = function () {
        localStorage.removeItem('token');
    };
    TokenService.prototype.loggedIn = function () {
        var token = this.get();
        if (token == null)
            return false;
        return true;
    };
    TokenService = __decorate([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"])({
            providedIn: 'root'
        }),
        __metadata("design:paramtypes", [_api_service__WEBPACK_IMPORTED_MODULE_1__["ApiService"]])
    ], TokenService);
    return TokenService;
}());



/***/ }),

/***/ "./src/environments/environment.ts":
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/*! exports provided: environment */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "environment", function() { return environment; });
// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.
var environment = {
    production: false
};
/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.


/***/ }),

/***/ "./src/main.ts":
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/platform-browser-dynamic */ "./node_modules/@angular/platform-browser-dynamic/fesm5/platform-browser-dynamic.js");
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./app/app.module */ "./src/app/app.module.ts");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./environments/environment */ "./src/environments/environment.ts");




if (_environments_environment__WEBPACK_IMPORTED_MODULE_3__["environment"].production) {
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["enableProdMode"])();
}
Object(_angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__["platformBrowserDynamic"])().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_2__["AppModule"])
    .catch(function (err) { return console.error(err); });


/***/ }),

/***/ 0:
/*!***************************!*\
  !*** multi ./src/main.ts ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /home/admin/web/EMS-FrontEnd/src/main.ts */"./src/main.ts");


/***/ })

},[[0,"runtime","vendor"]]]);
//# sourceMappingURL=main.js.map