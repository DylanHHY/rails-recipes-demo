class Employee < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  # validates :emp_no, presence: true

  has_many :clients

  def emp_number
  end
end
