class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validate :apparel

  def apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:apparel, "*********Stores must carry at least one of the men's or women's apparel***********")
    end
  end

end

# Exercise 7: Validations for both models
# 1. Add validations to two models to enforce the following business rules:
#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more
# * BONUS: Stores must carry at least one of the men's or women's apparel 
#   (hint: use a [custom validation method]
#   (http://guides.rubyonrails.org/active_record_validations.html#custom-methods) 
#   - **don't** use a `Validator` class)