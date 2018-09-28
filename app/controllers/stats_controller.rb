class StatsController < ApplicationController
  def index
  end

  def show
    stats = JSON.parse(params['stats'])
    operator = stats['operator']
    column = stats['column']

    @stats = Article.calculate(
      operator,
      column
    )

    render 'index'
  end
end
