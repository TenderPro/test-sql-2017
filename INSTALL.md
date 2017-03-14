# Инструкция по установке

## Зависимости

* linux 64bit (git, make, wget)
* [Docker](http://docker.io)
* [fidm](https://github.com/LeKovr/fidm)
* [ConSup](https://github.com/LeKovr/consup)

## Установка

* [Установить consup](https://github.com/LeKovr/consup/blob/master/README.ru.md)

* Скачать исходник с модулями

`git clone --recursive ..`

* Установить зависимости

`make deps`

* Собрать проект

`make start`

## Проверка успеха сборки

```
make psql

test01=> \df tnd.*
                             List of functions
 Schema |      Name      | Result data type | Argument data types |  Type  
--------+----------------+------------------+---------------------+--------
 tnd    | bid_winner_set | void             | a_id integer        | normal
(1 row)

test01=>
```
