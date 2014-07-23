class UsersController < ApplicationController
  def sign_up
  	redirect_to(:controller => 'articles', :action => 'index')
  end
end
