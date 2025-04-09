class Button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage img;

  //Label
  Button(String t, int _x, int _y, int _w, int _h, color _normal, color _highlight) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    normal = _normal;
    highlight = _highlight;
    clicked = false;
    text = t;
  }

  //Image
  Button(PImage _img, int _x, int _y, int _w, int _h, color _normal, color _highlight) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    normal = _normal;
    highlight = _highlight;
    clicked = false;
    img = _img;
  }



  boolean touchingMouse() {
    return mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2;
  }

  void show() {

    drawButtonBody();

    if (text != null && !text.equals("")) {
      labelButton();
    }
    checkForClick();
  }

  void drawButtonBody() {

    if (touchingMouse()) {
      fill(highlight);
    } else fill(normal);

    stroke(0);
    strokeWeight(3);

    rectMode(CENTER);
    rect(x, y, w, h, 30);
    
    imageMode(CENTER);

    if (img != null) {
      image(img, x, y, w*0.8, h/2*0.8);
    }
  }

  void labelButton() {

    if (touchingMouse()) {
      fill(225);
    } else {
      fill(0);
    }

    textAlign(CENTER, CENTER);
    textSize(w/8);
    text(text, x, y);
  }

  boolean checkForClick() {
    if (touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
    return clicked;
  }
}
