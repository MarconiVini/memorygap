require "rails_helper"

RSpec.describe OccultisLabel, :type => :model do
  let(:label) { "gmail" }
  let(:value) { "mv@gmail.com" }
  let(:secure_pass) { "randomPass" }
  let(:occultis) { OccultisLabel.new } 

  it "persists the occultis object on encrypt" do
    occultis.encrypt(label, value, secure_pass)
    expect(occultis.persisted?).to be_truthy  
  end

  it "persists the occultis object on encrypt" do
    occultis.encrypt(label, value, secure_pass)
    expect(occultis.secure_message_label.encoding.to_s).to eql "ASCII-8BIT"  
    expect(occultis.secure_iv_label.encoding.to_s).to eql "ASCII-8BIT"  
    expect(occultis.secure_message_value.encoding.to_s).to eql "ASCII-8BIT"  
    expect(occultis.secure_iv_value.encoding.to_s).to eql "ASCII-8BIT"  
  end
end