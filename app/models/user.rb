class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, :format=> { :with=> VALID_EMAIL_REGEX , :message=> 'Enter your Email Address' }
	validates :email, uniqueness: {:case_sensitive => false, :message => 'Please provide a valid Email' }
end
