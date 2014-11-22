

	module assembled(){
////////////////////////////////////
partOne();
////////////////////////////////////
translate([0,-50-6.35,-25-6.35])
rotate([-90,0,0])
partTwo();
//////////////////////////////////////

translate([0,50,-25-6.35])
rotate([-90,0,0])
partTwo();


//////////////////////////////////////
translate([+50,0,-25-6.35])
rotate([-90,0,90])
partThree();

//////////////////////////////////////
}



difference(){
rotate([0,15,0])
assembled();


translate([-243,-200/2,-200/2-10], center=true)
cube([100*2, 100*2,100*2]);

translate([-50,-200/2,-280], center=true)
cube([100*2, 100*2,100*2]);

}



///////////////////////////////////////////////////////////////////////////
module partOne(){
	translate([-6.35/2+25-6.35,-50+-6.35,0], center=true)
		cube([10,6.35,6.35]);
	
	translate([-6.35/2-25,-50+-6.35,0], center=true)
		cube([10,6.35,6.35]);

	translate([-6.35/2+25-6.35,50,0], center=true)
		cube([10,6.35,6.35]);

	translate([-6.35/2-25,50,0], center=true)
		cube([10,6.35,6.35]);

	translate([50-6.35,-6.35/2-25,0], center=true)
		cube([6.35,10,6.35]);

	translate([50-6.35,-6.35/2+25,0], center=true)
		cube([6.35,10,6.35]);

difference(){
	translate([-50,-50,0], center=true)
		cube([100,100,6.35]);

	translate([0,0,-6.35], center=true)
		cylinder(r=22, h=20);
	
	translate([50-6.35,-50-1,-1], center=true)
		cube([100,100+2,6.35+2]);
}
}
/////////////////////////////////////////////////////////////////////////
module partTwo(){

difference(){
	translate([-50,-50,0], center=true)
		cube([100,110,6.35]);

	translate([-6.35/2+25-6.35,-50+6.35*2,-1], center=true)
		cube([10,6.35,6.35+2]);

	translate([-6.35/2-25,-50+6.35*2,-1], center=true)
		cube([10,6.35,6.35+2]);
}
}
/////////////////////////////////////////////////////////////////////////
module partThree(){

difference(){
	translate([-50,-50,0], center=true)
		cube([100,110,6.35]);

	translate([-6.35/2+25,-50+6.35*2,-1], center=true)
		cube([10,6.35,6.35+2]);

	translate([-6.35/2-25,-50+6.35*2,-1], center=true)
		cube([10,6.35,6.35+2]);
}
}
///////////////////////////////////////////////////////////////////////////

	
