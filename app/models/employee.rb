class Employee < ActiveRecord::Base
  has_many :leaves, inverse_of: :employee, dependent: :destroy
  validates :name, presence: true
  def new
  end
end
