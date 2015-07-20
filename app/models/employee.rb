class Employee < ActiveRecord::Base
  validates :name, presence: true
  has_many :leaves, inverse_of: :employee, dependent: :destroy
  def new
  end
end
