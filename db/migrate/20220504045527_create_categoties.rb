class CreateCategoties < ActiveRecord::Migration[6.1]
  def change
    create_table :categoties do |t|
      t.string :category

      t.timestamps
    end
  end
end
