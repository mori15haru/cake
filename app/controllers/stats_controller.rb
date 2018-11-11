class StatsController < ApplicationController
  def index
  end

  def show
    @stats = calculate_stats
    @selected = selected_id

    render 'index'
  end

  private
   
  def calculate_stats 
    if sub_stats == 'average_comments'
      Article.count.zero? ? 0 : Comment.count.to_f / Article.count
    else
      table.calculate(
        operator,
        column
      )
    end
  end
   
  def stats_params
    @stats_params ||= JSON.parse(params['stats'])
  end

  def sub_stats
    stats_params['sub_stats']
  end

  def table
    table_params = (stats_params['table'] || 'article').camelize.constantize
  end

  def operator
    stats_params['operator']
  end

  def column
    stats_params['column']
  end

  def selected_id
    (stats_params['id'] || "1").to_i
  end
end
