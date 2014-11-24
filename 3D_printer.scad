use <switch_mount.scad>
use <button_mount_assembled.scad>
use <keypad_mount_assembled.scad>
use <panel_bracket.scad>
use <leveling_feet.scad>
use <power_receptacle.scad>

/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.35;

//panel height
panelHeight=101.6;

//rod radius
rodRadius=6.00 / 2;

//leveling feet radius
feetRadius=4.5;

//outer radius of circular corners
circleRadius=50;

//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=285;

//cartesian plane coordinates where the leveling feet mount/pass through
feetCoordinates=350;

//length and width
footPrint=700;
///////////////////////////////////////////////////////////////////////////////////////
//topPlatform();

color("PaleGreen", a=1.0){
middlePlatform();
}

color("Plum", a=1.0){
bottomPlatform();
}

color("SkyBlue", a=1.0){
frontPanel();
}

color("LightCoral", a=1.0){
backPanel();
}

//threadedRods();

color("NavajoWhite", a=1.0){
topBrackets();
}

color("NavajoWhite", a=1.0){
bottomBrackets();
}
///////////////////////////////////////////////////////////////////////////////////////
module bottomPlatform(){

difference(){
	cube([footPrint,footPrint,12.7], center=true);
	
	//holes for leveling legs//
	translate([-feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
	
	//mounting holes
	translate([-feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);	

	//inlay for panels
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness+1,600+1,panelHeight], center=true);
	
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness+1,600+1,panelHeight], center=true);
	
	threadedRods();
}

