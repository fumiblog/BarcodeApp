class Admins::CategoriesController < ApplicationController

  RakutenWebService.configure do |c|
    # (必須) アプリケーションID
    c.application_id = '1096194841415110851' #ENV['RAKUTEN_APPID']
  end

  # byebug

  def index
    @category_larges = RakutenWebService::Recipe.large_categories
    @recipes = @category_larges.first.ranking
    # @category_mediums = RakutenWebService::Recipe.medium_categories
  end

  # byebug

  def update
  end

  private
  def category_large_params
    params.require(:categories).permit(
      :name,
      :category_url,
    )
  end

  def category_medium_params
    params.require(:categories).permit(
      :name,
      :category_url,
      :parent_category_id
    )
  end
end
