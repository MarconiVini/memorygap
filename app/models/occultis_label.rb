class OccultisLabel < ActiveRecord::Base
  attr_accessor :secure_message_label, :secure_iv_label, :secure_message_value, 
    :secure_iv_value

  belongs_to :user

  after_initialize do
    @encryptzator = Encryptzator.new  
  end

  def encrypt(label, value, pass)
    message_hash = perform(label, pass)
    self.secure_message_label = message_hash[:encrypted_message]
    self.secure_iv_label = message_hash[:iv]

    message_hash = perform(value, pass)
    self.secure_message_value = message_hash[:encrypted_message]
    self.secure_iv_value = message_hash[:iv]
    self.save
  end

  private

  def perform(abra, cadabra)
    @encryptzator.encrypt_message(abra, cadabra)
  end
end
