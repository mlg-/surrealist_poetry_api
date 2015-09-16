module API
  module V1
    class LinesController < ApplicationController

      def index
        @lines = Line.all
        render json: @lines
      end

      def random 
        line = Line.all.sample
        render json: line
      end
    end
  end
end

