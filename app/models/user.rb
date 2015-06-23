class User < ActiveRecord::Base
<<<<<<< HEAD

	has_secure_password

	has_many :rooms	

	validates :email, presence: true, uniqueness: true
	validates_confirmation_of :email
	validates :password_digest, presence: true

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
