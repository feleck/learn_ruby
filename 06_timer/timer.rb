class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def time_string2
    minutes = 0
    hours = 0
    if @seconds >= 60
      minutes = @seconds / 60
      @seconds = @seconds % 60
    end
    if minutes >= 60
      hours = minutes / 60
      minutes = minutes % 60
    end
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  
  def time_string
    hours = @seconds / 3600
    @seconds = @seconds % 3600
    minutes = @seconds / 60
    @seconds = @seconds % 60
    "%02d:%02d:%02d" %[hours, minutes, @seconds]
  end

  private
  def check(time)
  end
  def padded(time)
    if time <= 9
      return "0#{time}"
    else
      return time
    end
  end
end
