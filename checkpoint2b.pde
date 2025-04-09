//Mar 29
//Alice Wang

PImage buttonImg;
//palette
color red1 = color(250, 139, 53);
color red2 = color(255, 99, 71);
color blue1 = color(0, 191, 255);
color blue2 = color(70, 130, 180);
color green1 = color(60, 179, 113);
color green2 = color(14, 113, 38);
color gold1 = color(170, 50, 90);
color gold2 = color(255, 215, 0);


Button myButtons[];

color background;


boolean clicked;
boolean mouseReleased;
boolean wasPressed;


void setup() {
  size(600, 600);
  
  buttonImg = loadImage("Gold Text Effect copy.png");
  if (buttonImg == null) {
  println("Button image is null!");
}

  myButtons = new Button[4];

  myButtons[0] = new Button("Red", 150, 100, 200, 150, red2, red1);
  myButtons[1] = new Button("Blue", 125, 375, 150, 375, blue2, blue1);
  myButtons[2] = new Button("Green", 400, 490, 350, 200, green2, green1);
  myButtons[3] = new Button(buttonImg, 450, 200, 350, 350, gold2, gold1);
}

void draw() {

  click();

  rectMode(CENTER);

  background(background);
  for (int i = 0; i < 4; i++) {
    myButtons[i].show();
    if (myButtons[i].clicked && mouseReleased) {
      background = myButtons[i].normal;
    }
  }
}
