class Api::V1::PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render json: @phones
  end
end
