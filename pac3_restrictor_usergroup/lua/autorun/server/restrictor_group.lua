-- add/change rank names here in the same format
local ranks = {
	["owner"] = true,
	["superadmin"] = true,
	["admin"] = true,
	["vip"] = true,
}

hook.Add("PrePACConfigApply", "PACRankRestrict", function(ply)
	if not ranks[ply:GetUserGroup()] then
              return false,"Insufficient rank to use PAC."
        end
end)
hook.Add("PrePACEditorOpen", "PACRankRestrict", function(ply)
	if not ranks[ply:GetUserGroup()] then
              return false,"Insufficient rank to use PAC."
        end
end)