class Vendor
  attr_reader :id,
              :name,
              :contact_phone,
              :contact_name,
              :credit_accepted,
              :description

  def initialize(data)
    @id = data[:attributes][:id]
    @name = data[:attributes][:name]
    @contact_phone = data[:attributes][:contact_phone]
    @contact_name = data[:attributes][:contact_name]
    @credit_accepted = data[:attributes][:credit_accepted]
    @description = data[:attributes][:description]
  end
end