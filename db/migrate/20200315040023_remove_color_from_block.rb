class RemoveColorFromBlock < ActiveRecord::Migration[5.2]
  def change
    remove_column :blocks, :color, :string
  end
end
