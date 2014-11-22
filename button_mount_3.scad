module button_mount_3(){
module yet_another_quickfix(){
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
	
module front(){

	translate([+50,0,-25-6.35])
	rotate([-90,0,90])
		partThree();
}

difference(){
	rotate([0,15,0])
		front();

	translate([-243,-200/2,-200/2-10], center=true)
		cube([100*2, 100*2,100*2]);

	translate([-50,-200/2,-280], center=true)
		cube([100*2, 100*2,100*2]);
}
}

difference(){
	translate([0,0,60])
		yet_another_quickfix();

	translate([-500,-500,-100], center=true)
		cube([1000,1000,100]);
}
}