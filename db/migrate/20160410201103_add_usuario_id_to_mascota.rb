class AddUsuarioIdToMascota < ActiveRecord::Migration
  def change
    add_column :mascota, :usuario_id, :int
  end
end
