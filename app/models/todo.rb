class Todo < ApplicationRecord
  validates :task, presence: true
  
  belongs_to :list
end
