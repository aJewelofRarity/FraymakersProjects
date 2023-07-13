var hudSprite:Sprite = null;
var floorTick = 0;
var floorTickMax = 30;
var myOwner:GameObject = null;
var gainRate = 0.3;
var decayRate = 0.5;

function initialize(){
    Engine.log("I have spawned");
    Engine.log(self.getOwner().getResource().getContent());
    myOwner = self.getOwner();
    hudSprite = Sprite.create("floorMeter");
    hudSprite.scaleY = 0.74;
    hudSprite.scaleX = 0.76;
    hudSprite.x = 95;
    hudSprite.y = 37;
    myOwner.getDamageCounterContainer().addChild(hudSprite);
}

function update(){
    hudSprite.currentFrame = Math.floor(floorTick);
    if ((myOwner.isOnFloor() == true) && (floorTick < floorTickMax)) {
        floorTick += gainRate;
        if (floorTick > floorTickMax) {floorTick = floorTickMax;}
    } else if ((myOwner.isOnFloor() == false) && (floorTick > 0)) {
        floorTick -= decayRate;
        if (floorTick < 0) {floorTick = 0;}
    }
    if (floorTick == floorTickMax) {
        myOwner.addDamage(0.25);
    }
}

function onTeardown(){
}