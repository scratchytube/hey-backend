class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :templates
      t.string :completed_pictures

      t.timestamps
    end
  end
end
