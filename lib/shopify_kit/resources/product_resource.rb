module ShopifyKit
  class ProductResource < ResourceKit::Resource
    resources do
      action :all, 'GET /products.json' do
        handler(200) { |response| ProductMapping.extract_collection(response.body, :read) }
      end

      action :create, 'POST /products.json' do
        body { |object| ProductMapping.representation_for(:create, object) }
        handler(201) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :find, 'GET /products/:id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :delete, 'DELETE /products/:id.json' do
        handler(204) { |response| true }
      end
    end

    def all(*args)
      PaginatedResource.new(action(:all), self, *args)
    end
  end
end
