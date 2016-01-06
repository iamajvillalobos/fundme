class Project < ActiveRecord::Base
  def expired?
    if pledging_ends_on < Time.now
      true
    else
      false
    end
  end
end
