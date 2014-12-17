class Experience < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :amount_available
  validates_presence_of :availability
  validates_presence_of :description

  belongs_to :user
  has_many :orders

end
