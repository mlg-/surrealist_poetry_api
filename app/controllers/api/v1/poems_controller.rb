module API  
  module V1
    class PoemsController < ApplicationController

      def random
        poem = Poem.all.sample
        poem_data = poem.generate_poem_body
        render json: poem_data
      end
    end
  end
end  