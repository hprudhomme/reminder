class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :todolist, index: true

      t.text :content
      t.boolean :done

      t.timestamps
    end
  end
end
