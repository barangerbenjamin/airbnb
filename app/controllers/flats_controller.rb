require "open-uri"
require 'json'

class FlatsController < ApplicationController
  url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  FLATS = JSON.parse(open(url).read).freeze

  def index
    @flats = FLATS
  end

  def show
    id = params[:id].to_i
    @flat = FLATS.find { |flat| flat["id"] == id }
  end
end
