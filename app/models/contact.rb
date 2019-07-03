class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%B %-d %Y at %-l:%M%p")
  end

  def full_name
    first_name + " " + last_name
  end

  def japanese_country_code
    "+81" + phone_number
  end
end
