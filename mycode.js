var plays = 0;
var end = 0;
var pause = 0;
var ends = 0;

function playCounter() {
        plays = plays + 1;
        Shiny.onInputChange('plays', plays);
        alert(plays);
}

function endCounter() {
        end = end + 1;
        alert(end);
}

function pauseCounter() {
        pause = pause + 1;
        Shiny.onInputChange('record.R', pause);
        alert(pause);
}

function endCounter() {
ends = ends + 1;
alert(ends);
}
