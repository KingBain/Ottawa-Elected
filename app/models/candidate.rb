class Candidate < ActiveRecord::Base
	def getward
		my_new_ward = Ward.find_by_number(read_attribute(:ward))
		my_new_ward.name
	end
end
