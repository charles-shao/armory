class FileUploadStatusChannel < ApplicationCable::Channel
  def subscribed
    stream_from "FileUploadStatusChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
