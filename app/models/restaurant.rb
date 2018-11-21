class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5], allow_nil: false }
  validates :address, uniqueness: true, presence: true
  validates :category, inclusion: { in: %w[chinese japanese italian french belgian]}

  # validates :name, inclusion: { allow_nil: false }

  # has_many :reviews, :dependent => :delete_all



end
