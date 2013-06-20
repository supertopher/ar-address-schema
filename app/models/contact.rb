require_relative '../../db/config'

# implement your Contact model here
require 'date'

class Contact < ActiveRecord::Base

  validates :email, :format => {  :with => /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/,
                                  :message => "Please enter a valid email address."}
  validates :email, :uniqueness => true
  validates :phone, :format => {  :with => /[2-9]{2}\d{8}/,
                                  :message => "Please enter a valid 10-digit phone number."}

  def name
    "#{first_name} #{last_name}"
  end

end