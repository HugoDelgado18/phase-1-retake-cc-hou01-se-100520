require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Hugo", "Delgado")
c2 = Customer.new("Sanny", "Do")
c3 = Customer.new("Ariel", "Grubbs")
c4 = Customer.new("Alex", "rios")

rest1 = Restaurant.new("Chino's")
rest2 = Restaurant.new("Mack's")
rest3 = Restaurant.new("Zack's")

rev1 = Review.new(c1, rest1, 8)
rev2 = Review.new(c2, rest2, 6)
rev3 = Review.new(c3, rest1, 10)
rev4 = Review.new(c4, rest3, 5)
rev5 = Review.new(c4, rest2, 7)









binding.pry
0 #leave this here to ensure binding.pry isn't the last line