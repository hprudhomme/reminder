class AddColorToBlock < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :color, :string
  end
end
