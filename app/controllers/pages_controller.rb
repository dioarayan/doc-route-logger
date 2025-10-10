class PagesController < ApplicationController
  def home
  end

  def dashboard
    @documents = Document.all
  end

  def my_logs
  end

  def about
  end
end
