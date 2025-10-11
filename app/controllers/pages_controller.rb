class PagesController < ApplicationController
  def home
  end

  def dashboard
    @documents = Document.all
  end

  def my_logs
    @document = Document.new
  end

  def about
  end
end
