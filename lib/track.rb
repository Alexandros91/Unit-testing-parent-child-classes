class Track

  attr_reader :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    @title.include?(keyword) || @artist.include?(keyword) ? true : false
  end
end