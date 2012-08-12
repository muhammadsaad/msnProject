class UserSessionsController < ApplicationController
  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new( params[:user_session] )

  	if @user_session.save
      @current_user_session = @user_session
      render :inline => 'Login Successful'
    else
      render :action => 'new'
    end
  end
end
