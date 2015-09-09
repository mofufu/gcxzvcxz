class CreateChilddfs < ActiveRecord::Migration
  def change
    create_table :childdfs do |t|
      t.text :name
      t.references :parent, index: true

      t.timestamps
    end
  end
end
