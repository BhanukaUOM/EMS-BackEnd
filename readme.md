<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

# Education Management System Backend

## Getting Started

1. Prerequisite:

      * [Composer](https://getcomposer.org/download/)
      * [Xampp](https://www.apachefriends.org/download.html)

2. Create DB:

    ```
    Create Database 'ems'
    ```

3. Install Dependancies

    ```
    $ composer install
    ```

4. Migrate Database

    ```
    $ php artisan migrate
    ```

5. Configure Passport

    ```
    $ php artisan passport:install
    ```
   
6. Run Locally

    ```
    $ php artisan serve
    ```
    
* Default Admin Credentials:

    ```
    Email: admin@ems.com
    Password: abc123    
    ```
