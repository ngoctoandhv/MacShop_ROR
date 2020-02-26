class ApplicationController < ActionController::Base
  # before_filter :authorize
  protect_from_forgery with: :exception
  
  private
  
  def current_cart
      Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
  end


  helper_method :current_cart

  # protected
  
  #   def authorize
  #       @user = User.find_by_id(session[:user_id]) 
  #       if @user == nil
  #           redirect_to '/login', :notice => 'You must login first'
  #       end
  #   end
end
