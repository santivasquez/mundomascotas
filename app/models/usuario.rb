class Usuario < ActiveRecord::Base
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    before_save { self.correo = correo.downcase }
    validates :nombre, presence: true
    validates :apellido, presence: true
    validates :tipo, presence: true
    validates :telefono, presence: true
    validates :cedula, presence: true, uniqueness: true
    validates :estado, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :correo, presence: true, uniqueness: true, length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX }
 
end
