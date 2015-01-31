//use <leveling_feet.scad>
use <power_receptacle.scad>
use <nema17.scad>
use <thread_library.scad>
include <top_platform.scad>
include <bottom_platform.scad>
include <middle_platform.scad>
include <back_panel.scad>
include <front_panel.scad>
include <side_panels.scad>
include <nema_platform.scad>
include <actuators.scad>
/////////////////////
//DEFINED VARIABLES//
/////////////////////

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

topPlatform();


middlePlatform();



bottomPlatform();



frontPanel();



backPanel();


sidePanel_right();

sidePanel_left();




topBrackets();



bottomBrackets();

translate([0,0,665])
rotate([180,0,0])

zMotors();

//
//translate([6-70,22,70])
//rotate([0,0,-90])
//printHead();
//
//translate([-70,0,70])
//extruder();


extrudedAluminum();




///////////////////////////////////////////////////////////////////////////////////////






translate([-middlePlatform_X/12+35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0+90+200])
rotate([0,0,-15])
import("10mm_linear_bearing.stl");

translate([-middlePlatform_X/12+35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0+90+200])
rotate([0,0,180+15])
import("10mm_linear_bearing.stl");



module bearingBracketsLeft(){
difference(){

	translate([-8+35-102+30,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15,0+90+200])
 	rotate([0,0,-15])
	cube([150,thickness,48], center=true);
 	
	translate([-8+35-102+30-50,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-8-25-3,0+90+200])
	cube([75,50,50], center=true);
			
	translate([-middlePlatform_X/12+35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0+90+200])
rotate([0,0,-15])
import("10mm_linear_bearing.stl");		
}
}

module bearingBrackets(){
difference(){

	translate([-8+35-102+30,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15,0+90+200])
 	rotate([0,0,180+15])
	cube([150,thickness,48], center=true);
 	
	translate([-8+35-102+30-50,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-8-25-3,0+90+200])
	cube([75,50,50], center=true);
	
	translate([-middlePlatform_X/12+35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0+90+200])
rotate([0,0,180+15])
import("10mm_linear_bearing.stl");	
}




translate([-middlePlatform_X/12-35+20+20-30,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+8,0+90+200])
	cube([20,thickness,40], center=true);


difference(){

translate([-8+35-102+30-50,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+8,0+90+200])
	cube([75,thickness,48], center=true);


translate([-8+35-102+30-50-58,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+8,0+90+200])
	cube([75,thickness*2,50], center=true);
 	


}
}


difference(){

translate([-8+35-102+30-50,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-8,0+90+200])
	cube([75,thickness,48], center=true);


translate([-8+35-102+80,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15,0+90+200])
 	rotate([0,0,180+15])
	cube([140,50,50], center=true);

translate([-8+6-102,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-19+25,0+90+200])
rotate([90,0,0])
cylinder(r=13, h=50, $fn=50);
}

difference(){
bearingBrackets();



translate([-8+35-102+30,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-29.1,0+90+200])
 	rotate([0,0,180+15])
	cube([150,50,50], center=true);

translate([-8+6-102,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-19+25,0+90+200])
rotate([90,0,0])
cylinder(r=13, h=50, $fn=50);


translate([-8+35-102+30+97,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15,0+90+200])
 	
	cube([150,50,50], center=true);

}


//left
				translate([-middlePlatform_X/12-35+20-20,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+8+thickness/2,0+90+200+20])
				rotate([90,0,0])
				trapezoid(40, 20, 30,thickness);


				translate([-middlePlatform_X/12-35+20+20,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+8+thickness/2,0+90+200-20])
				rotate([90,180,0])
				trapezoid(40, 20, 30,thickness);

				translate([-middlePlatform_X/12-35+20-20,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-8+thickness/2,0+90+200+20])
				rotate([90,0,0])
				trapezoid(40, 20, 30,thickness);


				translate([-middlePlatform_X/12-35+20+20,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-15-8+thickness/2,0+90+200-20])
				rotate([90,180,0])
				trapezoid(40, 20, 30,thickness);
			

//nema X-axis


translate([-8+6-102,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-19,0+90+200])
rotate([0,90,-90])
nema17();











// Vertical Smooth Rod
translate([-middlePlatform_X/12+35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0])
cylinder(r=5, h=panelHeight+570+200+(6.25*2)/2-(6.25*2), $fn=50);

translate([-middlePlatform_X/12+35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0])
cylinder(r=5, h=panelHeight+570+200+(6.25*2)/2-(6.25*2), $fn=50);


translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,(6.25*2)/2])
import("acme_end_cap.stl");

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,(6.25*2)/2])
import("acme_end_cap.stl");

translate([middlePlatform_X/2-thickness-1,200,panelHeight/2 ], center=true)
rotate([0,0,-90])
import("20x4_lcd.stl");



translate([-middlePlatform_X/12-35+20,0,200+90-35])
rotate([90,0,0])
cylinder(r=4, h=725, $fn=50, center=true);

