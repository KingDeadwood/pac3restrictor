local people = {
	["STEAM_0:0:12341111"] = true,
}

hook.Add("PrePACConfigApply", "PACRankRestrict", function(ply)
	if not people[ply:SteamID()] then
              return false,"Insufficient permission to use PAC."
        end
end)
hook.Add("PrePACEditorOpen", "PACRankRestrict", function(ply)
	if not people[ply:SteamID()] then
              return false,"Insufficient permission to use PAC."
        end
end)