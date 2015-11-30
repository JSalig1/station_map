class Station < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
