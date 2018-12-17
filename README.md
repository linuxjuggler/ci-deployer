[![Docker Pulls](https://img.shields.io/docker/pulls/zaherg/ci-deployer.svg)](https://hub.docker.com/r/zaherg/ci-deployer/) [![](https://images.microbadger.com/badges/image/zaherg/ci-deployer.svg)](https://microbadger.com/images/zaherg/ci-deployer "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/zaherg/ci-deployer.svg)](https://microbadger.com/images/zaherg/ci-deployer "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/zaherg/ci-deployer.svg)](https://microbadger.com/images/zaherg/ci-deployer "Get your own commit badge on microbadger.com")  [![](https://img.shields.io/github/last-commit/linuxjuggler/ci-deployer.svg)](https://github.com/linuxjuggler/ci-deployer)


## Image description

This image contain PHP 7.3, Composer and [Deployer](https://deployer.org/)

## Runing the image:

```
docker run --name deployer -rm zaherg/ci-deployer:latest
```

## Installed modules information

It has the following modules:

[PHP Modules]
1. Core
1. ctype
1. curl
1. date
1. dom
1. fileinfo
1. filter
1. ftp
1. hash
1. iconv
1. json
1. libxml
1. mbstring
1. mysqlnd
1. openssl
1. pcre
1. PDO
1. pdo_sqlite
1. Phar
1. posix
1. readline
1. Reflection
1. session
1. SimpleXML
1. sodium
1. SPL
1. sqlite3
1. standard
1. tokenizer
1. xml
1. xmlreader
1. xmlwriter
1. zip
1. zlib


## Using Deployer Recipes

This image does not include [Deployer Recipes](https://github.com/deployphp/recipes) so you will need to install them manually 
inside your project