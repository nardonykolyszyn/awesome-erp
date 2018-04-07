class CategoriesController < ApplicationController
  def index
    respond_to do |format|
      if params[:term]
        @categories = Category.search_by_full_name(params[:term]).with_pg_search_highlight
      else
        @categories = Category.all
      end
      format.json
    end
  end
end
