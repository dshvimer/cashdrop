class RootController < ApplicationController
  def index
    render json: {app: 'Up'}
  end
end
