class Book < ActiveRecord::Base
  belongs_to :author
  has_many :borrowers, through: :loans
  has_many :loans, dependent: :destroy
end
