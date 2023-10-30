// UI to display the instructions of the tutorial for the player to follow
var instruction1 = "Press the left and right arrow keys to move left and right.";
var instruction2 = "Press the up arrow key to jump.";
var instruction3 = "Press SPACE to attach to vines and use the arrow keys on the vines.";
var instruction4 = "Grab the key in order to break the gate and go through the exit to end the tutorial";


var y_position = 20; 

draw_text(room_width / 2, y_position, instruction1);
draw_text(room_width / 2, y_position + 30, instruction2);
draw_text(room_width / 2, y_position + 60, instruction3);
draw_text(room_width / 2, y_position + 90, instruction4);

