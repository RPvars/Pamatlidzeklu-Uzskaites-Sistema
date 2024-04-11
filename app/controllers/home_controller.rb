class HomeController < ApplicationController
  skip_before_action :authenticate_user!, exept: %i[index show]
  def index
  end
end
