boolean firstClick = true;
boolean fixCrop = false;
boolean firstMouseClick = false;

void Crop(String changed) {
  if (image == null) {
    background(200);
  } else {
    image(image,0,0);
  }
  /*
  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color((int)red(oldPixels[i]), (int)green(oldPixels[i]), (int)blue(oldPixels[i]));
  }
  updatePixels();
  */
  if (Crop) {
    //println("CROP");
    if (mousePressed) {
      if (firstClick) {
        prevRectX = mouseX;
        prevRectY = mouseY;
        newRectX = prevRectX;
        newRectY = prevRectY;
        firstClick = false;
        firstMouseClick = true;
      }
      if (frameCount == prevFrame + 1) {
        
      }
      newRectX = mouseX;
      newRectY = mouseY;
      prevFrame = frameCount;
    } else {
      if (!firstMouseClick) { 
        return;
      }  
      if (prevRectX > newRectX) {
        int temp = prevRectX;
        prevRectX = newRectX;
        newRectX = temp;
      }
      if (prevRectY > newRectY) {
        int temp = prevRectY;
        prevRectY = newRectY;
        newRectY = temp;
      }
      noFill();
      strokeWeight(1);
      stroke(200);
      rect(prevRectX, prevRectY, newRectX - prevRectX, newRectY - prevRectY);
      fixCrop = true;
      Crop = false;
    }
  }
  if (fixCrop) {
    //println("Fix CROP");
    if (mousePressed) {
      if (mouseX > prevRectX - 20 && mouseX < prevRectX + 20) {
        prevRectX = mouseX;
      } else if (mouseX > newRectX - 20 && mouseX < newRectX + 20) {
        newRectX = mouseX;
      } else if (mouseY > prevRectY - 20 && mouseY < prevRectY + 20) {
        prevRectY = mouseY;
      } else if (mouseY > newRectY - 20  && mouseY < newRectY + 20) {
        newRectY = mouseY;
      } else if (mouseX > prevRectX + (newRectX - prevRectX) / 2 - 2 *  (newRectX - prevRectX) / 5 && mouseX < prevRectX + (newRectX - prevRectX) / 2 + 2 * (newRectX - prevRectX) / 5 &&
      mouseY > prevRectY + (newRectY - prevRectY) / 2 - 2 * (newRectY - prevRectY) / 5 && mouseY < prevRectY + (newRectY - prevRectY) / 2 + 2 * (newRectY - prevRectY) / 5) {
        prevRectX += mouseX - prevX;
        newRectX += mouseX - prevX;
        prevRectY += mouseY - prevY;
        newRectY += mouseY - prevY;
      }
    }
    prevX = mouseX;
    prevY = mouseY;
  }
  noFill();
  stroke(0);
  rect(prevRectX, prevRectY, newRectX - prevRectX, newRectY - prevRectY);
  if (changed.equals("EndCrop")) {
    //println("Done!");
    fixCrop = false;
    Crop = false;
    firstMouseClick = false;
    
    /*
    loadPixels();
    for (int i = 0; i < pixels.length; i++) {
      pixels[i] = color((int)red(oldPixels[i]), (int)green(oldPixels[i]), (int)blue(oldPixels[i]));
    }
    updatePixels();
    */
    loadPixels();
    for (int i = 0; i < pixels.length; i++) {
      int x = i % width;
      int y = i / width;
      if (x > prevRectX && x < newRectX && y > prevRectY && y < newRectY) {
        continue;
      }
      pixels[i] = color(200);
    }
    if (image == null) {
      image(image,0,0);
    } else {
      background(200);
    }
    updatePixels();
  }
}
