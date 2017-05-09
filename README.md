# README

Below is a guide to get this app up and running on your local machine.

<h3>Running the server </h3>

- You will also require postgresql with the role "postgres" with password "postgres" (You can use whatever role and password by changing the config/database.yml file, which contains the username and password under the default definitions)

- You will need to get Ruby (I have used Ruby 2.4.1). There is a .ruby_version included in the repository which can be used by rbenv (a ruby version manager)

- After this, you will need bundler. <b>gem install bundler</b>

- After you have cloned the repository, run <b>bundle install</b> inside the project root folder

- You will now be able to run the migrations and create the tables the app needs. <b>rake db:migrate</b>

- You can now run the server. <b>rails s</b>

- Create a new user and search using twitters api! You will also be able to use the history tab to look at what you have already searched for.

<h3>Running the tests</h3>

- The tests are located in the test/controllers/search_controller_test.rb file.

- Create a database and run the migrations as before but in the test enviroment. <b>RAILS_ENV=test rake db:create db:migrate</b>

- Run the tests with <b>rake test</b>
