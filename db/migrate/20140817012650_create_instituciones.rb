class CreateInstituciones < ActiveRecord::Migration
  def change
    create_table :instituciones do |t|
      t.string :nombre
      t.string :siglas

      t.timestamps
    end
  end
end
