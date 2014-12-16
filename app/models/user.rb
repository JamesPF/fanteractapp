class User < ActiveRecord::Base

  # has_secure_password

  has_many :experiences

  has_attached_file :avatar, :styles => { :large => "400x300>", :small => "200x150>", :thumb => "140x105>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
