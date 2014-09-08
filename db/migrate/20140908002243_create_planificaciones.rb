class CreatePlanificaciones < ActiveRecord::Migration
  def change
    create_table :planificaciones do |t|
      t.integer :periodo_lectivo_id
      t.integer :carrera_id
      t.integer :unidad_curricular_id
      t.integer :seccion_id
      t.integer :lapsos

      t.timestamps
    end
  end
end
