class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.string :id_Mas
      t.string :nombre
      t.integer :dueño
      t.string :entrada
      t.string :salida
      t.boolean :vacunas
      t.string :raza
      t.integer :edad
      t.string :estado
      t.string :tipo

      t.timestamps null: false
    end
  end
end
