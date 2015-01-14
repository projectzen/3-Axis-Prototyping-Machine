module topPlatform(X, Y, R){

difference(){
	
	minkowski() {
		cube([X-R,Y-R,12.7], center=true);
		cylinder(r=R,h=12.7);
	}
			

////mountng holes
//	translate([-feetCoordinates,-feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
//	
//	translate([-feetCoordinates,feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,-feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);	
//
//
//
//	threadedRods();

//logo
	translate([100,-185,4.5],center=true)
	rotate([0,0,90])
	resize([400,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}

