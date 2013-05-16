class TowerOfHanoi

  def initialize(number_of_discs)
    @number_of_discs = number_of_discs
    @three_towers = {
      :one => [],
      :two => [],
      :three => []
    }

    (1..@number_of_discs).to_a.reverse.each do |num|
      @three_towers[:one] << num
    end

    represent
  end

  def represent
    p @three_towers
  end

  def move(from_tower,to_tower)
    disc = @three_towers[from_tower].pop
    @three_towers[to_tower] << disc
  end

  def valid_tower?(tower)
    return false if (tower != :one && tower != :two && tower != :three)
    true
  end

  def valid_to_move?(from_tower,to_tower)
    unless @three_towers[to_tower].empty?
      return false if @three_towers[to_tower].last < @three_towers[from_tower].last
    end
    true
  end

  def user_input
    puts "Which tower do you want to take the disc from? Pick a number between one and three (write them out)"
    from_tower = gets.chomp.to_sym
    while @three_towers[from_tower].empty? || !valid_tower?(from_tower)
      puts "Invalid input! Please input again."
      from_tower = gets.chomp.to_sym
    end

    puts "Which tower do you want to move the disc to? Pick a number between one and three (write them out)"
    to_tower = gets.chomp.to_sym
    while !valid_to_move?(from_tower,to_tower) || !valid_tower?(to_tower)
      puts "Invalid input! Please input again."
      to_tower = gets.chomp.to_sym
    end

    move(from_tower,to_tower)
    represent
  end

  def game_play
    until @three_towers[:three].length == @number_of_discs
      user_input
    end

      puts "Congratulations! You Win!"
  end
end

ton = TowerOfHanoi.new(7)
ton.game_play
