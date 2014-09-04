class ChangeTagsTableNameToIngredients < ActiveRecord::Migration
  def change
    rename_table :tags, :ingredients
  end
end
