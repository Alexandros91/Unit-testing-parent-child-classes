require 'music_library'
require 'track'

RSpec.describe 'integration' do
  it 'adds tracks to the library' do
    music_library = MusicLibrary.new
    track_1 = Track.new("title_1", "artist_1")
    track_2 = Track.new("title_2", "artist_2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  describe '#search' do
    it 'returns a list of tracks that match the keyword' do
      music_library = MusicLibrary.new
      track_1 = Track.new("title_1", "artist_1")
      track_2 = Track.new("title_2", "artist_2")
      track_3 = Track.new("title_3", "artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      music_library.add(track_3)
      expect(music_library.search("artist_2")).to eq [track_2, track_3]
    end
  end
end

