use <switch_mount.scad>
use <button_mount_assembled.scad>
use <keypad_mount_assembled.scad>
//use <panel_bracket.scad>
//use <leveling_feet.scad>
use <power_receptacle.scad>
use <nema17.scad>
use <threads.scad>

/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.25;

//panel height
panelHeight=101.6;

//rod radius
rodRadius=(6.25*2) / 2;

//leveling feet radius
feetRadius=4.5;

//outer radius of circular corners
circleRadius=50;

//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=420;

//cartesian plane coordinates where the leveling feet mount/pass through

feetCoordinates_Y=450;

bottomPlatform_Y=900;



//length and width
middlePlatform_X=1000;

//Radius of rounded edges
platformOffset=15;

feetCoordinates=middlePlatform_X/2;

middlePlatform_Y=600+thickness*4;
///////////////////////////////////////////////////////////////////////////////////////

color("Gainsboro"){
topPlatform();
}

color("GhostWhite", a=100.0){
middlePlatform();
}

color("Gainsboro", a=1.0){
bottomPlatform();
}

//color("GhostWhite", a=1.0){
frontPanel();
//}

color("GhostWhite", a=1.0){
backPanel();
}

sidePanel_right();

sidePanel_left();

//threadedRods();

color("Black", a=1.0){
topBrackets();
}

color("Black", a=1.0){
bottomBrackets();
}
translate([0,0,665])
rotate([180,0,0])

zMotors();


translate([6-70,22,70])
rotate([0,0,-90])
printHead();

translate([-70,0,70])
extruder();



