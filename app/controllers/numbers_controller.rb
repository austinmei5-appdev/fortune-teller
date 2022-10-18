class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)

      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb" })
  end

  def losers
    @donkey = Array.new

    5.times do
      giraffe = rand(1...100)

      @donkey.push(giraffe)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb" })
  end

  def roll_six
    @roll = rand (1...6)

    render({ :template => "dice_stuff/roll_six.html.erb" })
  end
end
