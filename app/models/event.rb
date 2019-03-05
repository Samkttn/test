class Event < ApplicationRecord
  belongs_to :admin, class_name: "User"
  has_many :attendances
  has_many :users, through: :attendances

  #validates :start_date,
  #presence: false, if: :start_date_past
  #validates :duration,
#  presence: true,
  #numericality: { greater_than_or_equal_to: 1 }
  validates :title,
  presence: true,
  length: {minimum: 1, maximum: 140}
  validates :description,
  presence: true,
  length: {minimum: 1, maximum: 1000}
  #validates :price,
  #numericality: { greater_than_or_equal_to: 1}
  validates :location, presence: true

  def start_date_past
    if start_date < Time.now
            errors.add(:start_date, "Tu as à choisi une date dans le passé, ahah !")
    end
end

end
