class Biblioteka < ApplicationRecord
  has_many :books
  has_many :reader_cards

  def self.ransackable_attributes(auth_object = nil)
    %w[address created_at id name phone updated_at]
  end


  def update_name(new_name)
    self.class.connection.execute("UPDATE bibliotekas SET name='#{new_name}' WHERE id=#{id}")
    reload
  end

  def add_50_records
    50.times do |i|
      Biblioteka.create(
        name: "Library #{i}",
        address: "Address #{i}",
        phone: "#{Faker::PhoneNumber.phone_number}"
      )
    end
  end
end
