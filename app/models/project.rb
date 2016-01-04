class Project < ActiveRecord::Base
  def expired?
    if pledging_ends_on < Time.current
      true
    else
      false
    end
  end
end
