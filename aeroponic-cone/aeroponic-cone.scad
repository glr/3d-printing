/*
		Aeroponic Grow Cone
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

difference() {
	union() {
		cylinder(85, r1=22.5, r2=6);
		cylinder(2, r=30);
	}
	translate([0, 0, -2]) {
		cylinder(84, r1=20.25, r2=3);
	}
	meshCutout();
}

module meshCutout() {
	n = [12, 10, 10, 8, 8, 6];
	w = [ 7,  7, 6, 6, 4, 4];
	for (i=[0:5]) {
		translate([0, 0, i*13]) {
			for (j=[0 : 360/n[i] : 180]) {
				rotate(j, [0,0,1]){
					translate([0, 0, 8]){
						cube([100, w[i], 10], true);
					}
				}
			}
		}
	}
}
