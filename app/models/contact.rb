class Contact < ApplicationRecord
  # validates :first_name, :last_name, presence: true
  # validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_many :contact_groups
  has_many :groups, through: :contact_groups


  def friendly_created_at
    created_at.strftime("%B %-d %Y at %-l:%M%p")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japanese_country_code
    "+81#{phone_number}"
  end
end
