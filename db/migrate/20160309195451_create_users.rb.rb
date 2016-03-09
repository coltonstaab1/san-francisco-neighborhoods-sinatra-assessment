class CreateUsers < ActiveRecord::Migration
  def change
	create_table :users do |t|
		t.string :name
		t.string :password
		t.string :email
		t.integer :neighborhood_id
	end
  end
end
