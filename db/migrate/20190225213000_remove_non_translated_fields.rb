class RemoveNonTranslatedFields < ActiveRecord::Migration[4.2]

  def change
    remove_column Refinery::News::Item.table_name, :source, :string
    remove_column Refinery::News::Item.table_name, :slug, :string
    remove_column Refinery::News::Item.table_name, :title, :string
    remove_column Refinery::News::Item.table_name, :body, :text
  end

end