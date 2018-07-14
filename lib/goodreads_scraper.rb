# require libraries/modules here
require 'nokogiri'
require 'open-uri'
require 'pry'

def create_project_hash
  goodreads_fiction = Nokogiri::HTML(open("https://www.goodreads.com/genres/fiction/"))
  book_block = goodreads_fiction.css(".bigBoxBody a img").attribute("alt").text
  book_block2 = goodreads_fiction.css(".bigBoxBody script Tip")
  binding.pry
  projects = {}
  # ("div h2 a.readable.bookTitle")
  #title = book_block.css("script")

  # kickstarter.css("li.project.grid_4").each do |project|
  #   title = project.css("h2.bbcard_name strong a").text
  #   projects[title.to_sym] = {
  #     :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
  #     :description => project.css("p.bbcard_blurb").text,
  #     :location => project.css("ul.project-meta span.location-name").text,
  #     :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  #   }
  #  end
  #  projects


end

create_project_hash


# def create_book_hash
#   books = {}
#   books
#   binding.pry
#
#   #
#
#
#
#   #title =
#   # goodreads_fiction.css(".bigBoxBody.bookBox script").each do |book|
#   #   title = book.css("h2.bbcard_name strong a").text
#   #   projects[title.to_sym] = {
#   #     :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
#   #     :description => project.css("p.bbcard_blurb").text,
#   #     :location => project.css("ul.project-meta span.location-name").text,
#   #     :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
#   #   }
#   #  end
#
# end
