class Passenger

  def initialize(train, bac, name)
    @train = train
    @bac = bac
    @name = name
    @beers = 10
    @location = "On the platform"
  end

  def currently_on
    @location
  end

  def drunk?
    @bac > 0.08
  end

  def name
    @name
  end

  def drink_a_beer
    @beers -= 1
    increase_bac
  end

  def increase_bac
    @bac += 0.02
  end

  def get_on_train(train)
    @location = train
  end

  def bac
    @bac
  end

end