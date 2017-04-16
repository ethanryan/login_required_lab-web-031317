class SessionsController < ApplicationController

  def new
    # nothing to do here!
  end

  def create
    @current_user = params[:name] #set @username to params[:name] input by user on new.html.erb form_tag
    if @current_user == nil || @current_user == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name] #set session[:name] to params[:name] input by user on new.html.erb form_tag
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new' #logout will actually be a submit button that we style to look like a link
  end

end
