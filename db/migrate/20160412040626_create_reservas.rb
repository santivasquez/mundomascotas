class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :descripcion
      t.string :estado
      t.integer :mascota_id
      t.integer :usuario_id
      t.date :fecha
      t.integer :celular
      t.date :fecha_entrada
      t.date :fecha_salida
      t.string :nombre

      t.timestamps null: false
    end
  end
end
