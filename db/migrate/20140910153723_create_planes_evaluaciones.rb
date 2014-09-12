class CreatePlanesEvaluaciones < ActiveRecord::Migration
  def up
    create_table :planes_evaluaciones do |t|
      t.integer :planificacion_id, null: false
      t.integer :evaluacion_id, nul: false
      t.date :fecha
      t.integer :puntuacion

      t.timestamps
    end
  end
end
