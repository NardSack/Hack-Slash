// Inherit the parent event (parent is obj_rbullet)
event_inherited();
//change properties
damage = 0.10;
dir = 0; 
spd = 10; //speed of bullet
xspd = 0;
yspd = 0;

//cleanup
maxDist = 400; //maximum distance bullet can travel
destroy = false;
enemyDestroy = false;
