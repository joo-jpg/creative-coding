void setup() {
} 

void draw() {
  if ("ride along street") { 
    feet("pedal");
  } else if ("downhill") { 
    feet("coast");
  } else if ("avoid obstacle") { 
    hand("turn left");
  } else if ("stop at light") { 
    feet("coast"); 
    hand("shift down"); 
    hand("stop"); 
    feet("uncleat");
  } else if ("start from light") { 
    feet("cleat"); 
    feet("pedal"); 
    hand("shift up");
  }
} 

void hand(String whattodo) { 
  if (whattodo == "turn right") { 
    // move right hand back
    // move left hand forward
  } else if (whattodo == "turn left") { 
    // move right hand forward
    // move left hand back
  } else if (whattodo == "stop") { 
    while (notstopped) { 
      //pull brake levers
    }
  } else if (whattodo == "shift up") { 
    //press large lever
  } else if (whattodo == "shift down") { 
    //press small lever
  }
}

void feet(String whattodo) { 
  if (whattodo == "pedal") { 
    // move feet in circles
  } else if (whattodo == "coast") { 
    // keep feet still
  } else if (whattodo == "coastcorner") { 
    //keep feet still with turn side foot up
  } else if (whattodo == "uncleat") { 
    //remove one foot from pedal 
    //put foot on ground
  } else if (whattodo == "cleat") { 
    //lift foot from ground 
    //put foot into pedal
  }
} 
