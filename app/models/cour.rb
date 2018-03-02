class Cour < ActiveRecord::Base

	geocoded_by :lieu
	after_validation :geocode, :params => {:countrycodes => "fr"}

	has_many :users

end
