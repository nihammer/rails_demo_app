class NameController < ApplicationController
  def index
  end

  def search
    redirect_to "https://google.com", status: 301
  end
end
