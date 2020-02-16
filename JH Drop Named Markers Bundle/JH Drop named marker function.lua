--[[
	@description JH Drop named marker
	@author John Harkins
	@version 1.0
	@about
		Quite simply drops a marker with a predefined name.
		Customize the names by opening a script and updating the value that name= is set with.
		For example make a copy of a script, update this code in the script file with the name you want to give your marker, rename the script so it makes sense to you, load it in to the actions list, give it a keystroke and then just just play your project and drop meaningful markers.
		
		--
		CUSTOM MARKER NAME HERE
		--
		local name = "Bridge"
		--
		
]]--

function Insert_Marker_Custom_Name(name)
  reaper.Undo_BeginBlock()
  cursor_pos = reaper.GetCursorPosition()
  play_pos = reaper.GetPlayPosition()
  marker_index, num_markersOut, num_regionsOut = reaper.CountProjectMarkers( 0 )
  reaper.AddProjectMarker( 0, 0, play_pos, 0, name, marker_index+1 )
  reaper.Undo_EndBlock("Insert_Marker_Custom_Name", 0)
  reaper.UpdateArrange()
end
