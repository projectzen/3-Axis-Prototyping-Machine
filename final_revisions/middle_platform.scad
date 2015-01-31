module middlePlatform(){

difference(){
	translate([0,0,panelHeight])
		cube([middlePlatform_X,middlePlatform_Y,(6.25*2)], center=true);

//mounting holes
	translate([-feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);	


//grooves for side panels
	translate([(middlePlatform_X/2)-thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y+1,panelHeight], center=true);
	
	translate([(-middlePlatform_X/2)+thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y-thickness*4+1,panelHeight], center=true);


sidePanel_right();
sidePanel_left();

translate([-1,0,0])
sidePanel_left();


translate([-1,0,0])
sidePanel_right();
}
}