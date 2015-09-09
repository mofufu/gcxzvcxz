class CreateChilddssses < ActiveRecord::Migration
  def change
    create_table :childdssses do |t|
      t.references :childdf, index: true

      t.timestamps
    end
  end
end
