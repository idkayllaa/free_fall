defmodule Tetro do
  defstruct [shape: :l, position: {5,1}, rotation: 0] 

  def new do 
    %__MODULE__{}
  end
  
  def new(shape) do
    %__MODULE__{shape: shape}    
  end

  def down(tetro) do
    %{tetro| position: Point.down(tetro.position)}
  end
  def left(tetro) do
    %{tetro| position: Point.left(tetro.position)}
  end
  def right(tetro) do
    %{tetro| position: Point.right(tetro.position)}
  end
end
