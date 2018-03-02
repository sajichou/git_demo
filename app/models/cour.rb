class Cour < ActiveRecord::Base

	geocoded_by :lieu, :params => {:countrycodes => "fr"}
	after_validation :geocode
	has_many :users

end
