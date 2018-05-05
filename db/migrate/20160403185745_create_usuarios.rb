class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :tipo
      t.integer :telefono
      t.string :correo
      t.string :mascota
      t.integer :cedula
      t.string :estado

      t.timestamps null: false
    end
  end
end
