Spree::ProductsController.class_eval do
  include Spree::FrontendHelper

  respond_to :html, :json

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
    @taxonomies = Spree::Taxonomy.includes(root: :children)
    respond_to do |format|
      format.html { render layout: 'application' }
      format.json do
        render json: @products,
               adapter: :json,
               root: 'products',
               meta: json_pagination(@products)
      end
    end
  end
end
