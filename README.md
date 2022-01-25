# Image-Correction-Software
Basic Image Correction Software designed with Processing 3

## Currently useable transformations
### Cropping
- My cropping software gives you the ability to crop out specific parts of your
image.
- You can change the size and area you want to crop. If you hold the lines of the
rectangle, you can change the size of the rectangle.
- You can move the rectangle around by holding the center of the rectangle.
- You can start the cropping function by clicking the “Crop” button on the brc
controls. After you make a rectangle, you can change it.
- You can then end the crop by clicking the “End Crop” button on the brc controls
website.
### Pencil
- You can use the pencil feature by clicking the pencil button on the brc controls
website. You can switch the color of the pen and the size of the pen using the
sliders on the brc website.
- You can end the pencil function by clicking the “End Pencil” button on the brc
website.
### Saving
- You can save your image by first typing a name onto the brc controls website and
then clicking the save button.
Unworking/Untested transformations

## Changes to be made
### New Undo function
The undo function is supposed to undo your last done transformation. However,
testing has not been done yet, and more than likely, it will not work because
processing’s built in pixels array can’t be changed by just setting the array to a
different array

### New Redo function
The redo function is supposed to redo a change you already made and undid.
However, once again, testing hasn’t been done and it will likely not work because
processing’s built in pixels array function can’t be changed by setting the array to
a different array.

## Problems
One of the biggest problems I ran into with processing is that I couldn’t save the pixel array into
a different array, and then later down the line, set the pixel array to the previously saved array.
This created issues with my crop function, whose original design was to first save the saved
array and then create a rectangle to show where it will be cropped, and then remove said
rectangle by reverting the pixel array to the saved pixel array. Other than that, I ran into a bug
with BRC. I did not realize that you could only call brcChanged() once, otherwise the 2nd time it
is called, it will say that nothing has changed. I ran into an issue with that which I struggled for a
long time with. It would be useful to have a list of already known issues with BRC, otherwise
some issues that could be solved would take hours to figure out. Another issue I ran into was
that the image pixels array changed with the pixels array. I previously thought that the image
pixels array changed when the image changed, so it would not be affected by changes on
screen. I struggled to figure out a way to get the pixels array to change after I made manual
changes.
