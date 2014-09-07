class CreateSemestres < ActiveRecord::Migration
  def change
    create_table :semestres do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
