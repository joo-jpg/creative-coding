//Procedural Description of Building the Wall 
//Pseudocode == conveys essence of a process, omits actual computer code, idea process 

void setup() { 
  //divide blocks based on colour
} 

void draw() { 
  if (beginning_of_row) { 
    if (even_row) { 
      chooseRandomBigBlock(); 
      placeBlockStart();
    } else { 
      chooseRandomSmallBlock(); 
      placeBlockStart();
    }
  } else if (end_of_row) { 
    if (even_row) { 
      chooseRandomBigBlock(); 
      placeBlockEnd();
    } else { 
      chooseRandomSmallBlock(); 
      placeBlockEnd();
    }
  } else { 
    chooseRandomBigBlock(); 
    placeBlockNext();
  }
}

void chooseRandomBigBlock() { 
  //choose a random big block
} 

void chooseRandomSmallBlock() { 
  //choose a random big block
}

void placeBlockStart() { 
  //place block at start of row
} 

void placeBlockNext() { 
  //place block in next position
} 

void placeBlockEnd() { 
  //place block at end of row
} 
