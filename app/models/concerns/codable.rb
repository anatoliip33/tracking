require 'active_support/concern'

module Codable
  extend ActiveSupport::Concern

  # def random_digits(n)
  #   (0..9).cycle(n).to_a.shuffle[0, n].join
  # end

  def random_hex
    rand(256).to_s(16).rjust(2, '0').upcase
  end

  def random_letters(n)
    ('A'..'Z').cycle(n).to_a.shuffle[0, n].join
  end

  def random_code
    random_letters(3) + '-' + random_hex + '-' + random_letters(3) + '-' + random_hex + '-' + random_letters(3)
  end

  def generate_code
    loop do
      new_code = random_code
      return self.code = new_code unless self.class.exists?(code: new_code)
    end
  end

end
