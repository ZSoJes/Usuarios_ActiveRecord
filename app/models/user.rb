require 'date'
class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 

  validates :email, format: { with: /\w+[.]?\w{1}[@]\w+[.]\w{2,}/}, uniqueness: true

  validates :age, :numericality => { :greater_than => 15 }

  validates :phone, :length => { :minimum => 10 }

  def name
  	p "#{first_name} #{last_name}"
  end


  def age
  	personBirthday = birthday.year
  	age = Time.now.year - personBirthday
  	age
  end

end