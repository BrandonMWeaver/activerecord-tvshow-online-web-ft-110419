class Show < ActiveRecord::Base
  
  def self.highest_rating
    return self.maximum("rating")
  end
  
  def self.most_popular_show
    return self.where("rating = #{self.highest_rating}").first
  end
  
  def self.lowest_rating
    return self.minimum("rating")
  end
  
  def self.least_popular_show
    return self.where("rating = #{self.lowest_rating}").first
  end
  
  def self.ratings_sum
    return self.sum("rating")
  end
  
  def self.popular_shows
    return self.where("rating > 5")
  end
  
end
