class PagesController < ApplicationController
  def index
  end
  def landing_page
      @products = Product.limit(4)

  end
  UserMailer.contact_form(@email, @name, @message).deliver_now


 def thank_you
 
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  # the I18n.default_locale when a translation cannot be found).

 end
end