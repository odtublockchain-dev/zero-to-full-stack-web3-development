const nameInput = document.getElementById("nameInput");
const greetBtn = document.getElementById("greetBtn");
const greetingMessage = document.getElementById("greetingMessage");
const repeatBtn = document.getElementById("repeatBtn");

greetBtn.addEventListener("click", function () {
  const userName = nameInput.value;

  if (userName) {
    const message = "Hello, " + userName + "! Welcome to the Greeting App!";
    greetingMessage.textContent = message;
  } else {
    alert("Please enter your name!");
  }
});

repeatBtn.addEventListener("click", function () {
  const userName = nameInput.value;

  if (userName) {
    greetingMessage.textContent = "";
    for (let i = 0; i < 3; i++) {
      greetingMessage.textContent += "Hello, " + userName + "! ";
    }
  } else {
    alert("Please enter your name!");
  }
});
