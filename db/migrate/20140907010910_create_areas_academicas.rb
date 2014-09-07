class CreateAreasAcademicas < ActiveRecord::Migration
  def change
    create_table :areas_academicas do |t|
      t.integer :institucion_id, :null => false
      t.string :nombre
      t.string :telefono

      t.timestamps
    end
  end
end
