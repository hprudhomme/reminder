class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :categorie, index: true
      t.string :note

      t.timestamps
    end
  end
end
