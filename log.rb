class Log
  
  def initialize data
    save_file data
  end

  protected

  def save_file data
    @file = File.open("#{Time.now}.txt", 'w') do |line|
      line.puts data
    end
  end

end
