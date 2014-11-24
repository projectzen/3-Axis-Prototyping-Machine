use <keypad_mount_1.scad>
use <keypad_mount_2.scad>
use <keypad_mount_3.scad>

module keypad_mount_assembled(){

color("LightPink", a=1.0){
button_mount_1();
}

color("DarkGray", a=1.0){
button_mount_2();
}

color("DarkGray", a=1.0){
translate([0,-100-6.35,0])
button_mount_2();
}

color("Aqua", a=1.0){
button_mount_3();
}

}