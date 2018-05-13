class CreateSubIndustries < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_industries do |t|
      t.string :keyword
      t.string :title
      t.references :industy, polymorphic:true, index:true

      t.timestamps null:false 
    end
  end
end
