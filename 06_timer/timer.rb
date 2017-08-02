class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 3600) % 60

    padded(hours)+":"+padded(minutes)+":"+padded(seconds)
  end

  def padded(time)
    padded_time = time.to_s

    if time < 10
      padded_time = "0" + time.to_s
    end

    padded_time
  end
end

