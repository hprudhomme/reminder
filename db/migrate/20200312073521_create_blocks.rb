class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.belongs_to :user, index: true
      t.string :title

      t.timestamps
    end
  end
end
