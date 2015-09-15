class PoemsController < ApplicationController
  def show
    poem = Poem.all.sample
    @poem_data = poem.generate_poem_body
  end
end