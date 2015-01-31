module bottomPlatform(){

difference(){
	minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
	//mounting holes
	translate([-feetCoordinates,-feetCoordinates,0]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);

	
	translate([feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);	

	//inlay for panels
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y-thickness*2+1,panelHeight], center=true);
	
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y+1,panelHeight], center=true);
	
	
sidePanel_right();
sidePanel_left();
extrudedAluminum();

}
}