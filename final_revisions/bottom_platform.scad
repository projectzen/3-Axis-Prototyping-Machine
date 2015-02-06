include <side_panels.scad>
include <front_panel.scad>
include <back_panel.scad>
/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.25;

//Depth of inlays in aluminum
inlayDepth=6.25/6;

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

//Radius of inlay holes
inlayHoleRadius=4;


feetOffset=15;
feetCoordinates_X=middlePlatform_X/2-feetOffset;
feetCoordinates_Y=450-feetOffset;
feetRadius=4.5;
feetHoleOffset=0.5;

middlePlatform_Y=600+thickness*4;

///////////////////////////

//IMPORT EXTRUDED ALUMINUM STL
module extrudedAluminum(){

resize([0,0,thickness])
//the z-axis determines the amount subtracted from the aluminum plate 
translate([middlePlatform_X/2-55,bottomPlatform_Y/2-55,+inlayDepth]) 
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
//the z-axis determines the amount subtracted from the aluminum plate 
translate([middlePlatform_X/2-55,-bottomPlatform_Y/2+55,+inlayDepth])
rotate([0,0,-90])
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
//the z-axis determines the amount subtracted from the aluminum plate 
translate([-middlePlatform_X/2+55,-bottomPlatform_Y/2+55,+inlayDepth])
rotate([0,0,180])
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
//the z-axis determines the amount subtracted from the aluminum plate 
translate([-middlePlatform_X/2+55,bottomPlatform_Y/2-55,+inlayDepth])
rotate([0,0,90])
import("extruded_aluminum_40.stl");

}

////

module inlayHoles() {
	translate([0,bottomPlatform_Y/2-147,0])
	cylinder(h=3*thickness,r=inlayHoleRadius, center=true);

	translate([0,-bottomPlatform_Y/2+147,0])
	cylinder(h=3*thickness,r=inlayHoleRadius,center=true);

	translate([-middlePlatform_X/2+3,0,0])
	cylinder(h=3*thickness,r=inlayHoleRadius,center=true);

	translate([middlePlatform_X/2-3,0,0])
	cylinder(h=3*thickness,r=inlayHoleRadius,center=true);
}

////

module bottomPlatform(){

difference(){
	
rotate([0,180,0])
minkowski() {
cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
	
	
	
	
sidePanel_right();
sidePanel_left();
frontPanel();
backPanel();
extrudedAluminum();
inlayHoles();

}
}
inlayHoles();
bottomPlatform();