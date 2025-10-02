class CreatePhones < ActiveRecord::Migration[8.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
