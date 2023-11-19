// UI to display the instructions of the tutorial for the player to follow
var instruction1 = "Press the left and right arrow keys to move left and right.";
var instruction2 = "Press the up arrow key to jump.";
var instruction3 = "Press SPACE to attach to vines and use the arrow keys to move on the vines.";
var instruction5 = "Press R to restart the level.";
var instruction6 = "Once the key is retrieved, the gate will break and you are able to exit the tutorial.";
var instruction7 = "Press N to skip tutorial.";

var x_offset = 310;
var y_offset = 10; 
draw_rectangle_color(x_offset, y_offset, x_offset+780, y_offset+200, c_black, c_black, c_black, c_black, false);

draw_text(x_offset, y_offset, instruction1);
draw_text(x_offset, y_offset + 30, instruction2);
draw_text(x_offset, y_offset + 60, instruction3);
draw_text(x_offset, y_offset + 90, instruction5);
draw_text(x_offset, y_offset + 120, instruction6);
draw_text(x_offset, y_offset + 150, instruction7);