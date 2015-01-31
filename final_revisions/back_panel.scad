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

	translate([feetCoordinates_X,feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates_X,-feetCoordinates_Y,-30])
		levelingFeet();

	translate([-feetCoordinates_X,feetCoordinates_Y,-30])
		levelingFeet();

	translate([feetCoordinates_X,-feetCoordinates_Y,-30])
		levelingFeet();

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