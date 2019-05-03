class User < ApplicationRecord
	has_secure_password
	enum role: {basic: 0, mod: 1, admin: 2}
	after_initialize :init
	validates :name, presence: true, uniqueness: true

	private
	def init
		if self.new_record? && self.role.nil?
			self.role = 0
		end
	end
validates :name, :email,:password, presence: true

end
