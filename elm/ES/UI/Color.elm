module ES.UI.Color exposing (blue, green, grey, orange, purple, red, teal, yellow)

import Color


teal =
    { dark = Color.rgb 0.06 0.5 0.55 -- #10808b
    , base = Color.rgb 0.08 0.63 0.68 -- #14a1ae
    , light = Color.rgb 0.0 0.76 0.79 -- #00c3c9
    , lighter = Color.rgb 0.4 0.86 0.87 -- #66dbdf
    , lightest = Color.rgb 0.85 0.96 0.5 -- #daf57f
    }


green =
    { dark = Color.rgb 0.33 0.55 0.0 -- #538b00
    , base = Color.rgb 0.41 0.68 0.0 -- #68ae00
    , light = Color.rgb 0.58 0.84 0.19 -- #93d531
    , lighter = Color.rgb 0.75 0.9 0.51 -- #bee683
    , lightest = Color.rgb 0.87 0.94 0.76 -- #ddf0c1
    }


yellow =
    { dark = Color.rgb 0.76 0.56 0.03 -- #c18f08
    , base = Color.rgb 0.95 0.7 0.04 -- #f2b30b
    , light = Color.rgb 1.0 0.82 0.33 -- #ffd054
    , lighter = Color.rgb 1.0 0.89 0.6 -- #ffe398
    , lightest = Color.rgb 1.0 0.95 0.8 -- #fff1cd
    }


orange =
    { dark = Color.rgb 0.76 0.32 0.0 -- #c25200
    , base = Color.rgb 0.95 0.4 0.0 -- #f36700
    , light = Color.rgb 1.0 0.56 0.24 -- #ff8f3c
    , lighter = Color.rgb 1.0 0.74 0.54 -- #ffbc8a
    , lightest = Color.rgb 1.0 0.91 0.84 -- #ffe8d6
    }


red =
    { dark = Color.rgb 0.71 0.22 0.22 -- #b43838
    , base = Color.rgb 0.88 0.28 0.28 -- #e14747
    , light = Color.rgb 1.0 0.41 0.41 -- #ff6868
    , lighter = Color.rgb 1.0 0.64 0.64 -- #ffa4a4
    , lightest = Color.rgb 1.0 0.84 0.84 -- #ffd7d7
    }


purple =
    { dark = Color.rgb 0.45 0.24 0.58 -- #743e93
    , base = Color.rgb 0.57 0.31 0.72 -- #914eb8
    , light = Color.rgb 0.8 0.49 0.93 -- #cc7eee
    , lighter = Color.rgb 0.88 0.7 0.96 -- #e0b2f5
    , lightest = Color.rgb 0.97 0.93 1.0 -- #f8edff
    }


blue =
    { dark = Color.rgb 0.04 0.33 0.61 -- #0a539b
    , base = Color.rgb 0.05 0.41 0.76 -- #0d68c2
    , light = Color.rgb 0.28 0.56 0.84 -- #4790d7
    , lighter = Color.rgb 0.57 0.74 0.91 -- #91bce7
    , lightest = Color.rgb 0.88 0.94 1.0 -- #e0f0ff
    }


grey =
    { x90 = Color.rgb 0.1 0.1 0.1 -- #1a1a1a
    , x80 = Color.rgb 0.2 0.2 0.2 -- #333333
    , x70 = Color.rgb 0.3 0.3 0.3 -- #4d4d4d
    , x60 = Color.rgb 0.4 0.4 0.4 -- #666666
    , x50 = Color.rgb 0.5 0.5 0.5 -- #808080
    , x40 = Color.rgb 0.6 0.6 0.6 -- #999999
    , x30 = Color.rgb 0.7 0.7 0.7 -- #b3b3b3
    , x20 = Color.rgb 0.8 0.8 0.8 -- #cccccc
    , x10 = Color.rgb 0.9 0.9 0.9 -- #e5e5e5
    }
