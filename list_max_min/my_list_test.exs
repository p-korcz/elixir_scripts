ExUnit.start()

defmodule MyListTest do
  use ExUnit.Case

  describe "max from list" do
    test "Should return 4" do
      assert MyList.max([1, 2, 3, 4]) == 4
    end
  end

  describe "min from list" do
    test "Should return 1" do
      assert MyList.min([1, 2, 3, 4]) == 1
    end
  end
end
