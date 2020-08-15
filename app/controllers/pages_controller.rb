class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:home, :raps, :beats, :compositions]

  def home
  end
end

