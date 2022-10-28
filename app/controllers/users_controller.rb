class UsersController < ApplicationController
  def index
    @num = 10 + 1
    @users = User.all
  end
end
