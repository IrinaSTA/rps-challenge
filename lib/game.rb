class Game

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def player_name
    player.name
  end

  def player_chooses(choice)
    player.make_a_choice(choice)
  end

  def player_choice
    player.choice
  end

  def computer_chooses
    computer.make_a_choice
  end

  def computer_choice
    computer.choice
  end

  def score_game
    if player_winning_choices.include?([player_choice, computer_choice])
      return 'Win'
    elsif player_choice == computer_choice
      return 'Draw'
    else
      return 'Lose'
    end
  end

  def player_winning_choices
    [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]
  end

  private

  attr_reader :player, :computer

end
