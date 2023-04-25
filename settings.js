// JavaScript source code from https://www.w3schools.com/howto/howto_js_rangeslider.asp
var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function () {
    output.innerHTML = this.value;
}

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
function displayModal() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
function closeModal () {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
function closeModal (event) {
if (event.target == modal) {
    modal.style.display = "none";
    }
}
