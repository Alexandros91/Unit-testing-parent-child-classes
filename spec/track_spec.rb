require 'track'

RSpec.describe Track do
  it 'constructs' do
    track = Track.new("title", "artist")
    expect(track.title).to eq "title"
    expect(track.artist).to eq "artist"
  end

  describe '#matches?' do
    context 'if the keyword matches the title' do
      it 'returns true' do
        track = Track.new("title", "artist")
        expect(track.matches?("title")).to eq true
      end
    end

    context 'if the keyword matches the artist' do
      it 'returns true' do
        track = Track.new("title", "artist")
        expect(track.matches?("artist")).to eq true
      end
    end

    context 'if the keyword does not the title or the artist' do
      it 'returns false' do
        track = Track.new("title", "artist")
        expect(track.matches?("bobw")).to eq false
      end
    end

  end


end