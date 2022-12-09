-- AdiBags Vendor items - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

-- Filter info
db.Filters = {
	["Vendor_Reagents"] = {
		uiName = Expansion .. " Vendor Reagents",
		uiDesc = "Reagents from vendors used in " .. Expansion,
		title = "Vendor",
		items = {
			-- ID    = true,    --Item name
			[191474] = true, -- Draconic Vial
			[197861] = true, -- Fleeting Philosopher's Stone
			[194784] = true, -- Glittering Parchment
			[38682]  = true, -- Enchanting Vellum
			[198615] = true, -- Pentagold Seal
			[197752] = true, -- Conveniently Packaged Ingredients
			[197749] = true, -- Ohn'ahran Potato
			[197750] = true, -- Three-Cheese Blend
			[197751] = true, -- Pastry packets
			[197753] = true, -- Thaldraszian Cocoa Powder
		}
	}
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
