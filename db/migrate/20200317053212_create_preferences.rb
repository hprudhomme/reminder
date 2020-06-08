class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, index: true

      t.string :background
      t.string :color

      t.timestamps
    end
  end
end
