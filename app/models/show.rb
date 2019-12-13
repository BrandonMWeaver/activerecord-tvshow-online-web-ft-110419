class Show < ActiveRecord::Base
  
  def self.highest_rating
    return self.where("rating").maximum
  end
  
end
