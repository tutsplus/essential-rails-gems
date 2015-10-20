class TestEmailWorker
  include Sidekiq::Worker

  def perform
    TestMailer.send_email.deliver_later
  end
end