//circles at each corner
difference(){
	translate([-feetCoordinates,-feetCoordinates]) 
		cylinder(r=50, h=12.7, center=true);
	
	translate([-feetCoordinates,-feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
}

difference(){
	translate([feetCoordinates,feetCoordinates]) 
		cylinder(r=circleRadius, h=12.7, center=true);
	
	translate([feetCoordinates,feetCoordinates,-1]) 
		cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
}

difference(){
   translate([feetCoordinates,-feetCoordinates]) 
	cylinder(r=circleRadius, h=12.7, center=true);
   
	translate([feetCoordinates,-feetCoordinates,-1]) 
      cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
}

difference(){
	translate([-feetCoordinates,feetCoordinates]) 
		cylinder(r=circleRadius, h=12.7, center=true);
	
	translate([-feetCoordinates,feetCoordinates,-1]) 
      	cylinder(r=feetRadius,h=12.7+10, center=true, $fn=100);
}
}
///////////////////////////////////////////////////////////////////////////////////////
module middlePlatform(){

difference(){
	translate([0,0,panelHeight])
		cube([footPrint,footPrint,12.7], center=true);

//mountng holes
	translate([-feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,100]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);	

//concave corners
	translate([-feetCoordinates,-feetCoordinates,100]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([feetCoordinates,feetCoordinates,100]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([-feetCoordinates,feetCoordinates,100]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([feetCoordinates,-feetCoordinates,100]) 
		cylinder(r=circleRadius, h=20, center=true);

	//inlay for panels
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness+1,600+1,panelHeight], center=true);
	
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness+1,600+1,panelHeight], center=true);

//slots
	translate([0,-310,panelHeight-1])
		cube([feetCoordinates,15,20], center=true);
	
	translate([0,310,panelHeight-1])
		cube([feetCoordinates,15,20], center=true);

	threadedRods();
}
}
///////////////////////////////////////////////////////////////////////////////////////
module threadedRods(){
//rods
	translate([-rodCoordinates,-rodCoordinates,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([rodCoordinates,rodCoordinates,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([-rodCoordinates,rodCoordinates,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
	
	translate([rodCoordinates,-rodCoordinates,333.7]) 
   		cylinder(r=rodRadius,h=700, center=true, $fn=100);
}
///////////////////////////////////////////////////////////////////////////////////////
module topPlatform(){

difference(){
	
	translate([0,0,panelHeight+570])
		cube([footPrint,footPrint,12.7], center=true);

//mountng holes
	translate([-feetCoordinates,-feetCoordinates,panelHeight+570]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,feetCoordinates,panelHeight+570]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([-feetCoordinates,feetCoordinates,panelHeight+570]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([feetCoordinates,-feetCoordinates,panelHeight+570]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);	

//concave corners
	translate([-feetCoordinates,-feetCoordinates,panelHeight+570]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([feetCoordinates,feetCoordinates,panelHeight+570]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([-feetCoordinates,feetCoordinates,panelHeight+570]) 
		cylinder(r=circleRadius, h=20, center=true);
	
	translate([feetCoordinates,-feetCoordinates,panelHeight+570]) 
		cylinder(r=circleRadius, h=20, center=true);

	threadedRods();

//logo
	translate([100,-185,panelHeight+570+4.5],center=true)
	rotate([0,0,90])
	resize([400,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);
}
}
///////////////////////////////////////////////////////////////////////////////////////
module backPanel(){

difference(){
	translate([-feetCoordinates+thickness/2,0,panelHeight/2 ])
		cube([thickness,600,panelHeight], center=true);
	
//power switch cut out
	translate([-feetCoordinates-2,225,65], center=true)
		cube([10,28,21]);

//usb cut out #1
	translate([-feetCoordinates-2,-235,panelHeight/2+25], center=true)
		cube([10,15,8]);

//usb cut out #2
	translate([-feetCoordinates-2,-235,panelHeight/2], center=true)
		cube([10,15,8]);

//usb cut out #3
	translate([-feetCoordinates-2,-235,panelHeight/2-25], center=true)
		cube([10,15,8]);

//ethernet cut out
	translate([-feetCoordinates-2,-35,panelHeight/2-5], center=true)
		cube([10,16.5,13.5]);

//ethernet panel mount holes
		rj45Hole();

//hdmi cut out
	translate([-feetCoordinates-2,-135,panelHeight/2], center=true)
		cube([10,17.5,8]);

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

	translate([-375,225,20])
		powerReceptacle();

translate([-400,225+14+20,38-9])
usbHole();

	translate([-400,225+14-20,38-9])
usbHole();

translate([0,0,-15])
fanHoles();

translate([0,2.5,1])
fan();	
}

	translate([-feetCoordinates,-135,panelHeight/2+6], center=true)
	rotate([45,0,0])
		cube([thickness,10,10]);

	translate([-feetCoordinates+thickness,-135+17.5,panelHeight/2+6], center=true)
	rotate([45,0,180])
		cube([thickness,10,10]);
}
///////////////////////////////////////////////////////////////////////////////////////
module frontPanel(){

difference(){	
	translate([feetCoordinates-thickness/2,0,panelHeight/2 ])
		cube([thickness,600,panelHeight], center=true);

//button mount cutout
	translate([393+10,175,25])
		button_mount_assembled();

//keypad mount cutout
	translate([393+10,175-135,25])
		keypad_mount_assembled();

//usb cut out #4
	translate([feetCoordinates-10,-235,panelHeight/2 ], center=true)
		cube([20,15,8]);

	translate([700,0,0])
		usbHoles();

	translate([325,175-135,40])
		panelHole();

	translate([325,175,40])
	
		panelHole();
	
		bracketHoles();

	translate([0,-285*2,0])
		bracketHoles();

	translate([0,-285*2,54])
		bracketHoles();

	translate([0,0,54])
		bracketHoles();
}	
}

	translate([393+1,175-135,0])
		keypad_mount_assembled();

	translate([393+1,175,0])
		button_mount_assembled();
///////////////////////////////////////////////////////////////////////////////////////

module usbHole(){
	
	rotate([0,90,0])	
		cylinder(r=1.5, h=100, $fn=100);
}

	module usbHoles(){
	rotate([0,0,0])
	translate([-400,-235+15/2+29/2,panelHeight/2+4], center=true)
		usbHole();

	rotate([0,0,0])
	translate([-400,-235+15/2-29/2,panelHeight/2+4], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module hdmiHole(){
	
	translate([-400,-135+17.5/2+15,panelHeight/2+4], center=true)
		usbHole();

	translate([-400,-135+17.5/2-15,panelHeight/2+4], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module rj45Hole(){;
	translate([-400,-35+8.25-13.5,panelHeight/2+2.5], center=true)
		usbHole();

	translate([-400,-35+8.25+13.5,panelHeight/2+2.5], center=true)
		usbHole();
}
///////////////////////////////////////////////////////////////////////////////////////

module panelHole(){;
	
	rotate([0,90,0])
		cylinder(r=10, h=50, $fn=100);
}
///////////////////////////////////////////////////////////////////////////////////////
module bottomBrackets(){

	translate([285,285,6])
		panelBracket();

	translate([285,-285,6])
		panelBracket();

	rotate([0,0,180])
	translate([285,-285,6])
		panelBracket();

	rotate([0,0,180])
	translate([285,285,6])
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
	cylinder(r=3, h=1000, $fn=100);
}

module bracketHoles(){
	
	translate([-500,285,25+6])
		bracketHole();

	translate([-500,285,10+6])
		bracketHole();
}
///////////////////////////////////////////////////////////////////////////////////////
color("Orange", a=1.0){
	translate([feetCoordinates,feetCoordinates,-30])
		levelingFeet();

	translate([-feetCoordinates,-feetCoordinates,-30])
		levelingFeet();

	translate([-feetCoordinates,feetCoordinates,-30])
		levelingFeet();

	translate([feetCoordinates,-feetCoordinates,-30])
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