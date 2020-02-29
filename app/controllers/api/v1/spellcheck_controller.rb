# frozen_string_literal: true

class Api::V1::SpellcheckController < ApplicationController
  def index
    @spellCheck = SpellCheck.new(params[:word])
    render json: {status:@spellCheck.check}
  end
end
