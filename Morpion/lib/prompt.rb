module Prompt
  TTT_KEYBOARD_STYLE = [
    ' ____ ____ ____ _________ ____ ____ ____ _________ ____ ____ ____ ',
    '||T |||i |||c |||       |||T |||a |||c |||       |||T |||o |||e ||',
    '||__|||__|||__|||_______|||__|||__|||__|||_______|||__|||__|||__||',
    '|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|',
  ].freeze

  TTT_ITALIC_STYLE = [
    '  _______       ______           ______        ',
    ' /_  __(_)___  /_  __/__ _____  /_  __/__  ___ ',
    '  / / / / __/   / / / _ `/ __/   / / / _ \/ -_)',
    ' /_/ /_/\__/   /_/  \_,_/\__/   /_/  \___/\__/ '
  ].freeze

  def self.welcome
    system('clear') || system('cls')
    puts "\e[31m#{TTT_ITALIC_STYLE.join("\n")}\e[0m"
    puts "\n\nTapez \e[32m[ok]\e[0m pour lancer une partie."
    puts "Vous pouvez aussi résoudre votre besoin d'affrontement sur FIFA 23, dans ce cas tapez : \e[32m[q]\e[0m"
    print "\n▶︎ "
    gets.chomp
  end

  def self.name(turn)
    system('clear') || system('cls')
    puts "\nChoisissez le nom du joueur #{turn + 1}:"
    print '▶︎ '
    gets.chomp
  end

  def self.pick(name)
    puts "\n\n✭ \e[4m#{name}\e[24m ✭"
    puts "\nChoisis une case désignée par une lettre"
    puts "\e[3m(Si tu tapes une lettre au hasard, la séléction sera aléatoire)\e[23m"
    print '▶︎ '
    gets.chomp
  end

  def self.replay?
    puts "\nVoulez-vous rejouer? \e[32m[oui]\e[0m or \e[32m[non]\e[0m"
    print '▶︎ '
    gets.chomp
  end
end
