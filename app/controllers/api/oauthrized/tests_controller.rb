module Api::Oauthrized
  class TestsController < ActionController::Base
    before_action :doorkeeper_authorize!

    def show
      render status: :ok , json: {}
    end
  end
end