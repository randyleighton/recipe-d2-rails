class ChangeRecipesTagsToRecipetags < ActiveRecord::Migration
  def change
    rename_table :recipes_tags, :recipetags
  end
end
