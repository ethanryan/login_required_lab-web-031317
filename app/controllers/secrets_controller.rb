class SecretsController < ApplicationController

  before_action :require_login

  # def show
  #   @username = session[:name]
  #   if @username == nil || @username == ""
  #     redirect_to '/sessions/new'
  #   end
  # end

  private

  def require_login
    redirect_to :new_session unless session.include? :name
    #got the above from classmate
  end

end
