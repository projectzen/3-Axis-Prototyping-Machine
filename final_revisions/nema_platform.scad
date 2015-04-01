//use <leveling_feet.scad>
//use <power_receptacle.scad>
//use <nema17.scad>
//use <thread_library.scad>
//use <top_platform.scad>
//include <bottom_platform.scad>

/////////////////////
//DEFINED VARIABLES//
/////////////////////

translate([0,0,panelHeight+570+200])
topPlatform();

//
//translate([-middlePlatform_X/12+75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//









//thickness
thickness=6.25;







//panel height
panelHeight=101.6;

//rod radius
rodRadius=(6.25*2) / 2;


//outer radius of circular corners
circleRadius=50;

//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=420;

//cartesian plane coordinates where the leveling feet mount/pass through


bottomPlatform_Y=900;



//length and width
middlePlatform_X=1000;

//Radius of rounded edges
platformOffset=15;

feetOffset=15;
feetCoordinates_X=middlePlatform_X/2-feetOffset;
feetCoordinates_Y=450-feetOffset;
//leveling feet radius
feetRadius=4.5;
feetHoleOffset=0.5;

middlePlatform_Y=600+thickness*4;
///////////////////////////////////////////////////////////////////////////////////////

//topPlatform();


//middlePlatform();



//bottomPlatform();



//frontPanel();



//backPanel();


//sidePanel_right();

//sidePanel_left();








//
//translate([6-70,22,70])
//rotate([0,0,-90])
//printHead();
//
//translate([-70,0,70])
//extruder();


//extrudedAluminum();




///////////////////////////////////////////////////////////////////////////////////////


//
//
//translate([-middlePlatform_X/12+75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12+75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");
//
//translate([-middlePlatform_X/12-75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
//import("ss_standoff.stl");

difference(){
translate([75,0,-815])
nemaPlatformMount();


translate([75,0,-800])
cutOuts();

}





module cutOuts(){

translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)+125])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)+125])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12-35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2)+200, $fn=50);

translate([-middlePlatform_X/12-35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2)+200, $fn=50);
}



module nemaPlatformMount(){

minkowski() {
		translate([-middlePlatform_X/12,0,panelHeight+570+200-51-(6.25*2)+thickness/2])
 		cube([middlePlatform_X/4-20,bottomPlatform_Y-50-20,thickness/2], center=true);
 		cylinder(r=10,h=(thickness/2), center=false, $fn=100);
			}
}



 				



