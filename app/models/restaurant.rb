class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    reviews.map {|r| r.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.map {|r| r.rating}
    ratings.sum / ratings.size
  end





  def self.all
    @@all
  end




end
