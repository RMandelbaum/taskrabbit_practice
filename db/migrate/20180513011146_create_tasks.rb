class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :url
      t.integer :category_id 

      t.timestamps null: false
    end
  end
end
