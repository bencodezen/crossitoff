class AddNullFalseToItems < ActiveRecord::Migration
  def change
    change_column :items, :title, :string, null: false
    change_column :items, :finished, :boolean, null: false
  end
end
