class GraphqlsController < ApplicationController

  def create
    result = Schema.execute(query_params, variables: variables_params)
    render json: result
  end

  private

  def query_params
    params[:query] || {}
  end

  def variables_params
    params[:variables] || {}
  end

end
