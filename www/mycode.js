var plays = 0;
var end = 0;
var pause = 0;
var ends = 0;

function playCounter() {
        plays = plays + 1;
        Shiny.onInputChange('plays_r', plays);
}

function endCounter() {
        // Counting the number of time the audio file ended

        end = end + 1;
        alert(end);
}

function pauseCounter() {
        // Counting the number of pauses
        pause = pause + 1;
        Shiny.onInputChange('record.R', pause);
        alert(pause);
}

function endCounter() {
ends = ends + 1;
alert(ends);
}
