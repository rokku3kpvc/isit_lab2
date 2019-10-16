class NerNetwork < ApplicationRecord
  validates :input, presence: true
  validates :input, length: { minimum: 15, maximum: 15 }

  before_validation :activate

  WEIGHTS = [1, 1, 1, 2, 0, -6, 1, 1, 1, -6, 0, 1, 1, 1, 1]
  THRESHOLD = 7

  private

  def activate
  # Рассчитываем взвешенную сумму
  net = 0
  WEIGHTS.length.times { |i| net += self.input[i].to_i * WEIGHTS[i] }

  # Превышен ли порог? (Да - сеть думает, что это 5. Нет - сеть думает, что это другая цифра)
  self.result = net >= THRESHOLD
  end
end
