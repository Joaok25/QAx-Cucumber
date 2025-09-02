require_relative 'pages/home'
require_relative 'pages/checkout'
require_relative 'pages/order'
require_relative 'pages/components'

Before do 
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end