class SearchesController < ApplicationController
  def search
  end

  def foursquare
      Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
        req.params['P40FZMLGK4GBQCBMXY0EFMZPH5K40GMRVVBF0EUOTCHANETA'] = client_id
        req.params['client_secret'] = client_secret
        req.params['v'] = '20160201'
        req.params['near'] = params[:zipcode]
        req.params['query'] = 'coffee shop'
      end
      render 'search'
    end
  end
