class Sale < ApplicationRecord
  ## Callbacks
  after_validation :calculate_amount, if: :new_record?
  ## Enum method
  enum payment_type: [:cash, :credit_card, :debit_card]
  ## Relationships
  has_many :sale_article, dependent: :destroy
  has_many :articles, through: :sale_article, dependent: :destroy
  ## Nested Attributes
  accepts_nested_attributes_for :articles, reject_if: :all_blank, allow_destroy: true
  
  private
  def calculate_amount
    self.amount = self.articles.pluck(:price).map(&:to_i).inject{|x,y|x+y}
  end
end
