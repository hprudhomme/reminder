class RemoveColoorFromBlock < ActiveRecord::Migration[5.2]
  def change
    remove_column :blocks, :color, :integer
  end
end
