class CreateLandmarks < ActiveRecord::Migration
  def change
	create_table :landmarks do |t|
		t.string :name
		t.string :address
		t.string :type
		t.string :neighborhood_id
	end
  end
end
