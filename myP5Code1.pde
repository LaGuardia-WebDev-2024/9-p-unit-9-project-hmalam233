setup = function() {
    size(600, 400);
};

//Background Images
var dubaiSceneImage = loadImage("https://lp-cms-production.imgix.net/features/2017/09/dubai-marina-skyline-2c8f1708f2a1.jpg?auto=compress&format=auto&fit=crop&q=50&w=1200&h=800");

var singaporeImage = loadImage("https://images.goway.com/production/styles/wide/s3/featured_images/shutterstock_1116483092.jpg?VersionId=TdMumBsWTDvKGaT6bbv.b5XO4PZqWzwf&itok=qRqmrUHQ​s");

var ghanaImage = 
loadImage("https://abudhabi.mfa.gov.gh/uploads/SectionImages/9543_glance1.jpg");

var argentinaImage =
loadImage("https://lp-cms-production.imgix.net/2024-08/shutterstock1338447983.jpg?auto=format&q=72&w=1440&h=810&fit=crop");

var chipotleImage =
loadImage("https://mma.prnewswire.com/media/1947967/500th_Chipotlane_exterior_credit_Tim_Furlong_Jr.jpg?w=2700");



//Variable Declarations
var placeImage = dubaiSceneImage;
var sceneImage = singaporeImage;
var sceneText = "Where do you want to go? [Press S for first destination]";

draw = function(){
    
   drawScene();


   if(keyPressed){
    if(key == 'd'){
      placeImage = dubaiSceneImage;
      sceneText = "Where do you want to go?  [Press S for first location]";
     }
  
     if(key == 's'){
      placeImage = singaporeImage;   
      sceneText = "Singapore! would you like to visit here? press G for next location";
     } 
    
      
     if(key == 'g'){
     placeImage = ghanaImage;
     sceneText = "Ghana! would you like to visit here? press A for next location"
     }
     
     if(key == 'a'){
     placeImage = argentinaImage;
     sceneText = "Argentina!, would you like to visit here? Press c for next location"
     }
     
     if(key == 'c'){
     placeImage = chipotleImage;
     sceneText = "your home sweet home!! press d to restart!"
    
     }
     
    }
      
     if(mousePressed){
text("world", random(0,600), random (0,400)); 
      
     
   }
  

}

var drawScene = function(){
    image(placeImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};



