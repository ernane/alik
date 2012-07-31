class BaseJob < Struct.new(:params)
  def perform
    send(params[:action])
  end
end