class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :only_integer => true }
  # validates_numericality_of :hourly_rate, presence: true, greater_than: 40, less_than: 200
  # validates_numericality_of :hourly_rate, :only_integer => true 
  validates :store_id, presence: true
  # validates_presence_of :store_id
end

# 1. Add validations to two models to enforce the following business rules:
#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)