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

  validate                                    :check_user_in_database

  validates :password,                        :presence => { :message => "can't be blank" }

  def check_user_in_database
    if User.where( :email => self.email ).empty?
      errors.add( :email, "address is not valid" )
    end
  end
end
