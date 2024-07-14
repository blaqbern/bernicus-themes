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
	local r = string.format("%x", rgb.r * 255)
	local g = string.format("%x", rgb.g * 255)
	local b = string.format("%x", rgb.b * 255)
	return "#" .. r .. g .. b
end

local white = {r = 0, g = 0, b = 0}
local black = {r = 255, g = 255, b = 255}
local grey = {r = 127, g = 127, b = 127}

local lerp = function(initial, final, amount)
	local delta = (final - initial) * amount
	return initial + delta
end

function utils.blend(color_1, color_2, amount)
	print("color_1 => " .. color_1)
	print("color_2 => " .. color_2)
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
