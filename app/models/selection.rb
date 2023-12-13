class Selection < ApplicationRecord
  belongs_to :book
  belongs_to :user


  def rating_view 
    if rating == 5
     "5 stars"
    elsif rating == 4
      "4 stars"
    elsif rating == 3
      "3 stars"
    elsif rating == 2
      "2 stars"
    elsif rating == 1
      "1 star"
    else
      "Not rated yet!"
    end
  end 
end
