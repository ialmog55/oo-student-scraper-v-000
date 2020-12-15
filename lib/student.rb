class Student
  require 'pry'

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name=student_hash[:name]
    @location=student_hash[:location]
    @twitter=student_hash[:twitter]
    @linkedin=student_hash[:linkedin]
    @github=student_hash[:github]
    @blog=student_hash[:blog]
<<<<<<< HEAD
    @profile_quote=student_hash[:profile_quote]
=======
    @profime_quote=student_hash[:profile_quote]
>>>>>>> 0d7d21184831e9a3a694f83c68bb7d2e0ab5ffc2
    @bio=student_hash[:bio]
    @profile_url=student_hash[:profile_url]
    @@all<<self
  end

  def self.create_from_collection(students_array)
<<<<<<< HEAD

    students_array.each do |student|
    Student.new(student)
=======
    students_array.each do |student|
      firstlast=student[:name].split
       binding.pry
      student[:profile_url]="https://learn-co-curriculum.github.io/student-scraper-test-page/students/"+"#{firstlast[0]}-#{firstlast[1]}"+".html"
      Scraper.scrape_profile_page(student[:profile_url])
>>>>>>> 0d7d21184831e9a3a694f83c68bb7d2e0ab5ffc2
    end

  end

  def add_student_attributes(attributes_hash)

<<<<<<< HEAD
    #firstlast=self.name.split
    #if self.profile_url==nil
        #self.profile_url="students/"+"#{firstlast[0]}-#{firstlast[1]}"+".html"
    #end
    #url="https://learn-co-curriculum.github.io/student-scraper-test-page/"+self.profile_url

    #studenthash=Scraper.scrape_profile_page(url)
    #studenthash.each do

    attributes_hash.each do |key,value|


      if key == :name
      @name=value
      elsif key ==:location
      @location=value
      elsif key ==:twitter
      @twitter=value
      elsif key ==:github
      @github=value
      elsif key == :profile_url
      @profile_url=value
      elsif key ==:linkedin
      @linkedin=value
      elsif key ==:blog
      @blog=value
      elsif key ==:bio
      @bio=value
      elsif key ==:profile_quote
      @profile_quote=value

    end
  end

  end

  def self.all
    @@all
=======
  end

  def self.all

>>>>>>> 0d7d21184831e9a3a694f83c68bb7d2e0ab5ffc2
  end

end
