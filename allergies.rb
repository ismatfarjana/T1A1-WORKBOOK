class Allergy
  ALLERGIC_ITEMS = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats']
  attr_reader :score
  def initialize(score)
    @score = score
  end
  def reversed_binary
    score.to_s(2).split("").reverse
  end

  def allergen_list
    identified_alleregen = []
    reversed_binary.each_with_index do |binary, index|
        if binary == '1'
          identified_alleregen << ALLERGIC_ITEMS[index]
        end
    end
    identified_alleregen
  end

  def is_allergic?(name)
    allergen_list.include?(name) ? true : false
  end

end

test = Allergy.new(34)
p test.allergen_list
p test.is_allergic?("peanuts")