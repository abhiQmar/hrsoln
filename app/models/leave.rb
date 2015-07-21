class Leave < ActiveRecord::Base
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :employee, inverse_of: :leaves
end
