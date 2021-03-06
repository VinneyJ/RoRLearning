class User < ApplicationRecord
    #validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true, length: { maximum: 50, minimum: 6 }
    validates :password_confirmation, presence: true, length: { minimum: 6 }
    #validates :password, confirmation: true, length { maximum: 50 ,minimum: 6}
    validates_presence_of :name, :password, :password_confirmation
    has_secure_password
end
