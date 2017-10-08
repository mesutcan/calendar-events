class Calendar < ApplicationRecord
	validates_presence_of :title, :movie_id, :launch_date
end
