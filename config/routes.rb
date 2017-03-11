Rails.application.routes.draw do

  get '/'=>'home#index'

  get '/sell'=>'home#sell_get'

  post '/sell'=>'home#sell'
  get '/signin'=>'login#signin_get'

  get '/signup'=>'login#signup_get'

  post '/signup'=>'login#signup'

  post '/signin'=>'login#signin'

  get '/logout'=> 'login#logout'
end
