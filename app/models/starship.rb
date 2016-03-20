class Starship 
  def initialize(name)
    get_starship(name)
  end

  def self.starship_names
    starships = get_starships
    starships.map{ |starship| starship['name']}
  end

  def self.starship_facts
    ['name', 'manufacturer', 'hyperdrive_rating', 'starship_class']
  end

  def get(fact)
    @starship[fact]
  end

  private

  def self.get_starships
    results = RestClient.get('http://swapi.co/api/starships/')
    data = JSON.load(results)
    data['results']
  end

  def get_starship(name)
    starships = self.class.get_starships
    @starship = starships.find{ |starship| starship['name'] == name }
  end
end
