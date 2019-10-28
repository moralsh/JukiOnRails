class AddNombreBonitoProductos < ActiveRecord::Migration[5.2]
  def change
    add_column :productos, :nombre_bonito, :string
    change_column :productos, :precio, :decimal
  end
end
