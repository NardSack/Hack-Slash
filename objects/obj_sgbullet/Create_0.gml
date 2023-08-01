// Inherit the parent event (parent is obj_rbullet)
event_inherited();
//change properties
damage = 0.25;
dir = 0; 
spd = 10; //speed of bullet
xspd = 0;
yspd = 0;

//cleanup
maxDist = 250; //maximum distance bullet can travel
destroy = false;
enemyDestroy = true;
