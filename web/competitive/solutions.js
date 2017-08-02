process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

/////////////// ignore above this line ////////////////////

function rotate(m, n, r, matrix) {
    for (var k = 0; k < r; k++) {
        for (var i = 0; i < m; i++) {
            for (var j = 0; j < n; j++) {

            }
        }
    }
}
function main() {
    var dimensions = readLine().split(' ');
    var m = dimensions[0];
    var n = dimensions[1];
    var r = dimensions[2];
    var matrix = [];
    for (var i = 0; i < m; i++) {
        matrix[i] = readLine().split(' ');
    }

    readLine();
    console.log(res);
}
