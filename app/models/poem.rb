class Poem < ActiveRecord::Base
  has_many :poem_lines
  has_many :lines, through: :poem_lines

  def generate_poem_body
    final_poem = ""
    self.lines.each do |line|
      final_poem << "#{line.content} \n"
    end
    final_poem_data = { title: self.title, body: final_poem }
  end
end