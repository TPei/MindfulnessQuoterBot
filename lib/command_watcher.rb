require './lib/random_quoter.rb'

class CommandWatcher
  def self.parse(text)
    args = text.split(' ')
    if args[0].include?('/start')
      <<-MESSAGE
Hello, nice yo meet you!
- ask me for a quote by typing /quote
- type /help whenever you are confused
- type /info if you want to find out more
:)
      MESSAGE
    elsif args[0].include?('/help')
      <<-MESSAGE
/start     - startup message
/quote - get a mindful quote
you may need to write /quote@MindfulnessQuoterBot if there are multiple bots in a group chat
/info - info about this bot
/help      - this list of commands
      MESSAGE
    elsif args[0].include?('/info')
      <<-MESSAGE
Made by @tpei_bots

The code is open source and can be found here: https://github.com/TPei/MindfulnessQuoterBot

If there are persisting problem with this bot or you'd like to request changes, open an issue here: https://github.com/TPei/MindfulnessQuoterBot/issues/new
      MESSAGE
    elsif args[0].include?('/quote')
      RandomQuoter.quote
    elsif ['what?', 'wat', 'wat?'].include? args[0].downcase
      'Think about it man!'
    elsif args[0].start_with? '/'
      'Sorry, but I do not know that command'
    else
    end
  end
end
