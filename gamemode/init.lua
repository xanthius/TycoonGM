include('shared.lua');

AddCSLuaFile("cl_init.lua");
AddCSLuaFile("shared.lua");

-- Settings:
	MaxTeamSize = 2;

function GM:PlayerInitialSpawn(client)
	for i=1,3 do
		if team.NumPlayers( i ) < MaxTeamSize then
			client:SetTeam(i);
			client:SetModel( "models/player/barney.mdl" )
			client:SetPlayerColor(Vector((team.GetColor(i).r)/255, (team.GetColor(i).g)/255, (team.GetColor(i).b)/255));
			
			break;
		end;
	end;
end
function GM:PlayerLoadout(client)
	client:Give( "weapon_crowbar" )
end;