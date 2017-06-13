class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to sessions_new_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end
