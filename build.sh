OpenSCAD -o ae-stacking-base.stl src/ae-stacking-base.scad
OpenSCAD -o ae-stacking-layer.stl src/ae-stacking-layer.scad

OpenSCAD --imgsize=400,300 -o doc/ae-stacking-layer.png --projection=p --camera=0,0,0,55,0,25,500 --render src/ae-stacking-layer.scad
OpenSCAD --imgsize=400,300 -o doc/ae-stacking-base.png --projection=p --camera=0,0,-3,66,0,134,520 --render src/ae-stacking-base.scad

optipng -o7 doc/*.png
