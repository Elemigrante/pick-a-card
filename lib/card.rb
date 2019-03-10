# Сгенерит карту с заданными параметрами в т.ч. джокера и покажет
# её в удобном виде.
class Card
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
  SUITS  = %w[♦ ♥ ♣ ♠].freeze
end

# Создаем новую карту с заданными параметрами
def initialize(value, suit, joker = false)
  @value = value
  @suit = suit
  @joker = joker
end

# Возвращаем информацию для печати карты
def to_s
  @joker ? '🃏' : "#{@value}#{@suit[0].downcase}"
end