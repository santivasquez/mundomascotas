class Mascotum < ActiveRecord::Base
    validates :id_Mas, presence: true, uniqueness: true
    validates :dueño, presence: true
end
