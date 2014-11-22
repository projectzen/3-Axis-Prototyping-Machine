use <switch_mount.scad>
use <button_mount_assembled.scad>

/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.35;

//panel height
panelHeight=101.6;

//rod radius
rodRadius=10;

//leveling feet radius
feetRadius=10;

//outer radius of circular corners
circleRadius=50;

//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=285;

//cartesian plane coordinates where the leveling feet mount/pass through
feetCoordinates=350;

//length and width
footPrint=700;
///////////////////////////////////////////////////////////////////////////////////////
topPlatform();

middlePlatform();

bottomPlatform();

frontPanel();

backPanel();

threadedRods();
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
	translate([-feetCoordinates-2,-35,panelHeight/2-10], center=true)
		cube([10,22,22]);


//hdmi cut out
	translate([-feetCoordinates-2,-135,panelHeight/2], center=true)
		cube([10,17.5,8]);
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

//buttonmount cutout
	translate([393+10,175,60+25])
		button_mount_assembled();

//usb cut out #4
	translate([feetCoordinates-10,-235,panelHeight/2 ], center=true)
		cube([20,15,8]);
}	
}

difference(){
	translate([393,175,0])
		button_mount_assembled();

	translate([0,0,-100])
		cube([1000,1000,100]);
}

///////////////////////////////////////////////////////////////////////////////////////

	




