class Customer

  @@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    save1 = Review.all.select {|r| r.customer == self}
    save1.select {|r| r.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select {|r| r.customer == self}.size
  end

  def self.find_by_name(name)
    # cust_match = 
    Customer.all.find {|c| c.full_name == name}
  end

  def self.find_by_given_name(name)
    Customer.all.find {|c| c.given_name == name}
  end


  def self.all
    @@all
  end

end
