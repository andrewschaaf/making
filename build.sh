OpenSCAD -o ae-plate-2hole.stl src/ae-plate-2hole.scad
OpenSCAD -o ae-plate-3hole.stl src/ae-plate-3hole.scad
OpenSCAD -o ae-stacking-base.stl src/ae-stacking-base.scad
OpenSCAD -o ae-stacking-layer.stl src/ae-stacking-layer.scad
OpenSCAD -o pi-cam-case.stl src/pi-cam-case.scad

OpenSCAD --imgsize=400,300 -o doc/ae-plate-2hole.png --projection=p --render src/ae-plate-2hole.scad
OpenSCAD --imgsize=400,300 -o doc/ae-plate-3hole.png --projection=p --render src/ae-plate-3hole.scad
OpenSCAD --imgsize=400,300 -o doc/ae-stacking-layer.png --projection=p --camera=0,0,0,55,0,25,500 --render src/ae-stacking-layer.scad
OpenSCAD --imgsize=400,300 -o doc/ae-stacking-base.png --projection=p --camera=0,0,-3,66,0,134,520 --render src/ae-stacking-base.scad
OpenSCAD --imgsize=400,300 -o doc/pi-cam-case.png --projection=p --camera=0,0,0,37.5,0,14.5,300 --render src/pi-cam-case.scad

optipng -o7 doc/*.png
