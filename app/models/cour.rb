class Cour < ActiveRecord::Base

	geocoded_by :lieu, :params => {:countrycodes => "fr"}
	after_validation :geocode, if: ->(obj){ obj.lieu.present? and obj.lieu_changed? }
	has_many :users

end
