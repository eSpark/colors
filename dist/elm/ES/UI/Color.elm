module ES.UI.Color exposing (Color, black, blue, familyName, green, grey, orange, purple, red, teal, transparent, white, yellow)

-- This is generated! Don't update manually!

import Color


type alias Color =
    Color.Color


black : Color
black =
    Color.rgb 0.0 0.0 0.0


white : Color
white =
    Color.rgb 1.0 1.0 1.0


transparent : Color
transparent =
    Color.rgba 0.0 0.0 0.0 0.0


teal =
    { dark = Color.rgb 0.06 0.5 0.55 -- #10808B
    , base = Color.rgb 0.08 0.63 0.68 -- #14A1AE
    , light = Color.rgb 0.0 0.76 0.79 -- #00C3C9
    , lighter = Color.rgb 0.4 0.86 0.87 -- #66DBDF
    , lightest = Color.rgb 0.85 0.96 0.97 -- #DAF5F7
    }


green =
    { dark = Color.rgb 0.33 0.55 0.0 -- #538B00
    , base = Color.rgb 0.41 0.68 0.0 -- #68AE00
    , light = Color.rgb 0.58 0.84 0.19 -- #93D531
    , lighter = Color.rgb 0.75 0.9 0.51 -- #BEE683
    , lightest = Color.rgb 0.87 0.94 0.76 -- #DDF0C1
    }


yellow =
    { dark = Color.rgb 0.76 0.56 0.03 -- #C18F08
    , base = Color.rgb 0.95 0.7 0.04 -- #F2B30B
    , light = Color.rgb 1.0 0.82 0.33 -- #FFD054
    , lighter = Color.rgb 1.0 0.89 0.6 -- #FFE398
    , lightest = Color.rgb 1.0 0.95 0.8 -- #FFF1CD
    }


orange =
    { dark = Color.rgb 0.76 0.32 0.0 -- #C25200
    , base = Color.rgb 0.95 0.4 0.0 -- #F36700
    , light = Color.rgb 1.0 0.56 0.24 -- #FF8F3C
    , lighter = Color.rgb 1.0 0.74 0.54 -- #FFBC8A
    , lightest = Color.rgb 1.0 0.91 0.84 -- #FFE8D6
    }


red =
    { dark = Color.rgb 0.71 0.22 0.22 -- #B43838
    , base = Color.rgb 0.88 0.28 0.28 -- #E14747
    , light = Color.rgb 1.0 0.41 0.41 -- #FF6868
    , lighter = Color.rgb 1.0 0.64 0.64 -- #FFA4A4
    , lightest = Color.rgb 1.0 0.84 0.84 -- #FFD7D7
    }


purple =
    { dark = Color.rgb 0.45 0.24 0.58 -- #743E93
    , base = Color.rgb 0.57 0.31 0.72 -- #914EB8
    , light = Color.rgb 0.8 0.49 0.93 -- #CC7EEE
    , lighter = Color.rgb 0.88 0.7 0.96 -- #E0B2F5
    , lightest = Color.rgb 0.97 0.93 1.0 -- #F8EDFF
    }


blue =
    { dark = Color.rgb 0.04 0.33 0.61 -- #0A539B
    , base = Color.rgb 0.05 0.41 0.76 -- #0D68C2
    , light = Color.rgb 0.28 0.56 0.84 -- #4790D7
    , lighter = Color.rgb 0.57 0.74 0.91 -- #91BCE7
    , lightest = Color.rgb 0.88 0.94 1.0 -- #E0F0FF
    }


grey =
    { x90 = Color.rgb 0.1 0.1 0.1 -- #1A1A1A
    , x80 = Color.rgb 0.2 0.2 0.2 -- #333333
    , x70 = Color.rgb 0.3 0.3 0.3 -- #4D4D4D
    , x60 = Color.rgb 0.4 0.4 0.4 -- #666666
    , x50 = Color.rgb 0.5 0.5 0.5 -- #808080
    , x40 = Color.rgb 0.6 0.6 0.6 -- #999999
    , x30 = Color.rgb 0.7 0.7 0.7 -- #B3B3B3
    , x20 = Color.rgb 0.8 0.8 0.8 -- #CCCCCC
    , x10 = Color.rgb 0.9 0.9 0.9 -- #E5E5E5
    }


