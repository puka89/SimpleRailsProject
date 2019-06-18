class CreateRecepies < ActiveRecord::Migration[5.2]
  def change
    create_table :recepies do |t|
      t.string :Title
      t.text :Description

      t.timestamps
    end
  end
end
