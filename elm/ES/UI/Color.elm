module ES.UI.Color exposing (blue, green, grey, orange, purple, red, teal, yellow)

import Color


teal =
    { dark = Color.rgb 0.06 0.5 0.55
    , base = Color.rgb 0.08 0.63 0.68
    , light = Color.rgb 0.0 0.76 0.79
    , lighter = Color.rgb 0.4 0.86 0.87
    , lightest = Color.rgb 0.85 0.96 0.5
    }


green =
    { dark = Color.rgb 0.33 0.55 0.0
    , base = Color.rgb 0.41 0.68 0.0
    , light = Color.rgb 0.58 0.84 0.19
    , lighter = Color.rgb 0.75 0.9 0.51
    , lightest = Color.rgb 0.87 0.94 0.76
    }


yellow =
    { dark = Color.rgb 0.76 0.56 0.03
    , base = Color.rgb 0.95 0.7 0.04
    , light = Color.rgb 1.0 0.82 0.33
    , lighter = Color.rgb 1.0 0.89 0.6
    , lightest = Color.rgb 1.0 0.95 0.8
    }


orange =
    { dark = Color.rgb 0.76 0.32 0.0
    , base = Color.rgb 0.95 0.4 0.0
    , light = Color.rgb 1.0 0.56 0.24
    , lighter = Color.rgb 1.0 0.74 0.54
    , lightest = Color.rgb 1.0 0.91 0.84
    }


red =
    { dark = Color.rgb 0.71 0.22 0.22
    , base = Color.rgb 0.88 0.28 0.28
    , light = Color.rgb 1.0 0.41 0.41
    , lighter = Color.rgb 1.0 0.64 0.64
    , lightest = Color.rgb 1.0 0.84 0.84
    }


purple =
    { dark = Color.rgb 0.45 0.24 0.58
    , base = Color.rgb 0.57 0.31 0.72
    , light = Color.rgb 0.8 0.49 0.93
    , lighter = Color.rgb 0.88 0.7 0.96
    , lightest = Color.rgb 0.97 0.93 1.0
    }


blue =
    { dark = Color.rgb 0.04 0.33 0.61
    , base = Color.rgb 0.05 0.41 0.76
    , light = Color.rgb 0.28 0.56 0.84
    , lighter = Color.rgb 0.57 0.74 0.91
    , lightest = Color.rgb 0.88 0.94 1.0
    }


grey =
    { x90 = Color.rgb 0.1 0.1 0.1
    , x80 = Color.rgb 0.2 0.2 0.2
    , x70 = Color.rgb 0.3 0.3 0.3
    , x60 = Color.rgb 0.4 0.4 0.4
    , x50 = Color.rgb 0.5 0.5 0.5
    , x40 = Color.rgb 0.6 0.6 0.6
    , x30 = Color.rgb 0.7 0.7 0.7
    , x20 = Color.rgb 0.8 0.8 0.8
    , x10 = Color.rgb 0.9 0.9 0.9
    }
