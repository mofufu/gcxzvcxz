class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :fdasa

      t.timestamps
    end
  end
end
