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

  validates :email,                           :presence => true

  validates :password,                        :presence => true

  #
  # Callbacks
  #

  validate                                    :check_user_in_database

  def check_user_in_database
    record = User.where( :email => self.email )
    unless record.empty?
      if record.first.password != self.password
        errors.add( :base, "Username or Password is invalid" )
      end
    else
      errors.add( :email, "address is not valid" )
    end
  end
end
