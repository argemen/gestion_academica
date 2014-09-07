class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
