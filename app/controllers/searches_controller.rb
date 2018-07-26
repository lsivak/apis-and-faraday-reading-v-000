class SearchesController < ApplicationController
  def search
  end

  def foursquare
      Faraday.get 'https://api.foursquare.com/v2/venues/searchclient_id=P40FZMLGK4GBQCBMXY0EFMZPH5K40GMRVVBF0EUOTCHANETA&client_secret=MJH14JCIKR1N2XPEJQXGJZSRB5B2RVB5YNXNHTYTHHZULGLO&v=20160201&m=foursquare' do |req|
        req.params['client_id'] = client_id
        req.params['client_secret'] = client_secret
        req.params['v'] = '20160201'
        req.params['near'] = params[:zipcode]
        req.params['query'] = 'coffee shop'
      end
      render 'search'
    end
  end
