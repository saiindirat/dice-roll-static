class DiceController < ApplicationController
  def two_six
    @first_die = rand(1..6)
    @second_die = rand(1..6)

    render({ :template => "dice_templates/2d6" })
  end
end
