module Dota
  module API
    class LiveLeague
      include Utilities::Inspectable

      attr_reader :raw

      def initialize(raw)
        @raw = raw
      end

      def lobby_id
        raw["lobby_id"]
      end

      def match_id
        raw["match_id"]
      end

      def spectators
        raw["spectators"]
      end

      def league
        league_id = raw["league_id"]
        leagues = Dota.api.leagues
        leagues.detect { |league| league.id == league_id }
      end

      def stream_delay
        raw["stream_delay_s"]
      end
      #this is in seconds

      def radiant_wins
        raw["radiant_series_wins"]
      end

      def dire_wins
        raw["dire_series_wins"]
      end

      def radiant
        Radiant.new(raw["radiant_team"])
      end

      def dire
        Dire.new(raw["dire_team"])
      end

      def series_type
        raw["series_type"]
      end
      # does this have any info about it?

      def league_tier
        raw["league_tier"]
      end
      #this should be something like pro, amateur, etc

      def players
        raw["players"].map do |raw_player|
          Player.new(raw_player)
        end
      end

      def scoreboard
        Scoreboard.new(raw["scoreboard"])
      end
    end 
    class Side
      include Utilities::Inspectable

      attr_reader :raw

      def initialize(raw)
        @raw = raw
      end

      def name
        raw["team_name"]
      end

      def id
        raw["team_id"]
      end

      def logo
        raw["team_logo"]
      end

      def compelete?
        #raw["team_name"]
      end
    end

    class Radiant < Side
    end
    class Dire < Side     
    end     
  end
end