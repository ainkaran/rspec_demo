class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  # validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name.strip} #{last_name.strip}"
  end
end
