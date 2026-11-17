#!/bin/sh
# Compose the macOS, Windows and Linux screenshots into images/platforms-*.png,
# one picture for each language and theme.
#
#   scripts/platforms.sh [workspace]
#
# The workspace holds rinflow-macos, rinflow-windows and rinflow-linux side by
# side; it defaults to the directory this repository is in. Run it again when
# a screenshot in one of them changes. Needs ImageMagick 7.
set -eu

here=$(cd "$(dirname "$0")/.." && pwd)
ws=${1:-$here/..}

W=2400          # canvas width
H=660           # height of every window, shadows not counted
GAP=56          # between windows
TOP=56          # above the windows
LABEL=52        # from a window's bottom edge to the top of its label
BOTTOM=80       # from the top of the labels to the bottom of the canvas
SIZE=40         # label text
FONT=${FONT:-/System/Library/Fonts/SFNS.ttf}

shot() { echo "$ws/$1/docs/images/devices-$lang-$theme.png"; }

# The window inside a screenshot, without its shadow, as "w h x y".
body() {
	magick "$1" -alpha extract -threshold 90% -format '%@' info: | tr 'x+' '  '
}

# place <label> <repository> [shadow]
# Draw one window with its left edge at $x and move $x past it. "shadow" is
# for a screenshot that has none of its own.
place() {
	name=$1 img=$(shot "$2") shadow=${3-}
	set -- $(body "$img")
	w=$(($1 * H / $2))
	# Scale the whole screenshot so that its window is H tall, and shift it
	# by the scaled margin so that the window, not the picture, starts at $x.
	pct=$(awk "BEGIN { print 100 * $H / $2 }")
	ox=$((x - $3 * H / $2))
	oy=$((TOP - $4 * H / $2))
	if [ -n "$shadow" ]; then
		# -shadow pads the picture by twice its sigma on every side.
		magick "$out" \
			'(' "$img" -resize "$pct%" -background black -shadow 28x26+0+0 ')' \
			-geometry "+$((ox - 52))+$((oy - 52 + 20))" -composite "PNG32:$out"
	fi
	tw=$(magick -font "$FONT" -pointsize $SIZE "label:$name" -format '%w' info:)
	magick "$out" \
		'(' "$img" -resize "$pct%" ')' -geometry "+$ox+$oy" -composite \
		-font "$FONT" -pointsize $SIZE -fill "$ink" -gravity NorthWest \
		-annotate "+$((x + (w - tw) / 2))+$((TOP + H + LABEL))" "$name" \
		-define png:compression-level=9 "PNG32:$out"
	x=$((x + w + GAP))
}

# compose <lang> <theme>
compose() {
	lang=$1 theme=$2
	out=$here/images/platforms-$lang-$theme.png
	case $theme in
	light) ink='#59636e' ;;
	dark)  ink='#9198a1' ;;
	esac

	# Centre the row: the three windows at height H, and two gaps.
	total=0
	for repo in rinflow-macos rinflow-windows rinflow-linux; do
		set -- $(body "$(shot $repo)")
		total=$((total + $1 * H / $2))
	done
	x=$(((W - total - 2 * GAP) / 2))

	# PNG32 everywhere: left to choose, ImageMagick writes the empty canvas
	# as greyscale, and what is drawn on it next loses its colour.
	magick -size "${W}x$((TOP + H + LABEL + BOTTOM))" xc:none "PNG32:$out"
	place macOS rinflow-macos
	place Windows rinflow-windows
	place Linux rinflow-linux shadow
}

for lang in en-US zh-CN ja-JP; do
	for theme in light dark; do
		compose $lang $theme
	done
done
