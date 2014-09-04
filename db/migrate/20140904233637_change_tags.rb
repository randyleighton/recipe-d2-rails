class ChangeTags < ActiveRecord::Migration
  def change
    rename_column :tags, :tag_id, :ingredient_id
  end
end
