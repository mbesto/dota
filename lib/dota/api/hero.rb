module Dota
  module API
    class Hero
      MAPPING = {
        1 => ["antimage", "Anti-Mage"],
        2 => ["axe", "Axe"],
        3 => ["bane", "Bane"],
        4 => ["bloodseeker", "Bloodseeker"],
        5 => ["crystal_maiden", "Crystal Maiden"],
        6 => ["drow_ranger", "Drow Ranger"],
        7 => ["earthshaker", "Earthshaker"],
        8 => ["juggernaut", "Juggernaut"],
        9 => ["mirana", "Mirana"],
        10 => ["morphling", "Morphling"],
        11 => ["nevermore", "Shadow Fiend"],
        12 => ["phantom_lancer", "Phantom Lancer"],
        13 => ["puck", "Puck"],
        14 => ["pudge", "Pudge"],
        15 => ["razor", "Razor"],
        16 => ["sand_king", "Sand King"],
        17 => ["storm_spirit", "Storm Spirit"],
        18 => ["sven", "Sven"],
        19 => ["tiny", "Tiny"],
        20 => ["vengefulspirit", "Vengeful Spirit"],
        21 => ["windrunner", "Windranger"],
        22 => ["zuus", "Zeus"],
        23 => ["kunkka", "Kunkka"],
        25 => ["lina", "Lina"],
        26 => ["lion", "Lion"],
        27 => ["shadow_shaman", "Shadow Shaman"],
        28 => ["slardar", "Slardar"],
        29 => ["tidehunter", "Tidehunter"],
        30 => ["witch_doctor", "Witch Doctor"],
        31 => ["lich", "Lich"],
        32 => ["riki", "Riki"],
        33 => ["enigma", "Enigma"],
        34 => ["tinker", "Tinker"],
        35 => ["sniper", "Sniper"],
        36 => ["necrolyte", "Necrophos"],
        37 => ["warlock", "Warlock"],
        38 => ["beastmaster", "Beastmaster"],
        39 => ["queenofpain", "Queen of Pain"],
        40 => ["venomancer", "Venomancer"],
        41 => ["faceless_void", "Faceless Void"],
        42 => ["skeleton_king", "Wraith King"],
        43 => ["death_prophet", "Death Prophet"],
        44 => ["phantom_assassin", "Phantom Assassin"],
        45 => ["pugna", "Pugna"],
        46 => ["templar_assassin", "Templar Assassin"],
        47 => ["viper", "Viper"],
        48 => ["luna", "Luna"],
        49 => ["dragon_knight", "Dragon Knight"],
        50 => ["dazzle", "Dazzle"],
        51 => ["rattletrap", "Clockwerk"],
        52 => ["leshrac", "Leshrac"],
        53 => ["furion", "Nature's Prophet"],
        54 => ["life_stealer", "Lifestealer"],
        55 => ["dark_seer", "Dark Seer"],
        56 => ["clinkz", "Clinkz"],
        57 => ["omniknight", "Omniknight"],
        58 => ["enchantress", "Enchantress"],
        59 => ["huskar", "Huskar"],
        60 => ["night_stalker", "Night Stalker"],
        61 => ["broodmother", "Broodmother"],
        62 => ["bounty_hunter", "Bounty Hunter"],
        63 => ["weaver", "Weaver"],
        64 => ["jakiro", "Jakiro"],
        65 => ["batrider", "Batrider"],
        66 => ["chen", "Chen"],
        67 => ["spectre", "Spectre"],
        68 => ["ancient_apparition", "Ancient Apparition"],
        69 => ["doom_bringer", "Doom"],
        70 => ["ursa", "Ursa"],
        71 => ["spirit_breaker", "Spirit Breaker"],
        72 => ["gyrocopter", "Gyrocopter"],
        73 => ["alchemist", "Alchemist"],
        74 => ["invoker", "Invoker"],
        75 => ["silencer", "Silencer"],
        76 => ["obsidian_destroyer", "Outworld Devourer"],
        77 => ["lycan", "Lycan"],
        78 => ["brewmaster", "Brewmaster"],
        79 => ["shadow_demon", "Shadow Demon"],
        80 => ["lone_druid", "Lone Druid"],
        81 => ["chaos_knight", "Chaos Knight"],
        82 => ["meepo", "Meepo"],
        83 => ["treant", "Treant Protector"],
        84 => ["ogre_magi", "Ogre Magi"],
        85 => ["undying", "Undying"],
        86 => ["rubick", "Rubick"],
        87 => ["disruptor", "Disruptor"],
        88 => ["nyx_assassin", "Nyx Assassin"],
        89 => ["naga_siren", "Naga Siren"],
        90 => ["keeper_of_the_light", "Keeper of the Light"],
        91 => ["wisp", "Io"],
        92 => ["visage", "Visage"],
        93 => ["slark", "Slark"],
        94 => ["medusa", "Medusa"],
        95 => ["troll_warlord", "Troll Warlord"],
        96 => ["centaur", "Centaur Warrunner"],
        97 => ["magnataur", "Magnus"],
        98 => ["shredder", "Timbersaw"],
        99 => ["bristleback", "Bristleback"],
        100 => ["tusk", "Tusk"],
        101 => ["skywrath_mage", "Skywrath Mage"],
        102 => ["abaddon", "Abaddon"],
        103 => ["elder_titan", "Elder Titan"],
        104 => ["legion_commander", "Legion Commander"],
        105 => ["techies", "Techies"],
        106 => ["ember_spirit", "Ember Spirit"],
        107 => ["earth_spirit", "Earth Spirit"],
        109 => ["terrorblade", "Terrorblade"],
        110 => ["phoenix", "Phoenix"]
      }.freeze

      attr_reader :id, :name

      def self.all
        MAPPING.keys.map { |id| new(id) }
      end

      def initialize(id)
        @id = id
        @internal_name = MAPPING[id][0]
        @name = MAPPING[id][1]
      end

      def image_url(type = :full)
        "http://cdn.dota2.com/apps/dota2/images/heroes/#{internal_name}_#{type}.png"
      end

      private

      attr_reader :internal_name
    end
  end
end
