require "rails_helper"

RSpec.describe Vendor do
  it 'exists and has attributes' do
    data = {
      attributes: {
        id: 1,
        name: 'Sample Vendor',
        contact_phone: '555-555-5555',
        contact_name: 'John Doe',
        credit_accepted: true,
        description: 'This is a sample vendor description'
      }
    }

    vendor = Vendor.new(data)

    expect(vendor.id).to eq(1)
    expect(vendor.name).to eq('Sample Vendor')
    expect(vendor.contact_phone).to eq('555-555-5555')
    expect(vendor.contact_name).to eq('John Doe')
    expect(vendor.credit_accepted).to be(true)
    expect(vendor.description).to eq('This is a sample vendor description')
  end
end