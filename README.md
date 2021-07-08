# Kidvacc

This app will help parent to have knowledge of the vaccine that their child/ward is due for. Nearest location hospital or pead hospital, ability to choose between public or private hospitals, and the ability to book appointment/slot before hand and even make payment. The reason behind this topic is because I recently went to vaccinate my baby in a nearby healthcare center she was giving vitamin A instead of typhoid vaccine that was due to her.  I found out later and had to go to our regular hospital. This could have been avoided if I was pre-informed.

For quick navigation:
-   [Contribution Guide](#contribute)
-   [Learning Laravel](#learn-laravel)
-   [License](#license)

## <a name="contribute"></a> Contribution Guide

### Setting up your workspace

Before running this app, locally make sure you have the following software installed:

-   XAMPP or it's equivalent
-   NPM
-   Composer
-  postman (optional for api testing)

Now, follow this steps to start contributing:

1. Go to [https://github.com/zuri-training/kidvacc-be-pjt-21](https://github.com/zuri-training/kidvacc-be-pjt-21) and fork the repo.
2. After forking, go to your github page. Clone your forked repo. Create a project folder on your local machine. Navigate to it in the terminal. Run `git clone https://github.com/<your github username>/kidvacc-be-pjt-21`.
3. Run `cd kidvacc-be-pjt-21`
4. Run `composer install`
5. Run `npm install`
6. Copy all the contents of the `.env.example` file. Create `.env` file and paste all the contents you copied from .env.exmaple file to your .env file.
7. Run `php artisan key:generate --show` to retrieve a base64 encoded string for Laravel's `APP_KEY` in `.env`
8. Set your DB_DATABASE = kidvacc
9. If you are using XAMPP , run it as an administrator. Start Apache and Mysql. Go to `localhost/phpmyadmin` and create new database and name it `kidvacc`. 
10. Run `php artisan serve` from your terminal and the app will be running on `http://127.0.0.1:8000/` on your browser

##### REMINDER on contributing:

1. Always create branch for your task `git checkout -b <branchname>`.
2. After make changes : 
- git add .
- git commit  -m "some comments"
- git push origin `<name of your branch>`
3. Create PR.


## <a name="learn-laravel"></a> Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

You can watch Zuri [APIs in Laravel](https://www.youtube.com/watch?v=L8-FUtK89V4) for some resources.

## <a name="license"></a> License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT)
