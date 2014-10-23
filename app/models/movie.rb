class Movie < ActiveRecord::Base
  def self.released
    where("released_on <= ?", Time.now).order("released_on desc")
  end
  def flap?
    total_gross.blank? || total_gross < 50000000
  end
end
