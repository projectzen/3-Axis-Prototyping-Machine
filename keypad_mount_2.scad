module button_mount_2(){
module quickfix(){
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

module side(){
	translate([0,50,-25-6.35])
	rotate([-90,0,0])
		partTwo();
}

difference(){
	rotate([0,15,0])
		side();

	translate([-243,-200/2,-200/2-10], center=true)
		cube([100*2, 100*2,100*2]);

	translate([-50,-200/2,-280], center=true)
		cube([100*2, 100*2,100*2]);
}

difference(){
	translate([-60,50,-35])
		cube([30,6.35,40]);

	translate([-49,50-1,-55])
		cube([6.35,6.35+2,40]);
}

}
difference(){
	translate([0,0,60])
		quickfix();

	translate([-500,0,-100], center=true)
		cube([1000,1000,100]);

}
}