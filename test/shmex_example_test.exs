defmodule ShmexExample.Test do
  use ExUnit.Case

  test "Greets you from NIF" do
    assert {:ok, shm} = ShmexExample.foo()
    assert {:ok, content} = Shmex.Native.read(shm)
    assert content == "Hello shmex!" <> <<0>>
  end
end
