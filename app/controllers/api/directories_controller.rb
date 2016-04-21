class Api::DirectoriesController < ApplicationController
  def index
    render json: Directory.first.self_and_descendants, status: 200
  end
end
