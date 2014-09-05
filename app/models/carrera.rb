class Carrera < ActiveRecord::Base
  belongs_to :area_academica

  validates_presence_of :nombre, :telefono

end
