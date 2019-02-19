module ES.UI.Color exposing (Color, black, blue, green, grey, orange, purple, red, teal, transparent, white, yellow)

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
    { dark = Color.rgb255 16 128 139 -- #10808B
    , base = Color.rgb255 20 161 174 -- #14A1AE
    , light = Color.rgb255 0 195 201 -- #00C3C9
    , lighter = Color.rgb255 102 219 223 -- #66DBDF
    , lightest = Color.rgb255 218 245 247 -- #DAF5F7
    }


green =
    { dark = Color.rgb255 83 139 0 -- #538B00
    , base = Color.rgb255 104 174 0 -- #68AE00
    , light = Color.rgb255 147 213 49 -- #93D531
    , lighter = Color.rgb255 190 230 131 -- #BEE683
    , lightest = Color.rgb255 221 240 193 -- #DDF0C1
    }


yellow =
    { dark = Color.rgb255 193 143 8 -- #C18F08
    , base = Color.rgb255 242 179 11 -- #F2B30B
    , light = Color.rgb255 255 208 84 -- #FFD054
    , lighter = Color.rgb255 255 227 152 -- #FFE398
    , lightest = Color.rgb255 255 241 205 -- #FFF1CD
    }


orange =
    { dark = Color.rgb255 194 82 0 -- #C25200
    , base = Color.rgb255 243 103 0 -- #F36700
    , light = Color.rgb255 255 143 60 -- #FF8F3C
    , lighter = Color.rgb255 255 188 138 -- #FFBC8A
    , lightest = Color.rgb255 255 232 214 -- #FFE8D6
    }


red =
    { dark = Color.rgb255 180 56 56 -- #B43838
    , base = Color.rgb255 225 71 71 -- #E14747
    , light = Color.rgb255 255 104 104 -- #FF6868
    , lighter = Color.rgb255 255 164 164 -- #FFA4A4
    , lightest = Color.rgb255 255 215 215 -- #FFD7D7
    }


purple =
    { dark = Color.rgb255 116 62 147 -- #743E93
    , base = Color.rgb255 145 78 184 -- #914EB8
    , light = Color.rgb255 204 126 238 -- #CC7EEE
    , lighter = Color.rgb255 224 178 245 -- #E0B2F5
    , lightest = Color.rgb255 248 237 255 -- #F8EDFF
    }


blue =
    { dark = Color.rgb255 10 83 155 -- #0A539B
    , base = Color.rgb255 13 104 194 -- #0D68C2
    , light = Color.rgb255 71 144 215 -- #4790D7
    , lighter = Color.rgb255 145 188 231 -- #91BCE7
    , lightest = Color.rgb255 224 240 255 -- #E0F0FF
    }


grey =
    { x10 = Color.rgb255 229 229 229 -- #E5E5E5
    , x20 = Color.rgb255 204 204 204 -- #CCCCCC
    , x30 = Color.rgb255 179 179 179 -- #B3B3B3
    , x40 = Color.rgb255 153 153 153 -- #999999
    , x50 = Color.rgb255 128 128 128 -- #808080
    , x60 = Color.rgb255 102 102 102 -- #666666
    , x70 = Color.rgb255 77 77 77 -- #4D4D4D
    , x80 = Color.rgb255 51 51 51 -- #333333
    , x90 = Color.rgb255 26 26 26 -- #1A1A1A
    }
