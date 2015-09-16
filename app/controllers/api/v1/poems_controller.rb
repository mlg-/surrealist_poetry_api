module API
  module V1
    class PoemsController < ApplicationController

      def index
        @poems = Poem.all
        render json: @poems
      end

      def show
        @poem = Poem.find(params[:id])
        poem_data = @poem.generate_poem_body
        render json: poem_data
      end

      def random
        @poem = Poem.all.sample
        poem_data = { id: @poem.id, title: @poem.title, body: @poem.generate_poem_body }
        render json: poem_data
      end
    end
  end
end