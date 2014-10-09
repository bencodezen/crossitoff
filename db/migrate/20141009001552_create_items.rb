class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :complete

      t.timestamps
    end
  end
end
