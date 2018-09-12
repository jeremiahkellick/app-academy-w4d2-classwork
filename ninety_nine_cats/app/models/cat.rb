class Cat < ApplicationRecord
  COLORS = ["Black", "White", "Orange", "Brown"]
  validates :color, inclusion: { 
    in: COLORS, 
    message: "is invalid"
  }
  validates :sex, inclusion: {
    in: ["M", "F"],
    message: "must be M or F"
  }
  validates :birth_date, :color, :name, :sex, :description, presence: true

  has_many :rental_requests,
    class_name: :CatRentalRequest,
    dependent: :destroy
    
  def age
    ((Date.today - birth_date) / 365).to_i
  end
end
