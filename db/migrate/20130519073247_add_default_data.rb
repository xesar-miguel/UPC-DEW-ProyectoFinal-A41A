# encoding: utf-8
class AddDefaultData < ActiveRecord::Migration
  def up
    Concertstatus.create :name => "status_open"
    Concertstatus.create :name => "status_closed"

    Usertype.create :name => "role_student", :administrator => false
    Usertype.create :name => "role_admin", :administrator => true
    Usertype.create :name => "role_user", :administrator => false

    Distrito.create :name => "Cercado de Lima"
    Distrito.create :name => "Ate"
    Distrito.create :name => "Barranco"
    Distrito.create :name => "Breña"
    Distrito.create :name => "Comas"
    Distrito.create :name => "Chorrillos"
    Distrito.create :name => "El Agustino"
    Distrito.create :name => "Jesus María"
    Distrito.create :name => "La Molina"
    Distrito.create :name => "La Victoria"
    Distrito.create :name => "Lince"
    Distrito.create :name => "Magdalena del Mar"
    Distrito.create :name => "Miraflores"
    Distrito.create :name => "Pueblo Libre"
    Distrito.create :name => "Puente Piedra"
    Distrito.create :name => "Rimac"
    Distrito.create :name => "San Isidro"
    Distrito.create :name => "Independencia"
    Distrito.create :name => "San Juan de Miraflores"
    Distrito.create :name => "San Luis"
    Distrito.create :name => "San Martin de Porres"
    Distrito.create :name => "San Miguel"
    Distrito.create :name => "Santiago de Surco"
    Distrito.create :name => "Surquillo"
    Distrito.create :name => "Villa María del Triunfo"
    Distrito.create :name => "San Juan de Lurigancho"
    Distrito.create :name => "Santa Rosa"
    Distrito.create :name => "Los Olivos"
    Distrito.create :name => "San Borja"
    Distrito.create :name => "Villa El Savador"
    Distrito.create :name => "Santa Anita"
  end

  def down
    delete_all:Usertype
  end
end
