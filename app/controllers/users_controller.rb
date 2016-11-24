class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = current_user
    @photos = Photo.all
    render("users/show.html.erb")
  end

  def likes
    @user = current_user
    @likes = Like.all
    @photos = Photo.all
    render("likes.html.erb")
  end

end
