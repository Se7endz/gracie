class UsersController < ApplicationController
  before_action :authenticate_admin!

  def index

  end

  def new

    @user_new = User.new

  end

  def create
    User.create(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      email: params[:user][:email],
      phone: params[:user][:phone],
      nationality: params[:user][:nationality],
      weight: params[:user][:weight],
      belt: params[:user][:belt],
      profession: params[:user][:profession],
      password: params[:user][:password],
      age: params[:user][:age]
      )
    redirect_to pages_admin_interface_path
  end

  def edit
    @user_to_edit = User.find(params[:id])

    @user_number = User.find(params[:id]).id
    @user_age = User.find(params[:id]).age
    @user_phone = User.find(params[:id]).phone
    @user_weight = User.find(params[:id]).weight
    @user_job = User.find(params[:id]).profession
    @user_email = User.find(params[:id]).email
    @user_first_name = User.find(params[:id]).first_name
    @user_last_name = User.find(params[:id]).last_name

  end

  def update
    @user_to_edit = User.find(params[:id])
    @user_to_edit.update(
      first_name: params[:user][:first_name],
      belt: params[:user][:belt]
      )
    redirect_to pages_admin_interface_path
  end

  

 

  def destroy

   @user_to_edit = User.find(params[:id])
   @user_to_edit.destroy
   redirect_to pages_admin_interface_path

  end

  private

  def authorize_user_crud
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end

end
