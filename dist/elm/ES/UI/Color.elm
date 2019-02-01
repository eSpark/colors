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
    { dark = Color.rgb255 16 128 139 -- #10808b
    , base = Color.rgb255 20 161 174 -- #14a1ae
    , light = Color.rgb255 0 195 201 -- #00c3c9
    , lighter = Color.rgb255 102 219 223 -- #66dbdf
    , lightest = Color.rgb255 218 245 247 -- #daf5f7
    }


green =
    { dark = Color.rgb255 83 139 0 -- #538b00
    , base = Color.rgb255 104 174 0 -- #68ae00
    , light = Color.rgb255 147 213 49 -- #93d531
    , lighter = Color.rgb255 190 230 131 -- #bee683
    , lightest = Color.rgb255 221 240 193 -- #ddf0c1
    }


yellow =
    { dark = Color.rgb255 193 143 8 -- #c18f08
    , base = Color.rgb255 242 179 11 -- #f2b30b
    , light = Color.rgb255 255 208 84 -- #ffd054
    , lighter = Color.rgb255 255 227 152 -- #ffe398
    , lightest = Color.rgb255 255 241 205 -- #fff1cd
    }


orange =
    { dark = Color.rgb255 194 82 0 -- #c25200
    , base = Color.rgb255 243 103 0 -- #f36700
    , light = Color.rgb255 255 143 60 -- #ff8f3c
    , lighter = Color.rgb255 255 188 138 -- #ffbc8a
    , lightest = Color.rgb255 255 232 214 -- #ffe8d6
    }


red =
    { dark = Color.rgb255 180 56 56 -- #b43838
    , base = Color.rgb255 225 71 71 -- #e14747
    , light = Color.rgb255 255 104 104 -- #ff6868
    , lighter = Color.rgb255 255 164 164 -- #ffa4a4
    , lightest = Color.rgb255 255 215 215 -- #ffd7d7
    }


purple =
    { dark = Color.rgb255 116 62 147 -- #743e93
    , base = Color.rgb255 145 78 184 -- #914eb8
    , light = Color.rgb255 204 126 238 -- #cc7eee
    , lighter = Color.rgb255 224 178 245 -- #e0b2f5
    , lightest = Color.rgb255 248 237 255 -- #f8edff
    }


blue =
    { dark = Color.rgb255 10 83 155 -- #0a539b
    , base = Color.rgb255 13 104 194 -- #0d68c2
    , light = Color.rgb255 71 144 215 -- #4790d7
    , lighter = Color.rgb255 145 188 231 -- #91bce7
    , lightest = Color.rgb255 224 240 255 -- #e0f0ff
    }


grey =
    { x90 = Color.rgb255 26 26 26 -- #1a1a1a
    , x80 = Color.rgb255 51 51 51 -- #333333
    , x70 = Color.rgb255 77 77 77 -- #4d4d4d
    , x60 = Color.rgb255 102 102 102 -- #666666
    , x50 = Color.rgb255 128 128 128 -- #808080
    , x40 = Color.rgb255 153 153 153 -- #999999
    , x30 = Color.rgb255 179 179 179 -- #b3b3b3
    , x20 = Color.rgb255 204 204 204 -- #cccccc
    , x10 = Color.rgb255 229 229 229 -- #e5e5e5
    }
