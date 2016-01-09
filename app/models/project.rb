class Project < ActiveRecord::Base
  def expired?
    if pledging_ends_on < Time.now
      true
    else
      false
    end
  end

  def self.ongoing
    where('pledging_ends_on >= ?', Time.now)
  end
end
