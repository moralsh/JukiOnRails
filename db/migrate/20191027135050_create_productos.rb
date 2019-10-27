class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.primary_key :id
      t.string :nombre
      t.text :descripcion
      t.float :precio
      t.boolean :activo

      t.timestamps
    end
  end
end
