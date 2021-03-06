#####################################################################################################################
#                                         By Dawit Haile Achamyelhe                                                 #
#                                                                                                                   #
#
#                                                                                                                   #
#
#                                                                                                                   #
#####################################################################################################################
class AppleStore
  require_relative 'gadget'
  @@n=0

  def initialize
    @productsold =[]
  end

  def to_s
    # puts "here is apple Store:"
    "A store having sold #{ product_sold.size} product with revenue of $#{ revenue_earned} so far!"
  end

  def createGadget (make, model, price, height, weight, width, unit)
    ipod=Gadget.new(make, model, price, height, weight, width, unit)
    @productsold<<ipod
    product_sold
    revenue_earned
    puts("here is your #{ipod.model}:")
    @@n += 1
    "A $#{ipod.price} #{ipod.model } weighing #{ipod.weight} #{ipod.unit}"
  end

  def product_sold
    @sum = 0.0
    @productsold.each do |x|
      @sum += 1
    end
  end

  def revenue_earned
    total_rev = 0.0
    @productsold.each { |rev| total_rev += rev.price }
    @total_rev=total_rev
  end
end

a = AppleStore.new()
#
#####################################################################################################################
#                                          Below is an example of usage:                                            #
#                                                                                                                   #
#
#                                                                                                                   #
#
#                                                                                                                   #
#####################################################################################################################

ipod = a.createGadget(:Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)
puts ipod
puts a
macmini = a.createGadget(:Apple, :MacMini, 599, 1.4, 7.7, 2.7, :pounds)
puts macmini
puts a