translate([-middlePlatform_X/12-35+20,0,200+90+35])
rotate([90,0,0])
cylinder(r=4, h=725, $fn=50, center=true);




	
module trapezoid(width_base, width_top,height,thickness) {
linear_extrude(height = thickness) 
polygon(points=[[0,0],[width_base,0],[width_base-(width_base-width_top)/2,height],[(width_base-width_top)/2,height]], paths=[[0,1,2,3]]);
}

module bearingPlate(){



				translate([-middlePlatform_X/12-37+35,0,200+90+thickness/4+12+5+thickness/2])
				rotate([0,0,0])
 				cube([35,45,40], center=true);
				




difference(){
minkowski() {
				translate([-middlePlatform_X/12-37+35,0,200+90])
				rotate([0,0,0])
 				cube([110,40,thickness/2], center=true);
				cylinder(r=3,h=(thickness/2), $fn=50);
}

translate([(-middlePlatform_X/12)-37+70,25,200+90- 20])
cylinder(r=4,h=(50), $fn=50);


translate([(-middlePlatform_X/12)-37,25,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

translate([(-middlePlatform_X/12)-37+70,25-40-10,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

translate([(-middlePlatform_X/12)-37,25-40-10,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

}





difference(){

minkowski() {
translate([(-middlePlatform_X/12)-37+15+35,10,200+90- thickness/4])
resize([40,20,thickness/2])
trapezoid(80, 20, 35,thickness);
cylinder(r=3,h=(thickness/2), $fn=50);
}

translate([(-middlePlatform_X/12)-37+70,25,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

}


difference(){
minkowski() {
translate([(-middlePlatform_X/12)-37+15-35,10,200+90- thickness/4])
resize([40,20,thickness/2])
trapezoid(80, 20, 35,thickness);
cylinder(r=3,h=(thickness/2), $fn=50);
}


translate([(-middlePlatform_X/12)-37,25,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

}

difference(){	
minkowski() {
translate([(-middlePlatform_X/12)-37+15+70+5,-10,200+90- thickness/4])
resize([40,20,thickness/2])
rotate([0,0,180])
trapezoid(80, 20, 35,thickness);
cylinder(r=3,h=(thickness/2), $fn=50);
}


translate([(-middlePlatform_X/12)-37+70,25-40-10,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

}


difference(){
minkowski() {
translate([(-middlePlatform_X/12)-37+15+0+5,-10,200+90- thickness/4])
resize([40,20,thickness/2])
rotate([0,0,180])
trapezoid(80, 20, 35,thickness);
cylinder(r=3,h=(thickness/2), $fn=50);
}

translate([(-middlePlatform_X/12)-37,25-40-10,200+90- 20])
cylinder(r=4,h=(50), $fn=50);

}
}

difference(){

translate([290-middlePlatform_X/12-37+35+3,0,375.5])
rotate([0,-90,0])
bearingPlate();

translate([-8+6-102,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-19+25-60,0+90+200])
rotate([90,0,0])
cylinder(r=7, h=670, $fn=50);

}



translate([-middlePlatform_X/12-35+20,0,200+90-35])
rotate([0,90,-90])
import("8mm_linear_bearing.stl");


translate([-middlePlatform_X/12-35+20,0,200+90+35])
rotate([0,90,-90])
import("8mm_linear_bearing.stl");


//
//module printHead(){
//
//
//
//
//
//translate([0,0,250-125])
//rotate([90,0,0])
//import("pico.stl");
//
//translate([0,0-3,250-8.5-125])
//rotate([90,0,0])
//import("pico_nozzle.stl");
//
//
//
//picoFan();
//
//module picoFan(){
//
//translate([8,23,148])
//rotate([180,0,90])
//import("40mmpicofan.stl");
//
//translate([8,17,148])
//rotate([180,0,90])
//import("bolt_on_clip.stl");
//
//}
//}
//
//
//module extruder(){
//
//translate([0,5,200])
//rotate([0,-90,180])
//import("extruder.stl");
//
//
//translate([-30,0,220])
//rotate([0,90,0])
//nema17();
//}


module extrudedAluminum(){

resize([0,0,panelHeight+570+200+5])
translate([middlePlatform_X/2-55,bottomPlatform_Y/2-55,50])
import("extruded_aluminum_40.stl");


resize([0,0,panelHeight+570+200+5])
translate([middlePlatform_X/2-55,-bottomPlatform_Y/2+55,50])
rotate([0,0,-90])
import("extruded_aluminum_40.stl");


resize([0,0,panelHeight+570+200+5])
translate([-middlePlatform_X/2+55,-bottomPlatform_Y/2+55,50])
rotate([0,0,180])
import("extruded_aluminum_40.stl");


resize([0,0,panelHeight+570+200+5])
translate([-middlePlatform_X/2+55,bottomPlatform_Y/2-55,50])
rotate([0,0,90])
import("extruded_aluminum_40.stl");

}