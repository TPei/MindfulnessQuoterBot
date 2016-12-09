require './lib/random_parser.rb'

class RandomQuoter
  def self.quote
    file ||= File.read './quotes/quotes.json'
    quote = RandomParser.random_entry(file)
    <<-MESSAGE
#{quote['what']}
  - #{quote['who']}
    MESSAGE
  end
end
