class CreateNottes < ActiveRecord::Migration[5.2]
  def change
    create_table :nottes do |t|
      t.belongs_to :block, index: true
      t.string :content

      t.timestamps
    end
  end
end
