class Product < ActiveRecord::Base
  validates :name, presence: true, format: { with: /\A[a-zA-Z 0-9.,!@#$%^&*()]+\z/, message: "only allows letters" }
  validates :description, presence: true, format: { with: /\A[a-zA-Z 0-9.,!@#$%^&*()]+\z/, message: "only allows letters" }
  validates :status, :inclusion => { :in => 0..1 }
  validates_numericality_of :price

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
