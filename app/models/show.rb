class Show < ActiveRecord::Base
  
  def self.highest_rating
    return self.maximum("rating")
  end
  
  def self.most_popular_show
    return self.select.where("rating = #{self.highest_rating}")
  end
  
end
