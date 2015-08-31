/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_player","_time"];
{
	_player = _x select 1;
	_time = _player getVariable ["ExileLastLootSpawnTime", 0];
	if (_time + 60 < time) then
	{
		_player call ExileServer_system_lootManager_spawnLootForPlayer;
	};
}
forEach ExileSessions;
true