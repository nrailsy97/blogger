class RemoveDescFromCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :desc
  end
end