///////////////////////////////////////////////////////////////////////////////////////
module bottomPlatform(){

difference(){
	minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
	
	//holes for leveling legs//
	translate([-feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	//mounting holes
	translate([-feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
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
	
	threadedRods();

sidePanel_right();
sidePanel_left();




}


}
///////////////////////////////////////////////////////////////////////////////////////
module middlePlatform(){

difference(){
	translate([0,0,panelHeight])
		cube([middlePlatform_X,middlePlatform_Y,(6.25*2)], center=true);

//mountng holes
	translate([-feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);	


//inlay for panels
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y+1,panelHeight], center=true);
	
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness+1,middlePlatform_Y-thickness*2+1,panelHeight], center=true);


sidePanel_right();
sidePanel_left();


	threadedRods();
}
}
///////////////////////////////////////////////////////////////////////////////////////
module threadedRods(){
//rods
	translate([-rodCoordinates,-rodCoordinates+25,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([rodCoordinates,rodCoordinates-25,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([-rodCoordinates,rodCoordinates-25,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([rodCoordinates,-rodCoordinates+25,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
}
///////////////////////////////////////////////////////////////////////////////////////
module topPlatform(){

difference(){
	
	translate([0,0,panelHeight+570])
			minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
			

////mountng holes
//	translate([-feetCoordinates,-feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([-feetCoordinates,feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,-feetCoordinates,panelHeight+570]) 
//   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);	
//
//
//
//	threadedRods();

//logo
	translate([200,-350,panelHeight+570+7],center=true)
	rotate([0,0,90])
	resize([middlePlatform_X-300,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}
///////////////////////////////////////////////////////////////////////////////////////
module backPanel(){

difference(){
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness,middlePlatform_Y-thickness*4,panelHeight], center=true);
	
//power switch cut out
	translate([-feetCoordinates-2,225,65], center=true)
		cube([10,28,21]);

//usb cut out #1
	translate([-middlePlatform_X/2-1,-235,panelHeight/2+25], center=true)
		cube([thickness*2+1,15,8]);

//usb cut out #2
	translate([-middlePlatform_X/2-1,-235,panelHeight/2], center=true)
		cube([thickness*2+1,15,8]);

//usb cut out #3
	translate([-middlePlatform_X/2-1,-235,panelHeight/2-25], center=true)
		cube([thickness*2+1,15,8]);

//ethernet cut out
	translate([-middlePlatform_X/2-1,-35,panelHeight/2-5], center=true)
		cube([thickness*2+1,16.5,13.5]);

//ethernet panel mount holes
		rj45Hole();

//hdmi cut out
	translate([-middlePlatform_X/2-1,-135,panelHeight/2], center=true)
		cube([thickness*2+1,17.5,8]);

//hdmi panel mount holes
		hdmiHole();

//usb panel mount holes
		usbHoles();

	translate([0,0,25])
		usbHoles();

	translate([0,0,-25])
		usbHoles();
	
	bracketHoles();

	translate([0,-285*2,0])
		bracketHoles();

	translate([0,-285*2,54])
		bracketHoles();

	translate([0,0,54])
		bracketHoles();

	translate([-middlePlatform_X/2-1,225,20])
		powerReceptacle();

translate([-middlePlatform_X/2-1,225+14+20,38-9])
usbHole();

	translate([-middlePlatform_X/2-1,225+14-20,38-9])
usbHole();

translate([0,0,-15])
fanHoles();

translate([0,2.5,1])
fan();	
}

	translate([-middlePlatform_X/2,-135,panelHeight/2+6], center=true)
	rotate([45,0,0])
		cube([thickness,10,10]);

	translate([-middlePlatform_X/2+thickness,-135+17.5,panelHeight/2+6], center=true)
	rotate([45,0,180])
		cube([thickness,10,10]);
}
///////////////////////////////////////////////////////////////////////////////////////
module frontPanel(){

difference(){	
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness,middlePlatform_Y,panelHeight], center=true);


translate([middlePlatform_X/2-thickness-1,200,panelHeight/2 ], center=true)
rotate([0,0,-90])
import("20x4_lcd.stl");

translate([middlePlatform_X/2-thickness-1,200-40,panelHeight/2-15 ], center=true)
cube([50,80,30]);

//usb cut out #4
	translate([middlePlatform_X/2-thickness-1,-235,panelHeight/2 ], center=true)
		cube([thickness*2+1,15,8]);

	translate([middlePlatform_X,0,0])
		usbHoles();

	translate([325,175-135,40])
		panelHole();

	translate([325,175,40])
	
		panelHole();
	translate([1,0,0])
		bracketHoles();

	translate([1,-285*2,0])
		bracketHoles();

	translate([1,-285*2,54])
		bracketHoles();

	translate([1,0,54])
		bracketHoles();

translate([1,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2+panelHeight/5])
		cube([middlePlatform_X,thickness,panelHeight/5], center=true);

translate([1,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2-panelHeight/5+.25])
		cube([middlePlatform_X,thickness,panelHeight/5-.5], center=true);

translate([1,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2-panelHeight/5+.25])
		cube([middlePlatform_X,thickness,panelHeight/5-.5], center=true);

translate([1,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2+panelHeight/5])
		cube([middlePlatform_X,thickness,panelHeight/5], center=true);

}	
}

	
///////////////////////////////////////////////////////////////////////////////////////

module usbHole(){
	
	rotate([0,90,0])	
		cylinder(r=1.5, h=100, $fn=100);
}

	module usbHoles(){
	rotate([0,0,0])
	translate([-middlePlatform_X/2-thickness-1,-235+15/2+29/2,panelHeight/2+4], center=true)
		usbHole();

	rotate([0,0,0])
	translate([-middlePlatform_X/2-thickness-1,-235+15/2-29/2,panelHeight/2+4], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module hdmiHole(){
	
	translate([-middlePlatform_X/2-thickness-1,-135+17.5/2+15,panelHeight/2+4], center=true)
		usbHole();

	translate([-middlePlatform_X/2-thickness-1,-135+17.5/2-15,panelHeight/2+4], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module rj45Hole(){;
	translate([-middlePlatform_X/2-thickness-1,-35+8.25-13.5,panelHeight/2+2.5], center=true)
		usbHole();

	translate([-middlePlatform_X/2-thickness-1,-35+8.25+13.5,panelHeight/2+2.5], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module panelHole(){;
	
	rotate([0,90,0])
		cylinder(r=10, h=50, $fn=100);
}
///////////////////////////////////////////////////////////////////////////////////////
module bottomBrackets(){

	translate([285-thickness/2,285,6])
		panelBracket();

	translate([285-thickness/2,-285,6])
		panelBracket();

	rotate([0,0,180])
	translate([285-thickness/2,-285,6])
		panelBracket();

	rotate([0,0,180])
	translate([285-thickness/2,285,6])
		panelBracket();
}

module topBrackets(){
	
	rotate([180,0,0])
	translate([0,0,-panelHeight])
		bottomBrackets();
}
///////////////////////////////////////////////////////////////////////////////////////

module bracketHole(){

	rotate([0,90,0])
	cylinder(r=3, h=2000, $fn=100);
}

module bracketHoles(){
	
	translate([-500-1,285,25+6])
		bracketHole();

	translate([-500-1,285,10+6])
		bracketHole();
}
///////////////////////////////////////////////////////////////////////////////////////
color("Silver", a=1.0){
	translate([feetCoordinates,feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates,-feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates,feetCoordinates_Y,-30])
		levelingFeet();

	translate([feetCoordinates,-feetCoordinates_Y,-30])
		levelingFeet();
}
///////////////////////////////////////////////////////////////////////////////////////
module fanHoles(){
translate([-400,100,30])
usbHole();

translate([-400,100+71,30])
usbHole();

translate([-400,100,30+71])
usbHole();

translate([-400,100+71,30+71])
usbHole();
}

module fan(){
	translate([-380,155,30-11])
		cube ([50,5,60]);

	translate([-380,145,30-11])
		cube ([50,5,60]);

	translate([-380,135,30-11])
		cube ([50,5,60]);

	translate([-380,125,30-11])
		cube ([50,5,60]);

	translate([-380,115,30-11])
		cube ([50,5,60]);

	translate([-380,105,30-11])
		cube ([50,5,60]);
}
///////////////////////////////////////////////////////////////////////////////////////

module zMotors(){
	translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,48+thickness/2+22-9.75-(6.25*2)])
		nema17();

	translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,48+thickness/2+22-9.75-(6.25*2)])
		nema17();	



translate([-middlePlatform_X/12+1.25,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+1+50,48+thickness/2+30-9.75-(6.25*2)])
import("coupler.stl");

translate([-middlePlatform_X/12+1.25,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4+1-50,48+thickness/2+30-9.75-(6.25*2)])
import("coupler.stl");

color("LightSlateGray"){
translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,0+90-9.75-(6.25*2)])
cylinder(r=4, h=575, $fn=50);

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,90-9.75-(6.25*2)])
cylinder(r=4, h=575, $fn=50);
}
}
///////////////////////////////////////////////////////////////////////////////////////
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

	
///////////////////////////////////////////////////////////////////////////////////////

//english_thread(1/2,609.6,2, internal=true);
//translate([-middlePlatform_X/12-37,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4,350-(6.25*2)/2])
//cube([(6.25*2),(bottomPlatform_Y-middlePlatform_Y)/2,700], center=true);
//
//translate([-middlePlatform_X/12-37,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4,350-(6.25*2)/2])
//cube([(6.25*2),(bottomPlatform_Y-middlePlatform_Y)/2,700], center=true);
//




translate([-middlePlatform_X/12+75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)])
import("ss_standoff.stl");

difference(){



minkowski() {
				translate([-middlePlatform_X/12,0,panelHeight+570-51-(6.25*2)+thickness/2])
 				cube([middlePlatform_X/4,bottomPlatform_Y-50,thickness], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}



	translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)-75])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)-75])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12-35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);

