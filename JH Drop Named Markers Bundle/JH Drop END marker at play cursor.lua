--[[
 * ReaScript Name: JH Drop END marker at play cursor
 * Author: John Harkins
 * Licence: GPL v3
 * REAPER: 5.99
 * Extensions: None
 * Version: 1.0
--]]
 
--[[
 * Changelog:
 * v1.0 (2020-02-14)
 	+ Initial Release
--]]

package.path = debug.getinfo(1,"S").source:match[[^@?(.*[\/])[^\/]-$]] .."?.lua;".. package.path
require 'JH Drop named marker function'

--
-- CUSTOM MARKER NAME HERE
--
local name = "End"
--

Insert_Marker_Custom_Name(name)