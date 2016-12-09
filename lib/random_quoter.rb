require './lib/random_parser.rb'

class RandomQuoter
  def self.quote
    file ||= File.read './quotes/quotes.json'
    RandomParser.random_entry(file)['what']
  end
end
