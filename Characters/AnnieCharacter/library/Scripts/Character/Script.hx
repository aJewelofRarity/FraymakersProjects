//var MYTESTVAR = 69;

var NEUTRAL_SPECIAL_COOLDOWN = 60;

var NSPEC_PROJ_X_OFFSET = 72;
var NSPEC_PROJ_Y_OFFSET = 0;

var grabbedFoe:Character = self.makeObject(null);
var neutralSpecialProjectile = self.makeObject(null); // Tracks active Neutral Special projectile (in case we need to handle any special cases)
var lastDisabledNSpecStatusEffect = self.makeObject(null);
var neutralSpecialDisabled = self.makeBool(false);

var downSpecHits = self.makeInt(0);
var downSpecMaxHits:Int = 3;

var allowFSpecialFollow = self.makeBool(false);

var burstHud:Sprite = null;
var burstResource = self.makeFloat(45);
var burstResourceMax:Float = 100;

var hasFloat = self.makeBool(true);

function setAngleSpeed(angle:Float, speed:Float) {
  var rads:Float = -angle * (Math.PI / 180);
  var m_X:Float = Math.cos(rads);
  var m_Y:Float = Math.sin(rads);
  self.setXSpeed(m_X * speed);
  self.setYSpeed(m_Y * speed);
}

function animationGravityMultiplier(val:Float) {
  self.updateAnimationStats({gravityMultiplier: val});
}

//projectile
function fireNSpecialProjectile(){
    Engine.log("projectile");
    neutralSpecialProjectile.set(match.createProjectile(self.getResource().getContent("PcrescentcutChara"), self));
    neutralSpecialProjectile.get().setX(self.getX() + self.flipX(NSPEC_PROJ_X_OFFSET));
    neutralSpecialProjectile.get().setY(self.getY() + NSPEC_PROJ_Y_OFFSET);
}

//cooldown timer
function startNeutralSpecialCooldown(){
    disableNeutralSpecial();
    self.addTimer(NEUTRAL_SPECIAL_COOLDOWN, 1, enableNeutralSpecial, {persistent:true});
}

function disableNeutralSpecial(){
    if (lastDisabledNSpecStatusEffect.get() != null) {
        self.removeStatusEffect(StatusEffectType.DISABLE_ACTION, lastDisabledNSpecStatusEffect.get().id);
    }
    lastDisabledNSpecStatusEffect.set(self.addStatusEffect(StatusEffectType.DISABLE_ACTION, CharacterActions.SPECIAL_NEUTRAL));
    neutralSpecialDisabled.set(true);
}

function enableNeutralSpecial(){
    if (lastDisabledNSpecStatusEffect.get() != null) {
        self.removeStatusEffect(StatusEffectType.DISABLE_ACTION, lastDisabledNSpecStatusEffect.get().id);
        lastDisabledNSpecStatusEffect.set(null);
        neutralSpecialDisabled.set(false);
    }
}

function checkBurst() {
  if (!neutralSpecialDisabled.get() && burstResource.get() < burstResourceMax) {
    self.toState(CState.SPECIAL_NEUTRAL);
  } else if (neutralSpecialDisabled.get() && burstResource.get() < burstResourceMax) {
    self.playAnimation("revival");
  }

  if (burstResource.get() >= burstResourceMax) {
    self.resetMomentum();
    burstResource.set(0);
  }
}

function checkGrabbed() {
  if (CState.constToString(grabbedFoe.get().getState()) != "HELD") {
    grabbedFoe.get().setVisible(true);
    grabbedFoe.set(null);
  }
}

function resetActions() {
  hasFloat.set(true);
  downSpecHits.set(0);
}

function initialize(){
    Engine.log("Initialized Annie Start");

    self.exports = {
      getBurst: function () {
        return burstResource;
      },

      getBurstSprite: function() {
        return burstHud;
      }
    };

    self.addEventListener(EntityEvent.STATE_CHANGE, function() {
      if ((self.getState() == CState.KO)) {
        burstResource.add(25);
        if (burstResource.get() > burstResourceMax) {burstResource.set(burstResourceMax);}
      }
    }, {persistent: true});

    self.addEventListener(GameObjectEvent.GRAB_DEALT, function(event:GameObjectEvent) {
      grabbedFoe.set(event.data.foe);
      grabbedFoe.get().setVisible(false);
    }, {persistent: true});

    self.addEventListener(GameObjectEvent.LAND, resetActions);
    
    burstHud = Sprite.create(self.getResource().getContent("annieBurstMeter"));
    burstHud.scaleX = 0.60;
    burstHud.scaleY = 0.60;
    burstHud.x = 81;
    burstHud.y = -3;

    self.getDamageCounterContainer().addChild(burstHud);

    Engine.log("Initialized Annie End");
}

function update(){
  burstHud.currentFrame = Math.floor(burstResource.get());
   
  if (burstResource.get() < burstResourceMax) {
    burstResource.add(0.03);
  }

  if (burstResource.get() >= burstResourceMax) {
    burstResource.set(burstResourceMax);
  }

  if (grabbedFoe.get() != null) {
    checkGrabbed();
  }
}

function onTeardown(){
}
