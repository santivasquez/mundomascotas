class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :tipo
      t.string :texto

      t.timestamps null: false
    end
  end
end
