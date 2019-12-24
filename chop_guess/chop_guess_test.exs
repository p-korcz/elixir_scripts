ExUnit.start()

defmodule ChopTest do
  use ExUnit.Case

  describe "Chop.guess test" do
    test "Should return 273" do
      assert Chop.guess(273, 1..1000) == 273
    end

    test "Should return 'Number's not in range'" do
      assert Chop.guess(1273, 1..1000) == "Number's not in range"
    end
  end
end
