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

p=3.175;
o=4.175;
bx=21.59;
by=38.989;
bz=14.605;

difference() {
	cube([bx+2*o,by+2*o,bz+o]);
	translate([1,1,-1]){
		cube([bx+2*p, by+2*p, bz+p+1]);
	}
	translate([-5, by/2+o, 0]) {
		rotate([90, 0, 90]) {
			cylinder(h=40, r=8.5, ,$fa=5, $fs=0.1);
		}
	}
}
