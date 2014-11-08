/*
    Shuriken
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

difference(){
	cube([90, 90, 5], true);
	translate([0,0,-5]){
		for (i = [0:90:270]) {
			rotate(i, [0, 0, 1]) {
				translate([-155, 0, 0]){ 
					cylinder(10, r=120, true, $fa=5, $fs=0.1);
				}
			}
		}
		cylinder(10, r=7.5, true, $fa=5, $fs=0.1);
	}
}

				