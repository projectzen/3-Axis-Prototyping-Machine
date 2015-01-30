use <switch_mount.scad>
use <button_mount_assembled.scad>
use <keypad_mount_assembled.scad>
//use <panel_bracket.scad>
//use <leveling_feet.scad>
use <power_receptacle.scad>
use <nema17.scad>
use <thread_library.scad>

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

//
//translate([6-70,22,70])
//rotate([0,0,-90])
//printHead();
//
//translate([-70,0,70])
//extruder();


extrudedAluminum();

///////////////////////////////////////////////////////////////////////////////////////
module bottomPlatform(){

difference(){
	minkowski() {
 				cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset,(thickness)], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}
	
	//holes for leveling legs//

	//translate([-feetCoordinates,-feetCoordinates,-1]) 
//   		cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,feetCoordinates,-1]) 
//      	cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([feetCoordinates,-feetCoordinates,-1]) 
//      	cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	translate([-feetCoordinates,feetCoordinates,-1]) 
//   		cylinder(r=feetRadius,h=(6.25*2)+10, center=true, $fn=100);
//	
//	//mounting holes
//	translate([-feetCoordinates,-feetCoordinates,-1]) 
//   		cylinder(r=rodRadius,h=(6.25*2)+10, center=true, $fn=100);
//
//	translate([-feetCoordinates_X,-feetCoordinates_Y,0]) 
//   		cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
//	
//	translate([feetCoordinates_X,feetCoordinates_Y,0]) 
//      	cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
//	
//	translate([feetCoordinates_X,-feetCoordinates_Y,0]) 
//      	cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
//	
//	translate([-feetCoordinates_X,feetCoordinates_Y,0]) 
//   		cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
//	
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
	
	//threadedRods();

sidePanel_right();
sidePanel_left();


extrudedAluminum();


}


}
///////////////////////////////////////////////////////////////////////////////////////
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


//inlay for panels
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
	
	translate([0,0,panelHeight+570+200])
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

extrudedAluminum();


//logo
	translate([200,-350,panelHeight+570+200+7],center=true)
	rotate([0,0,90])
	resize([middlePlatform_X-300,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}
///////////////////////////////////////////////////////////////////////////////////////
module backPanel(){

difference(){
	translate([(-middlePlatform_X/2)+thickness/2,0,panelHeight/2 ])
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

	
}
///////////////////////////////////////////////////////////////////////////////////////
module frontPanel(){

difference(){	
	translate([(middlePlatform_X/2)-thickness/2,0,panelHeight/2 ])
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
	translate([feetCoordinates_X,feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates_X,-feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates_X,feetCoordinates_Y,-30])
		levelingFeet();

	translate([feetCoordinates_X,-feetCoordinates_Y,-30])
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
/////////////////////////////////////////////////////////////////////////////////////

module zMotors(){
	translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,48+thickness/2+22-9.75-200-(6.25*2)])
		nema17();

	translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,48+thickness/2+22-9.75-200-(6.25*2)])
		nema17();	



translate([-middlePlatform_X/12+1.25,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+1+50,48+thickness/2+30-9.75-200-(6.25*2)])
import("coupler.stl");

translate([-middlePlatform_X/12+1.25,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4+1-50,48+thickness/2+30-9.75-200-(6.25*2)])
import("coupler.stl");

color("LightSlateGray"){
translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,0+90-200-9.75-(6.25*2)])
trapezoidThreadNegativeSpace( 
        length=575+200,
        pitch=2,                
        pitchRadius=5,             
        threadHeightToPitch=0.5,     
        profileRatio=0.5,    
        threadAngle=30,             
        countersunk=0,     
        clearance=0.1,         
        backlash=0.1,             
        stepsPerTurn=24    )         
    ;



//Z-axis acme rods

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,90-9.75-200-(6.25*2)])
trapezoidThreadNegativeSpace( 
        length=575+200,
        pitch=2,                
        pitchRadius=5,             
        threadHeightToPitch=0.5,     
        profileRatio=0.5,    
        threadAngle=30,             
        countersunk=0,     
        clearance=0.1,         
        backlash=0.1,             
        stepsPerTurn=24    )         
    ;

}
}
/////////////////////////////////////////////////////////////////////////////////////
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







translate([-middlePlatform_X/12+75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

difference(){



minkowski() {
				translate([-middlePlatform_X/12,0,panelHeight+570+200-51-(6.25*2)+thickness/2])
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






//
//
//
//difference(){
//bearingBracketsLeft();
//
//
//
//translate([-8+35-102+30,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15+29.1,0+90+200])
// 	rotate([0,0,180+15])
//	cube([150,50,50], center=true);
//
//
//
//
//translate([-8+35-102+30+97,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60+15,0+90+200])
// 	
//	cube([150,50,50], center=true);
//
//}








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

 //x axis acme rod



translate([-8+6-102,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60-19+25-60,0+90+200])
rotate([90,0,0])
    trapezoidThreadNegativeSpace( 
        length=670,
        pitch=2,                
        pitchRadius=5,             
        threadHeightToPitch=0.5,     
        profileRatio=0.5,    
        threadAngle=30,             
        countersunk=0,     
        clearance=0.1,         
        backlash=0.1,             
        stepsPerTurn=24    )         
    ;





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

//
//translate([0,425,panelHeight+250])
//rotate([90,0,0])
//cube([middlePlatform_X-platformOffset,bottomPlatform_Y-platformOffset-200,(thickness)], center=true);


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