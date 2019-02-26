module Refinery
  module News
    module Admin
      class ItemsController < ::Refinery::AdminController

        crudify :'refinery/news/item', 
                sortable: false,
                order: "publish_date DESC",
                xhr_paging: true

        private

          def item_params
            params.require(:item).permit(:title, :body, :content, :source, :publish_date, :expiration_date)
          end

      end
    end
  end
end
