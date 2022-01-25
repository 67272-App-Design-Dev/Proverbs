class HomeController < ApplicationController
  def martok
    # get the data you want
    @proverb = Proverb.get_random_quote

    # template: 'martok'
    # layout: 'application'

    # send to a view template and layout
    # done by default to home#index
  end
end
