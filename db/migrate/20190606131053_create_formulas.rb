class CreateFormulas < ActiveRecord::Migration[5.2]
  def change
    create_table :formulas do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
