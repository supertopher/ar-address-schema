require_relative '../config'

# this is where you should use an ActiveRecord migration to Create Contacts.

class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |mario|
      # mario likes pipes
      mario.string :first_name
      mario.string :last_name
      mario.string :company
      mario.string :phone
      mario.string :email
    end
  end
end
