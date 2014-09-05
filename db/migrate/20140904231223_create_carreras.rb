class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.integer :area_academica
      t.string :nombre
      t.string :telefono

      t.timestamps
    end
  end
end
