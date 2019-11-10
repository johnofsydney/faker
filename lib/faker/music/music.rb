# frozen_string_literal: true

module Faker
  class Music < Base
    class << self
      def key
        sample(keys) + sample(key_variants)
      end

      def chord
        key + sample(chord_types)
      end

      def instrument
        fetch('music.instruments')
      end

      def keys
        %w[C D E F G A B]
      end

      def key_variants
        ['b', '#', '']
      end

      def key_types
        ['', 'm']
      end

      def chord_types
        ['', 'maj', '6', 'maj7', 'm', 'm7', '-7', '7', 'dom7', 'dim', 'dim7', 'm7b5']
      end

      def band
        fetch('music.bands')
      end

      def album
        fetch('music.albums')
      end

      def genre
        fetch('music.genres')
      end

      def song
        fetch('music.songs')
      end

      def spotify_track_id
        fetch('music.spotify_track_ids')
      end

      def spotify_artist_id
        fetch('music.spotify_artist_ids')
      end
    end
  end
end
