class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :restaurants, through: :reviews
    belongs_to :area
    
    validates :email, {presence: true, uniqueness: true}
    # validates :password, {presence: true, confirmation: true}
    # validates :password_confirmation, presence: true

end
