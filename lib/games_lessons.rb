
require_relative 'games_lessons/version'

# The master control class for the games lessons.
class GamesLessons

  # Set up the games lessons data.
  def initialize
    @prog_list = { }
    base_path = File.dirname(File.absolute_path(__FILE__))
    chapter_list = ['01', 'A']

    chapter_list.each do |dir|
      name = "#{base_path}/../#{dir}/*.rb"
      Dir[name].each do |full|
        @prog_list[File.basename(full, '.rb')] = full
      end
    end
  end

  # The main entry point for the games lessons application.
  def main(args=nil)
    require @prog_list[args[0]]
  rescue
    puts "The program #{args[0]} was not found."
  end

end

# Launch a program if this file was loaded directly. Used for testing.
if __FILE__ == $0
  puts "Game Lessons Launcher, Args = [#{ARGV.join(",")}]"
  GamesLessons.new.main(ARGV)
end
