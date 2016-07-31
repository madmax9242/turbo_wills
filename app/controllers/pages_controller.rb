class PagesController < ApplicationController
  skip_before_action :require_login, only: :home

  def ending
  end

  def home
  end

  def quality
  end

end