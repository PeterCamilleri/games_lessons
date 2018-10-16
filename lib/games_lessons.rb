
require_relative 'games_lessons/version'

# The master control class for the games lessons.
class GamesLessons

  CLIST = ['01']

  # Set up the games lessons data.
  def initialize
    @prog_list = { }
    base_path = File.dirname(File.absolute_path(__FILE__))

    CLIST.each do |dir|
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

GamesLessons.new.main(ARGV)
