# frozen_string_literal: true

class Api::V1::BoggleController < ApplicationController
  def index
    @board = BoardFactory.new
    render json: {board:@board.generate(cols:4,rows:4)}
  end
end
