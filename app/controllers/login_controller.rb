class LoginController < ApplicationController

  def signin_get
  
  end
  
  def signin

  	email=params[:email]
  	password=params[:password]
  	user=User.find_by_email(email)
    if user
        if user.password==password
        	session[:user_id]=user.id
        	return redirect_to '/';
        else
        	return redirect_to '/signin';
        end
       else
       return redirect_to '/signup'
    end
  end

  def signup_get
  
  end

  def signup
  	email=params[:email]
  	password=params[:password]
  	name=params[:name]
  	unless User.find_by_email(email)
      user=User.create(:name=>name,:email=>email,:password=>password)
      session[:user_id]=user.id
      return redirect_to '/'
    else
    	return redirect_to '/signin'
  	end
  end

  def logout
  	session[:user_id]=nil
  	redirect_to '/'
  end

end
