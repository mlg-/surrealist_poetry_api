module API  
  module V1
    class PoemsController < ApplicationController

      def index
        poems = Poem.all
        render json: poems
      end

      def random
        poem = Poem.all.sample
        poem_data = poem.generate_poem_body
        render json: poem_data
      end
    end
  end
end  