translate([-middlePlatform_X/12-35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);

}




translate([-middlePlatform_X/12-35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0+90+200])
rotate([0,0,-30])
import("10mm_linear_bearing.stl");

translate([-middlePlatform_X/12-35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0+90+200])
rotate([0,0,180+30])
import("10mm_linear_bearing.stl");


translate([-middlePlatform_X/12-35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0])
cylinder(r=10, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);

translate([-middlePlatform_X/12-35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0])
cylinder(r=10, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);


translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,(6.25*2)/2])
import("acme_end_cap.stl");

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,(6.25*2)/2])
import("acme_end_cap.stl");

translate([middlePlatform_X/2-thickness-1,200,panelHeight/2 ], center=true)
rotate([0,0,-90])
import("20x4_lcd.stl");



translate([-middlePlatform_X/12-35+20,0,200+90-40])
rotate([90,0,0])
cylinder(r=4, h=650, $fn=50, center=true);

translate([-middlePlatform_X/12-35+20,0,200+90+40])
rotate([90,0,0])
cylinder(r=4, h=650, $fn=50, center=true);


translate([-middlePlatform_X/12-35+20,0,200+90-40])
rotate([0,90,-90])
import("8mm_linear_bearing.stl");


translate([-middlePlatform_X/12-35+20,0,200+90+40])
rotate([0,90,-90])
import("8mm_linear_bearing.stl");



module printHead(){





translate([0,0,250-125])
rotate([90,0,0])
import("pico.stl");

translate([0,0-3,250-8.5-125])
rotate([90,0,0])
import("pico_nozzle.stl");



picoFan();

module picoFan(){

translate([8,23,148])
rotate([180,0,90])
import("40mmpicofan.stl");

translate([8,17,148])
rotate([180,0,90])
import("bolt_on_clip.stl");

}




}


module extruder(){

translate([0,5,200])
rotate([0,-90,180])
import("extruder.stl");


translate([-30,0,220])
rotate([0,90,0])
nema17();
}



