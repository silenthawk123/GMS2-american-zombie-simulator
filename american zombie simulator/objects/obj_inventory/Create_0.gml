/*
Inventory Items
0 = Pistol
1 = Knife
*/

globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 8;
globalvar gun;
gun = 0;
globalvar weapon;
weapon = 0;

for (i = 0; i < maxItems; i += 1)
{
	global.inventory[i] = -1
};
