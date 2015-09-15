shitty_poem = Snooby::Client.new
works_of_great_art = shitty_poem.subreddit('ShittyPoetry').posts
work_safe_art = works_of_great_art.delete_if { |poem| poem.title.match(/nsfw/) }

work_safe_art.each do |poem|
  lines = poem.selftext.split("\n")
  lines.each do |line|
    unless line.empty? || line == " "
      Line.create(content: line)
    end
  end
end

haiku_request = Snooby::Client.new
haikus = haiku_request.subreddit('haiku').posts

haikus.each do |haiku|
  lines = haiku.title.split("/")
  lines.each do |line|
    unless line.empty? || line == " "
      line.delete("/")
      Line.create(content: line)
    end
  end
end

100.times do
  poem = Poem.create(title: Line.random.content)
  number_of_lines = rand(20)
  number_of_lines.times do 
    PoemLine.create(line: Line.random, poem: poem)
  end
end
