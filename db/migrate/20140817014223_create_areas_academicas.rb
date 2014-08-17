class CreateAreasAcademicas < ActiveRecord::Migration
  def change
    create_table :areas_academicas do |t|
      t.integer :institucion_id
      t.string :nombre
      t.string :telefono

      t.timestamps
    end
  end
end
