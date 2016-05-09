
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  # def find_soda(soda_brand)
  #   @sodas.each do |soda|
  #     if soda.brand == soda_brand
  #       return soda
  #     end
  #   end
  #   nil
  # end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

def sell(soda_brand)
  if find_soda(soda_brand) != nil
    current_soda = @sodas.find{ |soda| soda.brand == soda_brand}
    @cash += current_soda.price
    @sodas.delete(current_soda)
  end
end

  # def sell(soda_brand)
  #   if find_soda(soda_brand) != nil
  #     @sodas.each do |soda|
  #       if soda.brand == soda_brand
  #         # add cash
  #         @cash += soda.price
  #         # remove soda from machine
  #         @sodas.delete(soda)
  #         return nil
  #       end
  #     end
  #   end
  #   nil
  # end

end

# a = Soda.new(brand: 'Mt. Dew', price: 0.65)
# b = Soda.new(brand: 'Coke', price: 0.65)
# c = Soda.new(brand: 'Pepsi', price: 0.65)
# s = SodaMachine.new(sodas: [a,b,c], cash: 1.00)


# puts s.sodas.to_s

# s.find_soda('Pepsi')

