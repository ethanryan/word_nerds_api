class Story < ApplicationRecord

  STORY_LENGTH = 5

  belongs_to :user
  has_many :characters
  has_many :story_paragraphs
  has_many :paragraphs, through: :story_paragraphs
  has_many :plots, through: :paragraphs
  has_many :genres, through: :plots

  def create_content(genres, characters)
    puts "------ in create_content, genres is: "
    puts genres
    puts "------ in create_content, characters is:::: "
    puts characters

    genre_name = genres.first.values #making parameters an array...
    #byebug
    #for now, only one genre... what about random???
    #will need to fix these lines when I update genres to allow multiple
    genre_id_num = Genre.where(name: genre_name)[0].id
    puts "* * * * * genre_id_num is::: "
    puts genre_id_num
    #note... in my seed file, ID #10 is random...
    #for above ----- account for genre = "random" from frontend!!!

    arrayOfNums = (1..STORY_LENGTH).to_a #array from 1 to 5

    paragraphs = arrayOfNums.map do |num| #maping over array from 1 to 5, getting random paragraphs from database in order
      puts "~~~~~~~~~~ num is::: "
      puts num

      #plot_ids filted by selected genre_name / genre_id

      #for random genres....
      if genre_id_num === 10 #if genre_id is "random"
        genre_id_num = [1, 2, 3, 4, 5, 6, 7] ##all plots by genre in seed file
        plot_id_nums = Plot.joins(:genre).where(genre_id: genre_id_num.sample).order("RANDOM()").ids
      else
        plot_id_nums = Plot.joins(:genre).where(genre_id: genre_id_num).order("RANDOM()").ids
      end

      puts "---- plot_id_nums is::: "
      puts plot_id_nums

      #Paragraph.where({order: [num]}).order("RANDOM()").first
      para = Paragraph.where({order: [num], plot_id: plot_id_nums.sample}).order("RANDOM()").first
      puts "para.plot.genre.name is: " + para.plot.genre.name
      para #returning each para
    end #end loop

    puts "------ shoveling array of paragraphs into Story.paragraphs"
    self.paragraphs << paragraphs

    ############# <<<<<<<-------------ADDD array of story_genre_names here!!!!! (a string of the names of genres...)
    puts "------ calling Story.get_story_genre_names to create string of story_genre_names"
    self.story_genre_names = self.get_story_genre_names

    ############# <<<<<<<-------------ADDD array of story_plot_titles here!!!!! (a string of the plot titles...)
    puts "------ calling Story.get_story_plot_titles to create string of story_plot_titles"
    self.story_plot_titles = self.get_story_plot_titles

    #### note::::: run the below in the console after adding new plots to database, or after changing plot titles::::
    # THIS FUCKING WORKS::::::::
    # Story.all.each do |story|
    #   story.story_genre_names = story.get_story_genre_names
    #   story.story_plot_titles = story.get_story_plot_titles
    #   story.save!
    # end

    puts "------ calling Story.story_content to create string of content"
    self.content = self.story_content #calling story_content below
  end #end createContent


  def create_content_mini_story(genres, characters)
    genre_name = genres.first.values #making parameters an array...
    genre_id_num = Genre.where(name: genre_name)[0].id
    arrayOfNums = (1..STORY_LENGTH).to_a #array from 1 to 5
    paragraphs = arrayOfNums.map do |num| #maping over array from 1 to 5, getting random paragraphs from database in order
      if genre_id_num === 10 #if genre_id is "random"
        genre_id_num = [1, 2, 3, 4, 5, 6, 7] ##all plots by genre in seed file
        plot_id_nums = Plot.joins(:genre).where(genre_id: genre_id_num.sample).order("RANDOM()").ids
      else
        plot_id_nums = Plot.joins(:genre).where(genre_id: genre_id_num).order("RANDOM()").ids
      end
      para = Paragraph.where({order: [num], plot_id: plot_id_nums.sample}).order("RANDOM()").first
      para
    end #end loop
    puts paragraphs[0].attributes
    self.paragraphs << paragraphs
    self.content = self.mini_story_content #calling story_content below
    #above line is the only thing different about this function!!!
  end #end createContent

  def get_story_genre_names
    story_genre_names = self.paragraphs.map do |p| #create array of genre names from paragraphs...
      p.plot.genre.name
    end
    story_genre_names.join(", ") #return comma separate string of genre names
    # self.save #this returns true, instead of returning above! we don't want that...
  end

  def get_story_plot_titles
    story_plot_titles = self.paragraphs.map do |p| #create array of plot titles from paragraphs...
      p.plot.title
    end
    story_plot_titles.join(", ") #return comma separate string of plot titles
  end

  def story_content
    full_story = self.paragraphs.map do |p|
      p.text
    end
  full_story.join("-----")
  # full_story.join("\n\n") #see if this works instead...
  end #end story_content

  def mini_story_content
    full_story = self.paragraphs.map do |p|
      p.text.split(". ").sample << "." #gets random sentence from each paragraph...
    end
  full_story.join("-----")
  end #end mini_story_content


end #end of class
