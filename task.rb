require 'date'
class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Що потрібно зробити?"
    @text = STDIN.gets.chomp

    puts "До якого числа? Вкажіть дату в форматі ДД. ММ. РР"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end


  def to_strings
    time_string = "Створено: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    deadline = "Крайній термін: #{@due_date}"
    return [deadline, @text, time_string]
  end
end
