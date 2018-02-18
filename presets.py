from common import rgb2hex, hex2rgb


R = 0
G = 1
B = 2
A = 3


def blue_to_green(r, g, b, a):
    return r, b, g, a


def blue_to_red(r, g, b, a):
    return b, g, r, a


def blue_to_purple(r, g, b, a):
    return g, r, b, a


def blue_to_light_green(r, g, b, a):
    return g, b, r, a


def blue_to_pink(r, g, b, a):
    return b, r, g, a


def invert(r, g, b, a):
    r = 255 - int(r)
    g = 255 - int(g)
    b = 255 - int(b)
    return r, g, b, a


def test(pixel):
    return blue_to_purple(
        *blue_to_red(*invert(*pixel))
    )


def only_blue_to_pink(r, g, b, a):
    if b > r and b > g:
        r, b = b, r
        g, b = b, g
    return r, g, b, a


def replace_colors(pixel, replacements):
    pixel_hex = rgb2hex(pixel)
    for name, (condition, replacement) in replacements.items():
        if pixel_hex == condition:
            r, g, b = hex2rgb(replacement)
            return r, g, b, pixel[A]
    # return pixel


def out(pixel):
    replacements = {
        "SELECTION_BG": ("#5294e2", "#4D69E2"),
    }
    new_pixel = replace_colors(pixel, replacements)
    if new_pixel:
        return new_pixel
    else:
        # darker:
        r, g, b, a = pixel
        return (r - 38, g - 41, b - 51, a)
