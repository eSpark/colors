module ES.UI.Color exposing (Color, black, blue, green, grey, orange, purple, red, teal, transparent, white, yellow)

-- This is generated! Don't update manually!

import Color


type alias Color =
    Color.Color


white =
    -- #ffffff
    Color.rgba 1.0 1.0 1.0 1.0


black =
    -- #000000
    Color.rgba 0.0 0.0 0.0 1.0


transparent =
    -- #00000000
    Color.rgba 0.0 0.0 0.0 0.0


teal =
    { dark = Color.rgba 0.06 0.5 0.55 1.0 -- #10808b
    , base = Color.rgba 0.08 0.63 0.68 1.0 -- #14a1ae
    , light = Color.rgba 0.0 0.76 0.79 1.0 -- #00c3c9
    , lighter = Color.rgba 0.4 0.86 0.87 1.0 -- #66dbdf
    , lightest = Color.rgba 0.85 0.96 0.97 1.0 -- #daf5f7
    }


green =
    { dark = Color.rgba 0.33 0.55 0.0 1.0 -- #538b00
    , base = Color.rgba 0.41 0.68 0.0 1.0 -- #68ae00
    , light = Color.rgba 0.58 0.84 0.19 1.0 -- #93d531
    , lighter = Color.rgba 0.75 0.9 0.51 1.0 -- #bee683
    , lightest = Color.rgba 0.87 0.94 0.76 1.0 -- #ddf0c1
    }


yellow =
    { dark = Color.rgba 0.76 0.56 0.03 1.0 -- #c18f08
    , base = Color.rgba 0.95 0.7 0.04 1.0 -- #f2b30b
    , light = Color.rgba 1.0 0.82 0.33 1.0 -- #ffd054
    , lighter = Color.rgba 1.0 0.89 0.6 1.0 -- #ffe398
    , lightest = Color.rgba 1.0 0.95 0.8 1.0 -- #fff1cd
    }


orange =
    { dark = Color.rgba 0.76 0.32 0.0 1.0 -- #c25200
    , base = Color.rgba 0.95 0.4 0.0 1.0 -- #f36700
    , light = Color.rgba 1.0 0.56 0.24 1.0 -- #ff8f3c
    , lighter = Color.rgba 1.0 0.74 0.54 1.0 -- #ffbc8a
    , lightest = Color.rgba 1.0 0.91 0.84 1.0 -- #ffe8d6
    }


red =
    { dark = Color.rgba 0.71 0.22 0.22 1.0 -- #b43838
    , base = Color.rgba 0.88 0.28 0.28 1.0 -- #e14747
    , light = Color.rgba 1.0 0.41 0.41 1.0 -- #ff6868
    , lighter = Color.rgba 1.0 0.64 0.64 1.0 -- #ffa4a4
    , lightest = Color.rgba 1.0 0.84 0.84 1.0 -- #ffd7d7
    }


purple =
    { dark = Color.rgba 0.45 0.24 0.58 1.0 -- #743e93
    , base = Color.rgba 0.57 0.31 0.72 1.0 -- #914eb8
    , light = Color.rgba 0.8 0.49 0.93 1.0 -- #cc7eee
    , lighter = Color.rgba 0.88 0.7 0.96 1.0 -- #e0b2f5
    , lightest = Color.rgba 0.97 0.93 1.0 1.0 -- #f8edff
    }


blue =
    { dark = Color.rgba 0.04 0.33 0.61 1.0 -- #0a539b
    , base = Color.rgba 0.05 0.41 0.76 1.0 -- #0d68c2
    , light = Color.rgba 0.28 0.56 0.84 1.0 -- #4790d7
    , lighter = Color.rgba 0.57 0.74 0.91 1.0 -- #91bce7
    , lightest = Color.rgba 0.88 0.94 1.0 1.0 -- #e0f0ff
    }


grey =
    { x90 = Color.rgba 0.1 0.1 0.1 1.0 -- #1a1a1a
    , x80 = Color.rgba 0.2 0.2 0.2 1.0 -- #333333
    , x70 = Color.rgba 0.3 0.3 0.3 1.0 -- #4d4d4d
    , x60 = Color.rgba 0.4 0.4 0.4 1.0 -- #666666
    , x50 = Color.rgba 0.5 0.5 0.5 1.0 -- #808080
    , x40 = Color.rgba 0.6 0.6 0.6 1.0 -- #999999
    , x30 = Color.rgba 0.7 0.7 0.7 1.0 -- #b3b3b3
    , x20 = Color.rgba 0.8 0.8 0.8 1.0 -- #cccccc
    , x10 = Color.rgba 0.9 0.9 0.9 1.0 -- #e5e5e5
    }
