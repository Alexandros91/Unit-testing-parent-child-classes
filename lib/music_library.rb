class MusicLibrary
  def initialize
    @track_library = []
  end

  def add(track)
    @track_library << track
  end

  def all
    @track_library
  end
  
  def search(keyword)
    return @track_library.select do |track|
      track.matches?(keyword)
    end
  end
end