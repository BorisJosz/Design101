class AddCategoryToTutorials < ActiveRecord::Migration[5.1]
  def change
    add_column :tutorials, :category, :string
  end
end
