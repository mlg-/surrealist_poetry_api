module API
  module V1
    class LinesController < ApplicationController

      def index
        lines = Line.all

        render json: lines
      end

      def show
        line = Line.find(params[:id])
        render json: line
        rescue ActiveRecord::RecordNotFound
          return render json: { error: 'Line not found' }, status: 404
        end

      def random
        line = Line.all.sample

        render json: line
      end
    end
  end
end