class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.belongs_to :block_notes, index: true
      t.string :note

      t.timestamps
    end
  end
end