identify : Color -> { family : String, shade : String, hex : String }
identify color =
    let
        { r, g, b } =
            Color.toRgba color
    in
    case ( r, g, b ) of
        ( 0.06, 0.5, 0.55 ) ->
            { family = "teal", shade = "dark", hex = "#10808B" }

        ( 0.08, 0.63, 0.68 ) ->
            { family = "teal", shade = "base", hex = "#14A1AE" }

        ( 0.0, 0.76, 0.79 ) ->
            { family = "teal", shade = "light", hex = "#00C3C9" }

        ( 0.4, 0.86, 0.87 ) ->
            { family = "teal", shade = "lighter", hex = "#66DBDF" }

        ( 0.85, 0.96, 0.97 ) ->
            { family = "teal", shade = "lightest", hex = "#DAF5F7" }

        ( 0.33, 0.55, 0.0 ) ->
            { family = "green", shade = "dark", hex = "#538B00" }

        ( 0.41, 0.68, 0.0 ) ->
            { family = "green", shade = "base", hex = "#68AE00" }

        ( 0.58, 0.84, 0.19 ) ->
            { family = "green", shade = "light", hex = "#93D531" }

        ( 0.75, 0.9, 0.51 ) ->
            { family = "green", shade = "lighter", hex = "#BEE683" }

        ( 0.87, 0.94, 0.76 ) ->
            { family = "green", shade = "lightest", hex = "#DDF0C1" }

        ( 0.76, 0.56, 0.03 ) ->
            { family = "yellow", shade = "dark", hex = "#C18F08" }

        ( 0.95, 0.7, 0.04 ) ->
            { family = "yellow", shade = "base", hex = "#F2B30B" }

        ( 1.0, 0.82, 0.33 ) ->
            { family = "yellow", shade = "light", hex = "#FFD054" }

        ( 1.0, 0.89, 0.6 ) ->
            { family = "yellow", shade = "lighter", hex = "#FFE398" }

        ( 1.0, 0.95, 0.8 ) ->
            { family = "yellow", shade = "lightest", hex = "#FFF1CD" }

        ( 0.76, 0.32, 0.0 ) ->
            { family = "orange", shade = "dark", hex = "#C25200" }

        ( 0.95, 0.4, 0.0 ) ->
            { family = "orange", shade = "base", hex = "#F36700" }

        ( 1.0, 0.56, 0.24 ) ->
            { family = "orange", shade = "light", hex = "#FF8F3C" }

        ( 1.0, 0.74, 0.54 ) ->
            { family = "orange", shade = "lighter", hex = "#FFBC8A" }

        ( 1.0, 0.91, 0.84 ) ->
            { family = "orange", shade = "lightest", hex = "#FFE8D6" }

        ( 0.71, 0.22, 0.22 ) ->
            { family = "red", shade = "dark", hex = "#B43838" }

        ( 0.88, 0.28, 0.28 ) ->
            { family = "red", shade = "base", hex = "#E14747" }

        ( 1.0, 0.41, 0.41 ) ->
            { family = "red", shade = "light", hex = "#FF6868" }

        ( 1.0, 0.64, 0.64 ) ->
            { family = "red", shade = "lighter", hex = "#FFA4A4" }

        ( 1.0, 0.84, 0.84 ) ->
            { family = "red", shade = "lightest", hex = "#FFD7D7" }

        ( 0.45, 0.24, 0.58 ) ->
            { family = "purple", shade = "dark", hex = "#743E93" }

        ( 0.57, 0.31, 0.72 ) ->
            { family = "purple", shade = "base", hex = "#914EB8" }

        ( 0.8, 0.49, 0.93 ) ->
            { family = "purple", shade = "light", hex = "#CC7EEE" }

        ( 0.88, 0.7, 0.96 ) ->
            { family = "purple", shade = "lighter", hex = "#E0B2F5" }

        ( 0.97, 0.93, 1.0 ) ->
            { family = "purple", shade = "lightest", hex = "#F8EDFF" }

        ( 0.04, 0.33, 0.61 ) ->
            { family = "blue", shade = "dark", hex = "#0A539B" }

        ( 0.05, 0.41, 0.76 ) ->
            { family = "blue", shade = "base", hex = "#0D68C2" }

        ( 0.28, 0.56, 0.84 ) ->
            { family = "blue", shade = "light", hex = "#4790D7" }

        ( 0.57, 0.74, 0.91 ) ->
            { family = "blue", shade = "lighter", hex = "#91BCE7" }

        ( 0.88, 0.94, 1.0 ) ->
            { family = "blue", shade = "lightest", hex = "#E0F0FF" }

        ( 0.1, 0.1, 0.1 ) ->
            { family = "grey", shade = "90", hex = "#1A1A1A" }

        ( 0.2, 0.2, 0.2 ) ->
            { family = "grey", shade = "80", hex = "#333333" }

        ( 0.3, 0.3, 0.3 ) ->
            { family = "grey", shade = "70", hex = "#4D4D4D" }

        ( 0.4, 0.4, 0.4 ) ->
            { family = "grey", shade = "60", hex = "#666666" }

        ( 0.5, 0.5, 0.5 ) ->
            { family = "grey", shade = "50", hex = "#808080" }

        ( 0.6, 0.6, 0.6 ) ->
            { family = "grey", shade = "40", hex = "#999999" }

        ( 0.7, 0.7, 0.7 ) ->
            { family = "grey", shade = "30", hex = "#B3B3B3" }

        ( 0.8, 0.8, 0.8 ) ->
            { family = "grey", shade = "20", hex = "#CCCCCC" }

        ( 0.9, 0.9, 0.9 ) ->
            { family = "grey", shade = "10", hex = "#E5E5E5" }

        _ ->
            "unknown"
