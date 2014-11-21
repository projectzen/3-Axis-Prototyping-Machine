
module emergency_switch_mount (){

module mount (){
difference(){
	translate([0,0,0],center=true)
	cube([100,100,6.35]);

	translate([50,50,-1], center=true)
	cylinder(r=22,h=30, center=true, $fn=100);


}
	translate([15,100,0],center=true)
	cube([15,6.35+1,6.35]);

	translate([70,100,0],center=true)
	cube([15,6.35+1,6.35]);

	translate([15,-6.35-1,0],center=true)
	cube([15,6.35+1,6.35]);

	translate([70,-6.35-1,0],center=true)
	cube([15,6.35+1,6.350]);


difference(){
	
translate([0,100+6.35,-100+6.35*2],center=true)
	rotate([90,0,0])
	cube([100,100,6.35]);


translate([15,100,0],center=true)
	cube([15,50,6.35]);

	translate([70,100,0],center=true)
	cube([15,50,6.35]);

}


difference(){
	
translate([0,0,-100+6.35*2],center=true)
	rotate([90,0,0])
	cube([100,100,6.35]);


translate([15,100,0],center=true)
	cube([15,50,6.35]);

	translate([70,100,0],center=true)
	cube([15,50,6.35]);

}

}




difference(){
rotate([0,15,0])
mount();

translate([-46.7,-20,-150], center=true)
cube([50,140,200]);

translate([0,-50,-150])
cube([200,300,60]);

}


difference(){
translate([-6.35/2+.1,-6.35,-92.75])
cube([6.35,100+6.35*2,105]);


translate([-20,-50,-150])
cube([200,300,60]);
}


}
