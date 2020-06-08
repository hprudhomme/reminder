class ChangeColorToBeTextInBlock < ActiveRecord::Migration[5.2]
  def change
    change_column :blocks, :color, :text
  end
end
