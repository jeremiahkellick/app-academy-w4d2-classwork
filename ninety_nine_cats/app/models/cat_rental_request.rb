class CatRentalRequest < ApplicationRecord
  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: {
    in: ["APPROVED", "DENIED", "PENDING"],
    message: "invalid"
  }
  belongs_to :cat
  
  def overlapping_requests
    cat.rental_requests.where.not(id: id).where.not(<<-SQL, id: id, start_date: start_date, end_date: end_date)
      :end_date < start_date OR :start_date > end_date
    SQL
  end
end
