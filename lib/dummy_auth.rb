module DummyAuth

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "cms" && password == "cms"
    end
  end

end