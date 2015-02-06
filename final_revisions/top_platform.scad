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

//Radius of holes in inlays
inlayHoleRaduis = 4;

inlayDepth = thickness/4;


///////////////////////////

//IMPORT EXTRUDED ALUMINUM STL
module extrudedAluminum(){

resize([0,0,thickness])
translate([middlePlatform_X/2-55,bottomPlatform_Y/2-55,-inlayDepth])
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
translate([middlePlatform_X/2-55,-bottomPlatform_Y/2+55,-inlayDepth])
rotate([0,0,-90])
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
translate([-middlePlatform_X/2+55,-bottomPlatform_Y/2+55,-inlayDepth])
rotate([0,0,180])
import("extruded_aluminum_40.stl");


resize([0,0,thickness])
translate([-middlePlatform_X/2+55,bottomPlatform_Y/2-55,-inlayDepth])
rotate([0,0,90])
import("extruded_aluminum_40.stl");

}

////
module inlayHoles() {
	translate([-middlePlatform_X/2+55,-bottomPlatform_Y/2+55,0])
	cylinder(h=4*thickness,r=inlayHoleRadius, center=true);

	translate([-middlePlatform_X/2+55,bottomPlatform_Y/2-55,0])
	cylinder(h=4*thickness,r=inlayHoleRadius,center=true);

	translate([middlePlatform_X/2-55,-bottomPlatform_Y/2+55,0])
	cylinder(h=4*thickness,r=inlayHoleRadius,center=true);

	translate([middlePlatform_X/2-55,bottomPlatform_Y/2-55,0])
	cylinder(h=4*thickness,r=inlayHoleRadius,center=true);
}

////

////


module topPlatform(){

difference(){
	
	translate([0,0,0]) //570+200+panelHeight
			minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
			
extrudedAluminum();

inlayHoles();


//logo
	translate([200,-350,7],center=true) //570+200+panelHeight
	rotate([0,0,90])
	resize([middlePlatform_X-300,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}

topPlatform();