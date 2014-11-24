
module powerReceptacle(){
difference(){
cube([100,28,18]);

	translate([0,29,-19])
		angle();


	translate([0,-21,0+1])
		angle2();
}

module angle(){

	translate([-75,0,0])
	rotate([45,0,0])
		cube([200,28,18]);
}

module angle2(){

	translate([-75,0,0])
	rotate([-45,0,0])
		cube([200,28,18]);
}
}
