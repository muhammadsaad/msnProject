class CreateUserSessions < ActiveRecord::Migration
  def change
    create_table :user_sessions do |t|
    	t.string	:email,					:null => false
    	t.string	:password,			:null => false
    	t.boolean	:remember_me

      t.timestamps
    end
  end
end
