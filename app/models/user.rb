class User < ActiveRecord::Base
  #
  # Additional Attributes
  #

  attr_accessible :first_name, :last_name, :country, :email, :password, :confirm_password

  #
  # Associations
  #

  #
  # Validations
  #

  validates :first_name,																			:presence => true
  validates :last_name,																				:presence => true
  validates :email, 																					:presence => { :message => "can't be blank" }
  validates :password,																				:presence => true

  validate 																										:password_match

  #
  # Methods
  #

	def password_match
		if self.password != self.confirm_password
			errors.add( :base, "Confirmation password did not match" )
		end
	end
end
