class UserSession < ActiveRecord::Base
	#
  # Additional Attributes
  #

  attr_accessible :email, :password, :remember_me

  #
  # Associations
  #

  #
  # Validations
  #

  validates :email,															:presence => true

end
