int prevFrame;
int[] prevPixels;

void Pencil(String changed) {
  R = int(brcValue("Red"));
  G = int(brcValue("Green"));
  B = int(brcValue("Blue"));
  stroke(color(R, G, B));
  strokeWeight(int(brcValue("Size")));
  loadPixels();
  prevPixels = new int[pixels.length];
  arrayCopy(pixels, prevPixels);
  circle(mouseX, mouseY, int(brcValue("Size")) / 2);
  arrayCopy(prevPixels, pixels);
  updatePixels();
  if (mousePressed) {
    if (frameCount == prevFrame + 1) {
        line(prevX, prevY, mouseX, mouseY);
      }
      prevX = mouseX;
      prevY = mouseY;
      prevFrame = frameCount;
    }
    if (changed.equals("EndPencil")) {
      Pencil = false;
    }
  }
