class InfoController < ApplicationController
  def index
    render json: {
      version: ActiveRecord::Base.connection.execute("SELECT version()")
    }
  end
end
