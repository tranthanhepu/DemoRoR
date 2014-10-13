class Home < ActiveRecord::Base

	validates :first_name, presence: true, length:{ maximum: 16 }

	validates :last_name, presence: true, length:{ maximum: 16 }
	

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

	validates :password, presence: true, length: { minimum: 5 }, confirmation: true	
end
