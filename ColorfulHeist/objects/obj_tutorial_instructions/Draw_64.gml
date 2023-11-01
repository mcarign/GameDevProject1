// UI to display the instructions of the tutorial for the player to follow
var instruction1 = "Press the left and right arrow keys to move left and right.";
var instruction2 = "Press the up arrow key to jump.";
var instruction3 = "Press SPACE to attach to vines and use the arrow keys on the vines.";
var instruction4 = "Press V to grab keys, camo bugs, horn beetles, and grubworms";
var instruction5 = "Press R to restart the game";
var instruction6 = "Once the key is retrieved, the gate will break and you are able to exit the tutorial";

var x_offset = 600;
var y_offset = 10; 

draw_text(x_offset, y_offset, instruction1);
draw_text(x_offset, y_offset + 30, instruction2);
draw_text(x_offset, y_offset + 60, instruction3);
draw_text(x_offset, y_offset + 90, instruction4);
draw_text(x_offset, y_offset + 120, instruction5);
draw_text(x_offset, y_offset + 150, instruction6);
