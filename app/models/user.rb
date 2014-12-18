class User < ActiveRecord::Base

  has_secure_password

  validates_presence_of :avatar
  validates_presence_of :artist_name
  validates_presence_of :genre
  validates_presence_of :bio
  validates_presence_of :contact_name
  validates_presence_of :address_1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip_code
  validates_presence_of :email
  validates_presence_of :bank_name
  validates_presence_of :account_holder_name
  validates_presence_of :account_type
  validates_presence_of :account_number
  validates_presence_of :routing_number

  has_many :experiences

  has_attached_file :avatar, :styles => { :large => "400x300>", :small => "200x150>", :thumb => "140x105>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
