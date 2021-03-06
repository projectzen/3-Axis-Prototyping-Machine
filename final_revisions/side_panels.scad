/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.25;

//panel height
panelHeight=101.6;

//rod radius
rodRadius=(6.25*2) / 2;


//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=420;

//cartesian plane coordinates where the leveling feet mount/pass through

bottomPlatform_Y=900;

//length and width
middlePlatform_X=1000;

//Radius of rounded edges
platformOffset=15;
;
///////////////////////////


module sidePanel_left(){
difference(){
	translate([0,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2])
		cube([middlePlatform_X,thickness,panelHeight], center=true);

	translate([middlePlatform_X/2+thickness/2,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2-2*(panelHeight/5)])
		cube([thickness+thickness+thickness,thickness+1,panelHeight/5+1], center=true);	


	translate([middlePlatform_X/2+thickness/2,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2])
		cube([thickness+thickness+thickness,thickness+1,panelHeight/5], center=true);	

	translate([middlePlatform_X/2+thickness/2,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2+2*(panelHeight/5)+1])
		cube([thickness+thickness+thickness,thickness+1,panelHeight/5+1], center=true);	
}
}
///////////////////////////////////////////////////////////////////////////////////////
module sidePanel_right(){
difference(){
	translate([0,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2])
		cube([middlePlatform_X,thickness,panelHeight], center=true);

	translate([middlePlatform_X/2+thickness/2,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2-2*(panelHeight/5)])
		cube([thickness+1,thickness+1,panelHeight/5+1], center=true);	


	translate([middlePlatform_X/2+thickness/2,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2])
		cube([thickness+1,thickness+1,panelHeight/5], center=true);	

	translate([middlePlatform_X/2+thickness/2,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2+2*(panelHeight/5)+1])
		cube([thickness+1,thickness+1,panelHeight/5+1], center=true);	
}
}

