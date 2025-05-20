class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home" })
  end

  def two_six
    @rolls = [rand(1..6), rand(1..6)]
    render({ :template => "dice_templates/2d6" })
  end

  def two_ten
    @rolls = [rand(1..10), rand(1..10)]
    render({ :template => "dice_templates/2d10" })
  end

  def one_twenty
    @rolls = [rand(1..20)]
    render({ :template => "dice_templates/1d20" })
  end

  def five_four
    @rolls = Array.new(5) { rand(1..4) }
    render({ :template => "dice_templates/5d4" })
  end
end
