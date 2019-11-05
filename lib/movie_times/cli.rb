class MovieTimes::CLI
  def call
    puts "Welcome!!! Please choose a theatre"
    
    list_theatres
    menu
    goodbye
  end
  
  def list_theatres
    puts <<-DOC.gsub /^\s*/, ''
    1. South Bay Drive In Theatre 2170 Cornado Ave San Diego CA 92154
2. AMC Chula Vista 10 555 Broadway #2050, Chula Vista, CA 91910
3. Regal Rancho Del Ray 1025 Tierra Del Ray Chula Vista, Ca 91910
DOC
  end
  
  def menu
    
    input = nil
    while input !="exit"
    puts "To view the movie times, pick the theatre closest to you, type list to view theatres again or type exit to quit the program"
    
    input = gets.strip.downcase
    case input
    when "1"
      puts "Movie times for South Bay Drive In..."
      when "2"
        puts "Movie times for AMC Chula Vista 10..."
        when "3"
          puts "Movie times for Regal Rancho Del Ray..."
          when "list"
            list_theatres
          else puts "Please choose a valid selection. To view the movie times, pick the theatre closest to you, type list to view theatres again or type exit to quit the program"
        end
      end
    end
    
    def goodbye
      puts " Glad we could help! We hope you enjoy your movie."
    end
    
  end