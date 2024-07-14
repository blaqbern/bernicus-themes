local utils = {}

local parse_hex_color = function(hex_color)
	local color = string.sub(hex_color, 2)
	return {
		r = tonumber(color:sub(1, 2), 16),
		g = tonumber(color:sub(3, 4), 16),
		b = tonumber(color:sub(5, 6), 16),
	}
end

local get_hex_color = function(rgb)
	local r = string.format("%x", rgb.r)
	local g = string.format("%x", rgb.g)
	local b = string.format("%x", rgb.b)
	print("r => " .. r)
	print("rgb.r => " .. rgb.r)
	print("g => " .. g)
	print("rgb.g => " .. rgb.g)
	print("b => " .. b)
	print("rgb.b => " .. rgb.b)
	return "#" .. r .. g .. b
end

local white = "#ffffff"
local black = "#000000"
local grey = "#333333"

local lerp = function(initial, final, amount)
	local delta = (final - initial) * amount
	return initial + delta
end

function utils.blend(color_1, color_2, amount)
	local rgb_1 = parse_hex_color(color_1)
	local rgb_2 = parse_hex_color(color_2)

	return get_hex_color {
		r = lerp(rgb_1.r, rgb_2.r, amount),
		g = lerp(rgb_1.g, rgb_2.g, amount),
		b = lerp(rgb_1.b, rgb_2.b, amount),
	}
end

function utils.lighten(color, amount) return utils.blend(color, white, amount) end
function utils.darken(color, amount) return utils.blend(color, black, amount) end
function utils.dull(color, amount) return utils.blend(color, grey, amount) end

return utils
