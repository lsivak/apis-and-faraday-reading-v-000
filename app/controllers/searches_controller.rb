class SearchesController < ApplicationController
  def search
  end

  def foursquare
      Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
        req.params['client_id'] = P40FZMLGK4GBQCBMXY0EFMZPH5K40GMRVVBF0EUOTCHANETA
        req.params['client_secret'] = MJH14JCIKR1N2XPEJQXGJZSRB5B2RVB5YNXNHTYTHHZULGLO
        req.params['v'] = '20160201'
        req.params['near'] = params[:zipcode]
        req.params['query'] = 'coffee shop'
      end
      render 'search'
    end
  end
