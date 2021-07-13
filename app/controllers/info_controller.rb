class InfoController < ApplicationController
  def index
    render json: {
      db_adapter: ActiveRecord::Base::connection.class.to_s,
      version: ActiveRecord::Base.connection.execute("SELECT version()")
    }
  end
end
