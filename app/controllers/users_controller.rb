class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new( params[:user] )

		if @user.save
			render :inline => 'new user created'
		else
			render :action => 'new'
		end
	end
end
