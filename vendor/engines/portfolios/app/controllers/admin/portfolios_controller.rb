module Admin
  class PortfoliosController < Admin::BaseController

    crudify :portfolio,
            :title_attribute => 'name', :xhr_paging => true

  end
end
