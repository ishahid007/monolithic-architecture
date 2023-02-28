
> ### PHP + SQLITE3 codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to, A Monolith architecture
.




This codebase was created to demonstrate a fully functional REST API built with **PHP + SQLITE3**, including CRUD operations, authentication, routing, pagination, and more.

Hope you'll find this example helpful. Pull requests are welcome!

----------

# Getting started

## Installation

Clone the repository

    git clone git@github.com:ishahid007/monolithic-architecture.git

Switch to the repo folder

    cd monolithic-architecture

Set it up using Docker all the dependencies using composer

    docker-compose up

See the local development server

    localhost:80

You can now access the server at http://localhost:80

**TL;DR command list**

    git clone git@ishahid007/monolithic-architecture.git
    cd monolithic-architecture
    docker-compose up
    composer install


## Folders

- `admin/` - Contains all the files related to admin
- `css/` - Contains all the stylesheet files
- `js/` - Contains all the javascript files
- `images/` - Contains all the images being used for project
- `db/` - Contains the db sqlite file


## Important URLs

- `login.php` - For accessing the entry test for Student
- `admin/login.php` - For admin access, use default credentials, username: admin, password: admin123 (No spaces)
- `admin/login.php` - For staff access, use credentials, you set while creating a staff inside admin. Remember, default password of staff is same as of username
- `Actions.php?a=logout/` - Always logout before switching to other roles



# Cross-Origin Resource Sharing (CORS)

This applications has CORS enabled by default on all API endpoints. The CORS allowed origins can be changed by setting them in the config file. Please check the following sources to learn more about CORS.

- https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS
- https://en.wikipedia.org/wiki/Cross-origin_resource_sharing
- https://www.w3.org/TR/cors