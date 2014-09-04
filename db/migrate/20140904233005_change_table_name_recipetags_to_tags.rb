class ChangeTableNameRecipetagsToTags < ActiveRecord::Migration
  def change
    rename_table :recipetags, :tags
  end
end
