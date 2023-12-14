module ApplicationHelper

  def rating_avg
    total = 0
    count = 0
    current_user.selections.each do |s|
      if s.rating?
        total = total + s.rating
        count = count + 1
      end
    end
    
    avg = total.to_f / count 
    return avg.round(2)
  end
        
end
