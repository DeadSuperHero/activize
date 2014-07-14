class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.string :cover
      t.string :title
      t.text :description
      t.integer :signum
      t.string :target

      t.timestamps
    end
  end
end
