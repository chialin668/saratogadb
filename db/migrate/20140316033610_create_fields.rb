class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :obj_id

      t.timestamps
    end
  end
end
