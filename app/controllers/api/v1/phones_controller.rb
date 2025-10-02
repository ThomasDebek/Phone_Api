class Api::V1::PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render json: JSON.pretty_generate(@phones.as_json)
  end
end
