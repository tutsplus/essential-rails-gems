class TestEmailController < ApplicationController
  def send_email
    TestEmailWorker.perform_async
  end
end
