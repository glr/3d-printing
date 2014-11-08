/*
		Square Card Reader Case
		Copyright (C) 2014  Gabriel L. Rael

		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

o=5.00;
p=2.00;
bx=22.00;
by=40.750;
bz=14.75;


module squareReader () {
	translate([0,4.0,0]) {
		rotate([-90,0.0]) {
			cylinder(h=14.77, r=2.00,$fa=5, $fs=0.1);
		}
	}
	rotate([-90,0,0]) {
		cylinder(h=4.02, r=(6.5/2), $fa=5, $fs=0.1);
	}
	translate([-22.25/2,-22.2,-9.00]) {
		cube([22.25,22.25,14.75]);
	}
}

module cubes() {
	translate([0, (14.75/2)+4, 6/2]) {
		cube([4, 14.77, 6], true);
	}
	translate([0, 2, 3]) {
		cube([6.5, 4.02, 6], true);
	}
	translate([0, -22.2/2, 3]) {
		cube([22.25, 22.25, 6], true);
	}
}

module squareCutout () {
	union() {
		squareReader();
		cubes();
	}
}

module squareReaderCaseBottom() {
	difference() {
		translate([0, -p, -p-1]) {
			cube([bx+2*p, by+2*p, bz+p], true);
		}
		squareCutout();
		translate([0, -bx+0.3, bz/2-p]) {
			rotate([90, 0, 0]) {
				cylinder(h=p+1, r=8.5, ,$fa=5, $fs=0.1);
			}
		}
		translate([10.5, -11, bz/2-p]) {
			rotate([0, 90, 0]) {
				cylinder(h=p+1, r=8.5, ,$fa=5, $fs=0.1);
			}
		}
		translate([-10.5, -11, bz/2-p]) {
			rotate([0, -90, 0]) {
				cylinder(h=p+1, r=8.5, ,$fa=5, $fs=0.1);
			}
		}
	}
}
//squareReaderCaseBottom();

module squareReaderCaseTop() {
	difference() {
		translate([0, -o/2, -o/2]) {
			cube([bx+2*o, by+2*o, bz+o], true);
		}
		translate([0, -o/2, -o/2-2]) {
			cube([bx+2*p+2, by+2*p+2, bz+p+2], true);
		}
		translate([-(bx+2*o+1)/2, -o/2, -bz/2-o]) {
			rotate([0, 90, 0]) {
				cylinder(h=bx+2*o+1, r=8.5, $fa=5, $fs=0.1);
			}
		}
	}
	translate([0 ,by/2+0.5, -10]) {
		sphere(1, $fa=5, $fs=0.1);
	}
	translate([0, -by/2-5.5, -10]) {
		sphere(1, $fa=5, $fs=0.1);
	}
	translate([-bx/2-p-1, -p, 0]) {
		sphere(1, $fa=5, $fs=0.1);
	}
	translate([bx/2+p+1, -p, 0]) {
		sphere(1, $fa=5, $fs=0.1);
	}
}
//squareReaderCaseTop();



translate([-bx/2-p-3,0,bz/2+2*p]){
	squareReaderCaseBottom();
}

translate([bx/2+o+3,0,bz/2]){
	mirror([0,0,1]){
		squareReaderCaseTop();
	}
}
