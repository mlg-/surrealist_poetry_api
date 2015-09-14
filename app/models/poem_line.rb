class PoemLine < ActiveRecord::Base
  belongs_to :poem
  belongs_to :line
  
  validates :poem, presence: true
  validates :line, presence: true
end