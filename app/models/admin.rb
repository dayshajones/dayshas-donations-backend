class Admin < ApplicationRecord
    has_many :donations
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
end
