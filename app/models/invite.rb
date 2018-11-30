class Invite < ApplicationRecord
	validates_presence_of :name

	def self.search(search)
		if search
			self.where(name: search)
		else
			Invite.all
		end
	end
end
