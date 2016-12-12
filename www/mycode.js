var plays = 0;
var end = 0;
var pause = 0;
var ends = 0;

// USED FUNCTIONS
// are below 

function playCounter(file) {
        plays = plays + 1;
        info = [file, plays];
        Shiny.onInputChange('plays_r', info);
}

function pauseCounter(file) {
        // Counting the number of pauses
        pause = pause + 1;
        info = [file, pause];
        Shiny.onInputChange('pause_r', info);
}

// UNUSED FUNCTIONS
// unused functions are below this line
//

function endCounter() {
        // Counting the number of time the audio file ended

        end = end + 1;
        alert(end);
}



function endCounter() {
        ends = ends + 1;
        alert(ends);
}
