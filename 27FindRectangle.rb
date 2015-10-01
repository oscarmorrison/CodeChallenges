
# Every pixel is white or black, represented in 2D array.  
# 0 black / 1 white pixel

# Imagine we have an image where every pixel is white or black.  We’ll represent this image as a simple 2D array (0 = black, 1 = white).  The image you get is known to have a single black rectangle on a white background.  Your goal is to find this rectangle and return its coordinates.

# Here’s a sample “image” using JavaScript (feel free to rewrite in your language of choice):

image = [
	[1, 1, 1, 1, 1, 1, 1],
	[1, 1, 1, 1, 1, 1, 1],
	[1, 1, 1, 0, 0, 0, 1],
	[1, 1, 1, 0, 0, 0, 1],
	[1, 1, 1, 1, 1, 1, 1]
];

# Input 2x2 Array 
# Output define the location of the rectangle
tl_corner = -1
tr_corner = -1
bl_corner = -1
br_corner = -1

