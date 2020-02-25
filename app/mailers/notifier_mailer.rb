class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.order_received.subject
  #
  # def order_received
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
  # default :from => "Ngoc Toan <ngoctoandhv95@gmail.com>"
 
  def order_received(order)    
      @order = order

      mail :to => @order.email, :subject => "We've received your order"
  end
end
