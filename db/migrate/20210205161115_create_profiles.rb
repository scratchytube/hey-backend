class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :bio_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
