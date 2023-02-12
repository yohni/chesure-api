module Api
  module V1
      class ProductTypesController < ApplicationController
        def index
          @product_types = ProductType.order('created_at DESC')
        end
      end
  end
end