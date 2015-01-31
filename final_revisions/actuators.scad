use <3-axis-machine.scad>
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



module zMotors(){
	translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,48+thickness/2+22-9.75-200-(6.25*2)])
		nema17();

	translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,48+thickness/2+22-9.75-200-(6.25*2)])
		nema17();	



translate([-middlePlatform_X/12+1.25,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+1+50,48+thickness/2+30-9.75-200-(6.25*2)])
import("coupler.stl");

translate([-middlePlatform_X/12+1.25,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4+1-50,48+thickness/2+30-9.75-200-(6.25*2)])
import("coupler.stl");

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