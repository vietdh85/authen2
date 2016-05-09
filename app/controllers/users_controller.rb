class UsersController < ApplicationController
  def index
    User.all
  end

  def login
    user = User.find(1)
    sign_in(user)
  end

  def logout
    sign_out(current_user)
  end

end
