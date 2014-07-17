rails-rest
==========

Simple demo to develop a restfull project with rails

First create your rest routes, check config/routes.rb

Create your controllers, use folders if you use namespace in your routes and don't forget call your namespace like a module

	module Api
  	module V1
    	class UsersController

	or the same: class Api::V1::UsersController

If you want to write Api in uppercase you need to go config/initializers/inflections.rb and put that

	ActiveSupport::Inflector.inflections(:en) do |inflect|
  	inflect.acronym 'API'
	end

Now you can write class API::V1::UsersController

Don't forget

	rake db:migrate
	rake db:seed

And finally go to http://localhost:3000/api/v1/users or http://localhost:3000/api/v1/posts