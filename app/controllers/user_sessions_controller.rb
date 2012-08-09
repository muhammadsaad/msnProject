class UserSessionsController < ApplicationController
  def new
  	@user_session = UserSession.new
  end

  def create
  	@user_session = UserSession.new( params[:user_session] )
  	if UserSession.where( :email => params[:email] )
      @current_user_session = @user_session
      flash[:notice] = "Login successful!"
      redirect_to :controller => "users", :action => "new"
    else
      render :action => new
    end
  end
end
