class ChangeCompleteToFinished < ActiveRecord::Migration
  def change
    rename_column :items, :complete, :finished
  end
end
