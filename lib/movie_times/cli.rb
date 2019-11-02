class MovieTimes::CLI
  def call
    puts "Welcome!!! Please choose a theatre"
    
    list_theatres
  end
  def list_theatres
    puts <<-DOC.gsub /^\s*/, ''
    1. South Bay Drive In Theatre 2170 Cornado Ave San Diego CA 92154
2. AMC Chula Vista 10 555 Broadway #2050, Chula Vista, CA 91910
3. Regal Rancho Del Ray 1025 Tierra Del Ray Chula Vista, Ca 91910
DOC
  end
end