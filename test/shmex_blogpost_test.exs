defmodule ShmexBlogpostTest do
  use ExUnit.Case
  doctest ShmexBlogpost

  test "greets the world" do
    assert ShmexBlogpost.hello() == :world
  end
end
