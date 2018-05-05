class CreateVacunas < ActiveRecord::Migration
  def change
    create_table :vacunas do |t|
      t.string :nombre
      t.integer :mascota_id

      t.timestamps null: false
    end
  end
end
