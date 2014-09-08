class CreateUnidadesCurriculares < ActiveRecord::Migration
  def change
    create_table :unidades_curriculares do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
