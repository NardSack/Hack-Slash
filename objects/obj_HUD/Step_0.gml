//get player hp
if instance_exists(obj_player)
{
	playerHp = obj_player.hp;
	playerMaxHp = obj_player.maxHp;
	
	playerEnergy = obj_player.energy;
	playerMaxEnergy = obj_player.maxEnergy;
}
else
{
	playerHp = 0;
	playerEnergy = 0;
}

if instance_exists(obj_dummy)
{
	enemyCount = instance_number(obj_dummy);
}
else
{
	enemyCount = 0;	
}

















