class PagesController < ApplicationController
  skip_before_action :require_login, only: [:home, :home_two, :treatments]

  def ending
  end

  def home
  end

  def more_info
  end

  def treatments
  end

  def quality
  end

end