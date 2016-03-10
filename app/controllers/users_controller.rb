class UsersController < ApplicationController

	get '/signup' do
		erb :'users/new'
	end

	post '/signup' do
		if params[:username] == "" || params[:password] == ""
			redirect to '/signup'
		else
			@user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
			session[:user_id] = @user.id
			redirect '/'
		end	
	end

	get '/login' do
		if !session[:user_id]
			erb :'users/login'
		else
			redirect '/'
		end
	end	

	post '/login' do

	end

end
