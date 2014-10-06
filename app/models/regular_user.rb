class RegularUser < User
  has_many :items
  has_many :outfits
  validates :name, :email, :city, :state, :password_digest, presence: true
  validates :email, uniqueness: true
  has_secure_password

end
