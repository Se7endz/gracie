class PagesController < ApplicationController
	before_action :authenticate_admin!, only: [:admin_interface]
  before_action :authenticate_user!, only: [:secret_page]
  
  def static_lp
    
  end

  def landing_page

  end

  def secret_page
    
  end

  def home_page
    
  end
  def admin_interface
  		@users = User.all
  		@users_number = User.all.count
  		@users_no_paid = User.where("subscription > '0'").count
  		#@user_to_pay = User.find(81).subscription
  		puts "$$" * 100
  		puts @user_to_pay
  		puts "$$" * 100
  		
  end
end
