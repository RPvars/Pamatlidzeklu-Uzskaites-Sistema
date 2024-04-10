class SearchController < ApplicationController
  def index
    search_field = params[:search].present? ? params[:search] : '*'
    category_id = params[:category].present? ? params[:category].to_i : nil

    @pamatlidzeklis = if category_id
      Pamatlidzekli.search(search_field, fields: %i[nosaukums razotajs modelis serijas_nummurs], where: { kategorija_id: category_id })
    else
      Pamatlidzekli.search(search_field, fields: %i[nosaukums razotajs modelis serijas_nummurs])
    end
    respond_to do |format|
      format.html {render :index}
      format.turbo_stream do
        render turbo_stream:
        turbo_stream.update('pamatlidzeklis',
        partial: 'pamatlidzeklis/tabulas',
        locals: {pamatlidzeklis: @pamatlidzeklis}
        )

      end
    end
  end
end
