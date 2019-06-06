class InstrumentsController < ApplicationController

  get "/instruments" do
    @instruments = Instrument.all
    @names_of_instruments = @instruments.map {|instrument| instrument.name}.uniq
    erb :'instruments/list'
  end

  get "/instruments/:id" do
    # binding.pry
    @instrument = Instrument.find(params[:id])
    @ind_instrument = Instrument.where(name: @instrument.name)
    @this_instrument_artists = @ind_instrument.map{|i| i.artist}.uniq
    erb :'instruments/show'
  end



end
