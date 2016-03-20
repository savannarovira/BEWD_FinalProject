class StarshipsController < ApplicationController
  def index
    @starship_names = Starship.starship_names
    @starship_facts = Starship.starship_facts

    if params[:starship_name]
      @starship = Starship.new(params[:starship_name])
      @fact = params[:starship_fact]
      @value = @starship.get(@fact)
    end
  end
end
