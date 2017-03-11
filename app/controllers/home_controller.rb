class HomeController < ApplicationController
  def index
  	@product=Product.all()
  end
  def sell_get

  end
  def sell
  	product=params[:product]
  	description=params[:description]
  	amount=params[:amount]
  	Seller.create(:product=>product,:description=>description,:amount=>amount)
    Product.create(:product=>product,:description=>description,:amount=>amount)
    return redirect_to '/'
  end
end
