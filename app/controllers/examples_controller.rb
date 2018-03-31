class ExamplesController < ApplicationController
  def job
    ExampleJob.perform_later
    render plain: 'ok'
  end
end
