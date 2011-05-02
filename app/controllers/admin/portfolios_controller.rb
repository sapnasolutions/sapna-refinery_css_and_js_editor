module Admin
  class PortfoliosController < Admin::BaseController

    crudify :portfolio,
            :title_attribute => 'name', :xhr_paging => true
            
    def new
      @portfolio = Portfolio.new()
      @portfolio_translation = @portfolio.translations.build(:locale => "en")
    end
    
    def edit
      @portfolio = Portfolio.find(params[:id])
      @portfolio_translation = [@portfolio.translations.find_by_locale(params[:switch_locale] || Thread.current[:globalize_locale]) || @portfolio.translations.build(:locale => "en")]
    end
    
    def update
      @portfolio = Portfolio.find(params[:id])
      if @portfolio.update_attributes(params[:portfolio])
        redirect_to admin_portfolios_path, :notice => "Portfolio has been updated"
      else
        flash[:error] = @portfolio.errors.full_messages.join('<br />')
        render :action => :edit
      end
    end

  end
end
