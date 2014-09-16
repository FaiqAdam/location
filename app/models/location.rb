class Location < ActiveRecord::Base
	include Tree
	has_ancestry :cache_depth => true

	has_many :users
end
