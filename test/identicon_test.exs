defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  setup do
    on_exit fn ->
      File.rm("mateusz.png")
    end
  end

  describe "generate/1" do
    test "saves file with binary data" do
      Identicon.generate('mateusz')

      assert File.exists?("mateusz.png") == true
    end
  end
end
