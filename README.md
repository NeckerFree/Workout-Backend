# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

gem install activerecord-sqlserver-adapter
gem install tiny_tds -- --with-freetds-include=C:\Ruby31-x64\msys64\ucrt64\include\freetds
rails g model User name email password_digest
rails generate migration CreateTrainings location:string distance:float duration:time starthour:time trainingdate:date feel:integer
rails generate migration AddUserRefToTrainings user:references