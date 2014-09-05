class Institucion < ActiveRecord::Base
  has_many :area_academica

  validates_uniqueness_of :nombre, :siglas
  validates_presence_of :nombre

end
