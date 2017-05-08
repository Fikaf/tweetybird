class SearchController < ApplicationController
  before_action :authenticate_user!

  def main
    @search_active = true
    if params[:keyword].present?
      results = Tweet.search(params[:keyword],0,0)
      History.create(user: current_user, search_term: params[:keyword])
      @stuff = results
    end
  end

  def history
    @history_active = true
    @history = current_user.history
  end
end
