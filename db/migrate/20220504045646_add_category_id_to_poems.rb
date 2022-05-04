class AddCategoryIdToPoems < ActiveRecord::Migration[6.1]
  def change
    add_column :poems, :category_id, :integer
  end
end
