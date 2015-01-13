Welcome
==========
In this repository are the CAD files for the 3-Axis Prototyping Machine built and designed by Project Zen, a group of four students at The Ohio State University dedicated to advancing the hardware hacking community at and beyond the university. We are huge advocates of Open Source hardware and software. Our majors include Electrical Engineering, Computer Science & Engineering and Electrical & Computer Engineering.

What is it?
===========
In short, it's a modular, 3-axis control system meant for doing just about anything. TThe idea is that you can go from 3d-printing to laser engraving, to pcb fabrication in minutes simply by swapping out the print head. The head moves in both the X and Z planes and the build platform moves in the Y direction. Our initial goals are a 3D printer and possibly a CNC machine. The reason being, we could then rapidly prototype new modular attachments that could expand the machine's intial functionality. Here are some things we have thought of including down the road:

* Robotic graffiti
* "3D" chalk drawings
* Painting pictures
* Laser pointer / light shows
* Automated farming
* Signature replicator
* Vinyl record fabricator
* Braille writer
* Pumpkin carver

...and many more. If you have any suggestions for other ideas, please contact us--we'd love to hear them! We also plan on being backwards compatible with our original project from the OSU hackathon of a robotic zen garden: https://github.com/OHIOhackathon2014/Project_Zen 

We also love gesture control: our original project was controlled exclusively by a Leap Motion, and we plan on including this as well as other control schemes in the near future. This will present its own set of problems since the Leap Motion doesn't offically support ARM devices. 

Why?
====
Software in the past 10 years has enjoyed a massive reduction in barrier of entry thanks to the boom of open source development tools, bountiful online tutorials, and droves of libraries that make getting into development a breeze. Hardware, on the other hand, is still plagued by high entry costs and a lack well-established online guides. We're trying to change that, both for our school and the broader community.

Once built, we will allow others to use our machine, both for personal projects at OSU, and at hackathons we go to, to rapidly speed up their hardware creations and prototyping. In the process, we will share our experiences and the concept behind the machine, effectively growing an already-active 3D printing community at the university level.

We also plan to share our design and method to the broader community for educational purposes. We will offer up all schematics and detailed documentation of our process in hopes that makers all around the world will be inspired to create their own 3-axis machines, or begin building other amazing projects.

3D printers and CNC machines are hot topics right now in the maker community, and for good reason: with them, creating a prototype or finished design is incredibly simple. As mentioned before, the 3-axis control system used in 3D printing lends itself well to an infinite number of applications, and we're interested in exploring those as well.

Plan
====
For our control system, we are using [Grbl](https://github.com/LETARTARE/Grbl-xx_with_Arduino "Grbl") on an Arduino Mega, which will receive G-code from a Beaglebone black that is intended to serve as the primary workstation with LinuxCNC. The Arduino in this case will drive 4 stepper motors, two for the X axis control, and one each for the other two axes. The body of the project will be housed in a laser-cut acrylic frame, and all wires and extensions will be panel mounted so that the machine is entirely housed within its frame. We will be implementing both software and hardware failsafe reductancies to lessen the chance of mechanical failure.

Current Progress
===============
We are currently working on schematics and planning. In regards to the control system, we have:

* Set up and configured the Beaglebone Black with Machinekit, a varient of LinuxCNC
* Successfully communicated with the Arduino Mega from the Beaglebone via serial
* Started the design of the electrical system (Located on [Upverter](https://upverter.com/projectzen/ "Upverter"))
* Soldered the motor controller boards. Image: ![Controller board](http://afuhrtrumpet.github.io/images/controllerboards.jpg "Controller Board")
* Installed Grbl on the Arduino Mega
* 3D printed some parts for use in the base
* Ordered and received all electronics necessary to complete the project
* Added external power to usb hub


Timeline
===============
You can view our always up to date calendar [here](https://www.google.com/calendar/embed?src=8hqmn9jt0dtmd8rigbuar7nvl4%40group.calendar.google.com&ctz=America/New_York "Our Google Calendar") 
