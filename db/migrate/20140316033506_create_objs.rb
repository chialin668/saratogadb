class CreateObjs < ActiveRecord::Migration
  def change
    create_table :objs do |t|
      t.string :name
      t.integer :app_id

      t.timestamps
    end
  end
end
