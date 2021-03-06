// ANIMATING THE CURSOR

boolean isAnimating = false;
boolean overButton = false;
int baseFrameCount = 0;

void DenkoCursor(){
  
  int currentAnimationFrame = frameCount % 100;
  fill(255, 255, 255, 40);

// TRACK FPS & ANIMATION (OPTIONAL)
/*
  textAlign(LEFT);
  text("Frame Count: " + frameCount, 50, 50);
  text("Current Animation Frame: " + currentAnimationFrame, 50, 85);
*/
  
  if (currentAnimationFrame < 5) {
    image(dSprites[1], mouseX, mouseY);
  } else if (currentAnimationFrame >= 5 && currentAnimationFrame <= 10) {
    image(dSprites[2], mouseX, mouseY);
  } else if (currentAnimationFrame >= 10 && currentAnimationFrame <= 15) {
    image(dSprites[1], mouseX, mouseY);
  } else {
    image(dSprites[0], mouseX, mouseY);
  }
  
}

void WebCursor(){
  cursor.resize(15,0);
  image(cursor, mouseX, mouseY);


}

void XCursor(){
  xcursor.resize(400,0);
  imageMode(CORNER);
  image(xcursor, mouseX, mouseY);


}