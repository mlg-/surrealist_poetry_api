class Line < ActiveRecord::Base
  has_many :poem_lines
  has_many :poems, through: :poem_lines

  validates :content, presence: true

  def self.random
    last = Line.all.sample
  end
end