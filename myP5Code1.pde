setup = function() {
    size(600, 400);
};

//Background Images
var dubaiSceneImage = loadImage("https://lp-cms-production.imgix.net/features/2017/09/dubai-marina-skyline-2c8f1708f2a1.jpg?auto=compress&format=auto&fit=crop&q=50&w=1200&h=800");

var singaporeImage = loadImage("https://i.natgeofe.com/k/95d61645-a0c7-470f-b198-74a399dd5dfb/singapore-city_2x1.jpg​s");

//Variable Declarations
var sceneImage = dubaiSceneImage;
var placeImage = singaporeImage
var sceneText = "Where do you want to go? [Press w for forest and s for singapore]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'w'){
      placeImage = singaporeImage;   
       sceneText = "No foxs here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = singaporeImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};



