class JobsController < ApplicationController
  protect_from_forgery except: :perform

  def perform
    ExampleJob.perform_later
    render plain: 'ok'
  end
end
