class Show < ActiveRecord::Base
  
  def self.highest_rating
    return self.maximum("rating")
  end
  
  def self.most_popular_show
    return self.highest_rating.select("name")
  end
  
end
