class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name,		:null => false, :limit => 255
    	t.string :last_name,		:null => false, :limit => 255
    	t.string :email,			:null => false, :limit => 255
    	t.string :country,			:null => true,	 :limit => 255

      	t.timestamps
    end
  end
end
