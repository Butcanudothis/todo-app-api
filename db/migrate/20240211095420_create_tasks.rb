class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :reference
      t.boolean :is_complete
      t.string :type
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end

