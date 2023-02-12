module Api
  module V1
      class ProductsController < ApplicationController
        def index
          @products = Product.order('created_at DESC')
        end
      end
  end
end