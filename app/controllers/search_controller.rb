class SearchController < ApplicationController
  before_action :authenticate_user!

  def main
    if params[:keyword].present?
      results = Tweet.search(params[:keyword],0,0)
      @stuff = results
    end
  end
end
