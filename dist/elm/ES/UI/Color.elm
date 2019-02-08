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


familyName : Color -> String
familyName color =
    let
        { r, g, b } =
            Color.toRgba
    in
    case ( r, g, b ) of
        ( 0.06, 0.5, 0.55 ) ->
            "teal"

        ( 0.08, 0.63, 0.68 ) ->
            "teal"

        ( 0.0, 0.76, 0.79 ) ->
            "teal"

        ( 0.4, 0.86, 0.87 ) ->
            "teal"

        ( 0.85, 0.96, 0.97 ) ->
            "teal"

        ( 0.33, 0.55, 0.0 ) ->
            "green"

        ( 0.41, 0.68, 0.0 ) ->
            "green"

        ( 0.58, 0.84, 0.19 ) ->
            "green"

        ( 0.75, 0.9, 0.51 ) ->
            "green"

        ( 0.87, 0.94, 0.76 ) ->
            "green"

        ( 0.76, 0.56, 0.03 ) ->
            "yellow"

        ( 0.95, 0.7, 0.04 ) ->
            "yellow"

        ( 1.0, 0.82, 0.33 ) ->
            "yellow"

        ( 1.0, 0.89, 0.6 ) ->
            "yellow"

        ( 1.0, 0.95, 0.8 ) ->
            "yellow"

        ( 0.76, 0.32, 0.0 ) ->
            "orange"

        ( 0.95, 0.4, 0.0 ) ->
            "orange"

        ( 1.0, 0.56, 0.24 ) ->
            "orange"

        ( 1.0, 0.74, 0.54 ) ->
            "orange"

        ( 1.0, 0.91, 0.84 ) ->
            "orange"

        ( 0.71, 0.22, 0.22 ) ->
            "red"

        ( 0.88, 0.28, 0.28 ) ->
            "red"

        ( 1.0, 0.41, 0.41 ) ->
            "red"

        ( 1.0, 0.64, 0.64 ) ->
            "red"

        ( 1.0, 0.84, 0.84 ) ->
            "red"

        ( 0.45, 0.24, 0.58 ) ->
            "purple"

        ( 0.57, 0.31, 0.72 ) ->
            "purple"

        ( 0.8, 0.49, 0.93 ) ->
            "purple"

        ( 0.88, 0.7, 0.96 ) ->
            "purple"

        ( 0.97, 0.93, 1.0 ) ->
            "purple"

        ( 0.04, 0.33, 0.61 ) ->
            "blue"

        ( 0.05, 0.41, 0.76 ) ->
            "blue"

        ( 0.28, 0.56, 0.84 ) ->
            "blue"

        ( 0.57, 0.74, 0.91 ) ->
            "blue"

        ( 0.88, 0.94, 1.0 ) ->
            "blue"

        ( 0.1, 0.1, 0.1 ) ->
            "grey"

        ( 0.2, 0.2, 0.2 ) ->
            "grey"

        ( 0.3, 0.3, 0.3 ) ->
            "grey"

        ( 0.4, 0.4, 0.4 ) ->
            "grey"

        ( 0.5, 0.5, 0.5 ) ->
            "grey"

        ( 0.6, 0.6, 0.6 ) ->
            "grey"

        ( 0.7, 0.7, 0.7 ) ->
            "grey"

        ( 0.8, 0.8, 0.8 ) ->
            "grey"

        ( 0.9, 0.9, 0.9 ) ->
            "grey"

        _ ->
            "unknown"
