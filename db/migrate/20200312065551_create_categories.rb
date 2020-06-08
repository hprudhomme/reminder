class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.belongs_to :user, index: true
      t.string :title

      t.timestamps
    end
  end
end
