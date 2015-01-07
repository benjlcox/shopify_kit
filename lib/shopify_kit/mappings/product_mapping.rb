module ShopifyKit
  class ProductMapping
    include Kartograph::DSL

    kartograph do
      mapping Product
      root_key plural: 'products', singular: 'product', scopes: [:read, :create, :update]

      property :body_html, scopes: [:read, :create, :update]
      property :created_at, scopes: [:read]
      property :handle, scopes: [:read, :create, :update]
      property :id, scopes: [:read]
      property :product_type, scopes: [:read, :create, :update]
      property :published_at, scopes: [:read]
      property :published_scope, scopes: [:read]
      property :template_suffix, scopes: [:read]
      property :title, scopes: [:read, :create, :update]
      property :updated_at, scopes: [:read]
      property :vendor, scopes: [:read, :create, :update]
      property :tags, scopes: [:read, :create, :update]
      property :variants, scopes: [:read]
      property :options, scopes: [:read]
      property :images, scopes: [:read]
      property :image, scopes: [:read]

    end
  end
end
