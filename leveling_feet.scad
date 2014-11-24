use <threads.scad>

module levelingFeet(){
	//metric_thread(9, 1, 50);

	cylinder(r=4.5, h=50, $fn=100)
	
difference(){
	
	translate([0,0,50], $fn=100)
		cylinder(r=4, h=6);

	translate([0,-10,54])
		cube ([1,20,3]);
}

module pad(){
	
difference(){

	cylinder(r=15, h=1);

	translate([0,0,-1])
		cylinder(r=11, h=3);
}

	translate([0,0,1])
		cylinder(h=3.5, r1=11, r2=6, $fn=100);

	cylinder(h=1, r=11);
}

	translate([0,0,-3])
		pad();
}

levelingFeet();