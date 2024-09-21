{
  "$GMObject":"",
  "%Name":"obj_mob",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":10,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_mob",
  "overriddenProperties":[],
  "parent":{
    "name":"obj_mobs",
    "path":"folders/Objects/obj_mobs.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"velocity","filters":[],"listItems":[],"multiselect":false,"name":"velocity","rangeEnabled":true,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"touch_damage","filters":[],"listItems":[],"multiselect":false,"name":"touch_damage","rangeEnabled":true,"rangeMax":20.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"idle_movement","filters":[
        "GMScript",
      ],"listItems":[],"multiselect":false,"name":"idle_movement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"noone","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"health_points","filters":[],"listItems":[],"multiselect":false,"name":"health_points","rangeEnabled":true,"rangeMax":100.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"can_defend","filters":[],"listItems":[],"multiselect":false,"name":"can_defend","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_fly","filters":[],"listItems":[],"multiselect":false,"name":"can_fly","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_sprint","filters":[],"listItems":[],"multiselect":false,"name":"can_sprint","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_attack","filters":[],"listItems":[],"multiselect":false,"name":"can_attack","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_move","filters":[],"listItems":[],"multiselect":false,"name":"can_move","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"can_view","filters":[],"listItems":[],"multiselect":false,"name":"can_view","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"is_frozen","filters":[],"listItems":[],"multiselect":false,"name":"is_frozen","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"frozen_time","filters":[],"listItems":[],"multiselect":false,"name":"frozen_time","rangeEnabled":true,"rangeMax":300.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"sprite_up_movement","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_up_movement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_mob_up","path":"sprites/spr_mob_up/spr_mob_up.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_mob_up","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_right_movement","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_right_movement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_mob_right","path":"sprites/spr_mob_right/spr_mob_right.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_mob_right","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_down_movement","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_down_movement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_mob_down","path":"sprites/spr_mob_down/spr_mob_down.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_mob_down","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_left_movement","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_left_movement","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_mob_left","path":"sprites/spr_mob_left/spr_mob_left.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_mob_left","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_idle_up","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_idle_up","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_idle_right","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_idle_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_idle_down","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_idle_down","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_idle_left","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"sprite_idle_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_attack_up","filters":[],"listItems":[],"multiselect":false,"name":"sprite_attack_up","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_attack_down","filters":[],"listItems":[],"multiselect":false,"name":"sprite_attack_down","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_attack_left","filters":[],"listItems":[],"multiselect":false,"name":"sprite_attack_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"sprite_attack_right","filters":[],"listItems":[],"multiselect":false,"name":"sprite_attack_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"death_sound","filters":[
        "GMSound",
      ],"listItems":[],"multiselect":false,"name":"death_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"snd_hit","path":"sounds/snd_hit/snd_hit.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"snd_hit","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"hitted_sound","filters":[
        "GMSound",
      ],"listItems":[],"multiselect":false,"name":"hitted_sound","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"snd_hit","path":"sounds/snd_hit/snd_hit.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"snd_hit","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"is_hitted","filters":[],"listItems":[],"multiselect":false,"name":"is_hitted","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"attack_cooldown","filters":[],"listItems":[],"multiselect":false,"name":"attack_cooldown","rangeEnabled":true,"rangeMax":300.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"attack_range","filters":[],"listItems":[],"multiselect":false,"name":"attack_range","rangeEnabled":true,"rangeMax":640.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_mob",
    "path":"sprites/spr_mob/spr_mob.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}