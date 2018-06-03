module Api
  class SignupController < Api::ApplicationController
    def create
      render status: :ok, json: {message: 'ok'}
    end
  end
end