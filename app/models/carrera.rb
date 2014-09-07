class Carrera < ActiveRecord::Base
  belongs_to :area_academica

  validates_presence_of :nombre, :telefono

  def area_academica_nombre
  	return area_academica.nombre if area_academica
  end

  def area_academica_nombre=(nombre)
  	self.area_academica = AreaAcademica.find_or_create_by_name(nombre) unless nombre.blank?
  end
end
