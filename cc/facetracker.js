// facetracker [source] https://github.com/auduno/clmtrackr 
let osc, playing, freq, amp; 
let capture; 
let ctracker; 

function setup() {
  let cnv = createCanvas(400, 300);
  cnv.mousePressed(playOscillator);
  osc = new p5.Oscillator('sawtooth');
  capture = createCapture(VIDEO); // built-in p5 function to extract video input 
  capture.size(400, 300); 
  capture.hide(); 
  
  // starter code copied from github 
  ctracker = new clm.tracker();
  ctracker.init();
  ctracker.start(capture.elt); // capture *your video elements 'capture.elt'
}

function draw() {
  background(220); 
  image(capture, 0, 0); 
  
  var positions = ctracker.getCurrentPosition(); 
  let mouthDist; 
  // for each tracked face position / point... 
  if (positions){ 
    positions.forEach(pos => {
      fill(255, 255, 255); 
      noStroke(); 
      // 2D array => x, y, size 
      circle(pos[0], pos[1], 4.5);
    }); 
    
    // vector math => find mouth top and bottom '60'/'57' - taken from facetracker documentation 
    const mouthTop = createVector(positions[60][0], positions[60][1]); 
    const mouthBottom = createVector(positions[57][0], positions[57][1]); 
    // find magnitude / distance between top and bottom of mouth 
    mouthDist = mouthTop.sub(mouthBottom).mag(); // built-in p5 math library 
    //print(mouthDist); 
    
  }
  
  
  freq = constrain(map(mouthDist, 4, 17, 100, 500), 100, 500);
  amp = constrain(map(mouthDist, 4, 17, 0, 1), 0, 1);

  // text('tap to play', 20, 20);
  // text('freq: ' + freq, 20, 40);
  // text('amp: ' + amp, 20, 60);

  if (playing) {
    // smooth the transitions by 0.1 seconds
    osc.freq(freq, 0.1);
    osc.amp(amp, 0.1);
  }
}

function playOscillator() {
  // starting an oscillator on a user gesture will enable audio
  // in browsers that have a strict autoplay policy.
  // See also: userStartAudio();
  osc.start();
  playing = true;
}

function mouseReleased() {
  // ramp amplitude to 0 over 0.5 seconds
  osc.amp(0, 0.5);
  playing = false;
}