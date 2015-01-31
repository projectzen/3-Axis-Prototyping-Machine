module topPlatform(){

difference(){
	
	translate([0,0,panelHeight+570+200])
			minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
			
extrudedAluminum();


//logo
	translate([200,-350,panelHeight+570+200+7],center=true)
	rotate([0,0,90])
	resize([middlePlatform_X-300,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}