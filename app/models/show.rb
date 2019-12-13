class Show < ActiveRecord::Base
  
  def highest_rating
    return self.where("rating").maximum
  end
  
end
