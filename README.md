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

Steps to create application:
1. rails new email_to_helpdesk
2. rails g mailer Order received assigned
3. rails g scaffold Ticket company:string serial:string machine_location:string contact_person:string contract_number:string problem_description:text avoid_time:time office_closing_time:time special_instructions:text ticket_no:string
4. rails db:migrate
5. set the root in routes.rb
6. Install rbenv-vars Plugin (source from Digital Ocean https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-puma-and-nginx-on-ubuntu-14-04#install-rbenv-vars-plugin)
Set Environment Variables
Now that the rbenv-vars plugin is installed, let's set up the required environment variables.
First, generate the secret key, which will be used to verify the integrity of signed cookies:

cd ~/appname
rake secret

Copy the secret key that is generated, then open the .rbenv-vars file with your favorite editor. We will use vi:

vi .rbenv-vars

Any environment variables that you set here can be read by your Rails application.
First, set the SECRET_KEY_BASE variable like this (replace the highlighted text with the secret that you just generated and copied):

SECRET_KEY_BASE=your_generated_secret

Next, set the APPNAME_DATABASE_USER variable like this (replace the highlighted "APPNAME" with your your application name, and "appname" with your production database username):

APPNAME_DATABASE_USER=appname

Lastly, set the APPNAME_DATABASE_PASSWORD variable like this (replace the highlighted "APPNAME" with your your application name, and "prod_db_pass" with your production database user password):

APPNAME_DATABASE_PASSWORD=prod_db_pass

Save and exit.
You may view which environment variables are set for your application with the rbenv-vars plugin by running this command:

rbenv vars

If you change your secret or database password, update your .rbenv-vars file. Be careful to keep this file private, and don't include it any public code repositories.
7. set email secret settings in the .rbenv-vars
