class CreateSecciones < ActiveRecord::Migration
  def change
    create_table :secciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
