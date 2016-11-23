import wordcram.*;
import wordcram.text.*;
import java.awt.*;
import processing.pdf.*;

void setup() {
  //fullScreen();
  size(600, 600, "PDF", "wordcloud.pdf");
  background(255);
  colorMode(HSB);
  PImage image = loadImage("circle.png");
  image.resize(width, height);

  Shape imageShape = new ImageShaper().shape(image, #000000);
  ShapeBasedPlacer placer = new ShapeBasedPlacer(imageShape);
  
  new WordCram(this)
      .fromTextFile("../text.txt")
      .withPlacer(placer)
      .withNudger(placer)
      .sizedByWeight(1, 160)
      .withColors(color(30), color(110), color(random(255), 0, 0))
      .angledAt(0)
      .withFont("Copse")
      .drawAll();
}