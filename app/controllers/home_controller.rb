class HomeController < ApplicationController

  rescue_from ActionDispatch::Http::Parameters::ParseError do |exception|
    render json: { error: e.message }, status: :bad_request
  end

  def test
    render plain: 'test'
  end
end
