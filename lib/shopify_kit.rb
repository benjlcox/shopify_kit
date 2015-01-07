require 'shopify_kit/version'
require 'active_support/all'
require 'resource_kit'
require 'kartograph'

module ShopifyKit
  autoload :Client, 'shopify_kit/client'

  # Models
  autoload :Product, 'shopify_kit/models/product'
  autoload :BaseModel, 'shopify_kit/models/base_model'
  autoload :MetaInformation, 'shopify_kit/models/meta_information'

  # Resources
  autoload :ProductResource, 'shopify_kit/resources/product_resource'

  # JSON Maps
  autoload :ProductMapping, 'shopify_kit/mappings/product_mapping'

  # Utils
  autoload :PaginatedResource, 'shopify_kit/paginated_resource'

  # Errors
  autoload :ErrorMapping, 'shopify_kit/mappings/error_mapping'
  FailedCreate = Class.new(StandardError)
  FailedUpdate = Class.new(StandardError)
end
