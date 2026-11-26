#!/bin/sh

awk '
BEGIN {
    # CSS named colors: name hex
    colors = \
"aliceblue f0f8ff\nantiquewhite faebd7\naqua 00ffff\naquamarine 7fffd4\nazure f0ffff\n" \
"beige f5f5dc\nbisque ffe4c4\nblack 000000\nblanchedalmond ffebcd\nblue 0000ff\n" \
"blueviolet 8a2be2\nbrown a52a2a\nburlywood deb887\ncadetblue 5f9ea0\nchartreuse 7fff00\n" \
"chocolate d2691e\ncoral ff7f50\ncornflowerblue 6495ed\ncornsilk fff8dc\ncrimson dc143c\n" \
"cyan 00ffff\ndarkblue 00008b\ndarkcyan 008b8b\ndarkgoldenrod b8860b\ndarkgray a9a9a9\n" \
"darkgreen 006400\ndarkgrey a9a9a9\ndarkkhaki bdb76b\ndarkmagenta 8b008b\ndarkolivegreen 556b2f\n" \
"darkorange ff8c00\ndarkorchid 9932cc\ndarkred 8b0000\ndarksalmon e9967a\ndarkseagreen 8fbc8f\n" \
"darkslateblue 483d8b\ndarkslategray 2f4f4f\ndarkslategrey 2f4f4f\ndarkturquoise 00ced1\n" \
"darkviolet 9400d3\ndeeppink ff1493\ndeepskyblue 00bfff\ndimgray 696969\ndimgrey 696969\n" \
"dodgerblue 1e90ff\nfirebrick b22222\nfloralwhite fffaf0\nforestgreen 228b22\nfuchsia ff00ff\n" \
"gainsboro dcdcdc\nghostwhite f8f8ff\ngold ffd700\ngoldenrod daa520\ngray 808080\ngreen 008000\n" \
"greenyellow adff2f\ngrey 808080\nhoneydew f0fff0\nhotpink ff69b4\nindianred cd5c5c\n" \
"indigo 4b0082\nivory fffff0\nkhaki f0e68c\nlavender e6e6fa\nlavenderblush fff0f5\n" \
"lawngreen 7cfc00\nlemonchiffon fffacd\nlightblue add8e6\nlightcoral f08080\nlightcyan e0ffff\n" \
"lightgoldenrodyellow fafad2\nlightgray d3d3d3\nlightgreen 90ee90\nlightgrey d3d3d3\nlightpink ffb6c1\n" \
"lightsalmon ffa07a\nlightseagreen 20b2aa\nlightskyblue 87cefa\nlightslategray 778899\n" \
"lightslategrey 778899\nlightsteelblue b0c4de\nlightyellow ffffe0\nlime 00ff00\nlimegreen 32cd32\n" \
"linen faf0e6\nmagenta ff00ff\nmaroon 800000\nmediumaquamarine 66cdaa\nmediumblue 0000cd\n" \
"mediumorchid ba55d3\nmediumpurple 9370db\nmediumseagreen 3cb371\nmediumslateblue 7b68ee\n" \
"mediumspringgreen 00fa9a\nmediumturquoise 48d1cc\nmediumvioletred c71585\nmidnightblue 191970\n" \
"mintcream f5fffa\nmistyrose ffe4e1\nmoccasin ffe4b5\nnavajowhite ffdead\nnavy 000080\n" \
"oldlace fdf5e6\nolive 808000\nolivedrab 6b8e23\norange ffa500\norangered ff4500\norchid da70d6\n" \
"palegoldenrod eee8aa\npalegreen 98fb98\npaleturquoise afeeee\npalevioletred db7093\n" \
"papayawhip ffefd5\npeachpuff ffdab9\nperu cd853f\npink ffc0cb\nplum dda0dd\npowderblue b0e0e6\n" \
"purple 800080\nrebeccapurple 663399\nred ff0000\nrosybrown bc8f8f\nroyalblue 4169e1\n" \
"saddlebrown 8b4513\nsalmon fa8072\nsandybrown f4a460\nseagreen 2e8b57\nseashell fff5ee\n" \
"sienna a0522d\nsilver c0c0c0\nskyblue 87ceeb\nslateblue 6a5acd\nslategray 708090\n" \
"slategrey 708090\nsnow fffafa\nspringgreen 00ff7f\nsteelblue 4682b4\ntan d2b48c\nteal 008080\n" \
"thistle d8bfd8\ntomato ff6347\nturquoise 40e0d0\nviolet ee82ee\nwheat f5deb3\nwhite ffffff\n" \
"whitesmoke f5f5f5\nyellow ffff00\nyellowgreen 9acd32"

    n = split(colors, c, "\n")

    for (i = 1; i <= n; i++) {
        split(c[i], x)
        name[i] = x[1]
        hex[i] = x[2]
        r[i] = hx(substr(x[2], 1, 2))
        g[i] = hx(substr(x[2], 3, 2))
        b[i] = hx(substr(x[2], 5, 2))
        lum[i] = .2126 * lin(r[i]) + .7152 * lin(g[i]) + .0722 * lin(b[i])
    }
}

# Convert two hexadecimal digits to decimal.
function hx(s,    a,b) {
    a = index("0123456789abcdef", tolower(substr(s,1,1))) - 1
    b = index("0123456789abcdef", tolower(substr(s,2,1))) - 1
    return a * 16 + b
}

# sRGB -> relative luminance component.
function lin(x) {
    x /= 255
    return x <= .04045 ? x / 12.92 : ((x + .055) / 1.055) ^ 2.4
}

# Only lines containing:
#   --word: #hex
$0 ~ /--[[:alnum:]_-]+[[:space:]]*:[[:space:]]*#[[:xdigit:]]{6}/ {

    match($0, /#[[:xdigit:]]{6}/)
    h = substr($0, RSTART + 1, 6)

    R = hx(substr(h,1,2))
    G = hx(substr(h,3,2))
    B = hx(substr(h,5,2))

    L = .2126 * lin(R) + .7152 * lin(G) + .0722 * lin(B)

    closest = lighter = darker = ""
    cd = ld = dd = 1e30

    for (i = 1; i <= n; i++) {
        d = (R-r[i])^2 + (G-g[i])^2 + (B-b[i])^2

        if (d < cd) {
            cd = d
            closest = name[i]
        }

        if (lum[i] > L && d < ld) {
            ld = d
            lighter = name[i]
        }

        if (lum[i] < L && d < dd) {
            dd = d
            darker = name[i]
        }
    }

    printf "#%s\t%s\t%s\t%s\n", h, closest, lighter, darker
}
' "$1" | column -t

