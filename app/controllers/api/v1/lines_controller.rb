module API
  module V1
    class LinesController < ApplicationController
      def index
        lines = Line.all

        render json: lines
      end
    end
  end
end