class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = user.new
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]

    @member.valid?
    if @member.errors.blank?

    @member.save
  end
end
