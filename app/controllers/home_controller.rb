# Home controller
# Coding by: tranthanhepu
# Update 2014/10/13

class HomeController < ApplicationController

  #========= Index =========#
  def index  	  	
  	@signup = Home.new  
  end

  #========= Signup new account =========#
  def new
    if request.post?
      @signup = Home.new(signup_params)   
      if @signup.save     
        #====== If save info successfully ===============#
        
        #1- Send email to user 
        SendMailer.active_email(@signup).deliver

        #2- Show template success
        render template: "home/message"

      else
        #Save fail info
        render 'index'
      end
    else
        render 'index'
    end
  end
  
  private def signup_params  	
  	params.require(:home).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end


  #========= Active account by email =========#
  def active
    puts 'aaaa'
  end
  
end
