defmodule NervesHcsr04Sample do
  @moduledoc """
  Documentation for NervesHcsr04Sample.
  """

  def distance do
    {:ok, sensor} = MyGenServer.start_link({16, 18})
    :ok = MyGenServer.update(sensor)
    Process.sleep(1000)
    {:ok, distance} = MyGenServer.info(sensor)
    distance
  end

end
