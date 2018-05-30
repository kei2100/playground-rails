module Api
  class SessionsController < Api::ApplicationController
    # TODO refactor
    # とりあえず
    protect_from_forgery except: [:create, :destroy]

    def new
      render status: :ok, json: {
        message: 'Please POST user_id, password'
      }
    end

    def create
      user = User.find_by(user_id: params[:user_id])&.authenticate(params[:password])
      unless user
        return render status: :unauthorized, json: {}
      end

      reset_session if session[:user_id]
      session[:user_id] = user.user_id

      render status: :ok, json: {
        id: user.id,
        user_id: user.user_id,
        name: user.name
      }
    end

    def destroy
      unless session[:user_id] && User.find_by(user_id: session[:user_id])
        return render status: :unauthorized, json: {}
      end

      session.delete(:user_id)
      reset_session
      render json: {}
    end
  end
end