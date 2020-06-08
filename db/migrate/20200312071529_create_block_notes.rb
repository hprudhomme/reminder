class CreateBlockNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :block_notes do |t|
      t.belongs_to :user, index: true

      t.string :title

      t.timestamps
    end
  end
end
