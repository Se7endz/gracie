class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|

    	t.belongs_to :user, index: true
    	t.belongs_to :formula, index: true
    	
      t.timestamps
    end
  end
end
