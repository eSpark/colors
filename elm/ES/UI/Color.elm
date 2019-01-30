module ES.UI.Color exposing (Color(..), blue, green, grey, orange, purple, red, teal, toString, yellow)


type Color
    = Color String


toString : Color -> String
toString (Color str) =
    str


teal =
    { dark = Color "#10808B"
    , base = Color "#14A1AE"
    , light = Color "#00C3C9"
    , lighter = Color "#66DBDF"
    , lightest = Color "#DAF57F"
    }


green =
    { dark = Color "#538B00"
    , base = Color "#68AE00"
    , light = Color "#93D531"
    , lighter = Color "#BEE683"
    , lightest = Color "#DDF0C1"
    }


yellow =
    { dark = Color "#C18F08"
    , base = Color "#F2B30B"
    , light = Color "#FFD054"
    , lighter = Color "#FFE398"
    , lightest = Color "#FFF1CD"
    }


orange =
    { dark = Color "#C25200"
    , base = Color "#F36700"
    , light = Color "#FF8F3C"
    , lighter = Color "#FFBC8A"
    , lightest = Color "#FFE8D6"
    }


red =
    { dark = Color "#B43838"
    , base = Color "#E14747"
    , light = Color "#FF6868"
    , lighter = Color "#FFA4A4"
    , lightest = Color "#FFD7D7"
    }


purple =
    { dark = Color "#743E93"
    , base = Color "#914EB8"
    , light = Color "#CC7EEE"
    , lighter = Color "#E0B2F5"
    , lightest = Color "#F8EDFF"
    }


blue =
    { dark = Color "#0A539B"
    , base = Color "#0D68C2"
    , light = Color "#4790D7"
    , lighter = Color "#91BCE7"
    , lightest = Color "#E0F0FF"
    }


grey =
    { x90 = Color "#1A1A1A"
    , x80 = Color "#333333"
    , x70 = Color "#4D4D4D"
    , x60 = Color "#666666"
    , x50 = Color "#808080"
    , x40 = Color "#999999"
    , x30 = Color "#B3B3B3"
    , x20 = Color "#CCCCCC"
    , x10 = Color "#E5E5E5"
    }
