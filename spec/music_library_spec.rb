require 'music_library'

RSpec.describe MusicLibrary do
  it 'adds tracks to the library' do
    music_library = MusicLibrary.new
    track_1 = double :fake_track_1
    track_2 = double :fake_track_2
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  describe '#search' do
    it 'returns a list of tracks that match the keyword' do
      music_library = MusicLibrary.new
      track_1 = double :fake_track_1, matches?: true
      track_2 = double :fake_track_2, matches?: true
      track_3 = double :fake_track_3, matches?: false
      music_library.add(track_1)
      music_library.add(track_2)
      music_library.add(track_3)
      expect(music_library.search("david")).to eq [track_1, track_2]
    end
  end
end