# **Week 3 / Workshop 5 / JavaScript Basics**

## 1. Introduction

### What is JavaScript?

- JavaScript is a programming language used to add interactive features to web pages.
- It can respond to user interactions like button clicks, form submissions, etc.

### The role of JavaScript in web development:

- **HTML**: Provides the structure (headings, paragraphs, forms).
  - HTML is essentially the "skeleton" of a webpage. It organizes and describes the elements of a page using tags and attributes. HTML tags tell the browser what type of content is on the page and how to structure it.
- **CSS**: Provides the appearance (color, size, layout).
  - CSS (Cascading Style Sheets) is responsible for the visual presentation of a webpage, allowing developers to style and layout HTML elements by applying colors, fonts, spacing, and positioning to enhance the design and user experience.
- **JavaScript**: Provides dynamic behaviors and interactivity.
  - JavaScript is the programming language that adds interactivity and dynamic behavior to a webpage, allowing developers to manipulate content, handle user events, and create responsive features such as form validation, animations, and real-time updates.

### The relationship between JavaScript, HTML, and CSS:

- JavaScript can access and modify HTML elements dynamically.
- It can also changsse CSS styles based on user interactions.

<br>
<br>
<br>

## 2. Two main ways of linking your JavaScript to your HTML file

### 2.1. External JavaScript File (Recommended Method):

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>JS Introduction</title>
    <!-- In the head or at the end of body -->
    <script src="script.js"></script>
  </head>
  <body>
    <h1>Hello JavaScript!</h1>
  </body>
</html>
```

- Code Location: JavaScript is stored in a separate `.js` file and linked to the HTML document using the `<script>` tag.
- Advantages:
  - Separation of Concerns: Keeps HTML structure and JavaScript logic separate, making the code more modular and easier to maintain.
  - Reusability: The same JavaScript file can be used across multiple HTML pages.
  - Improved Load Times: Browsers can cache the external JavaScript file, improving performance.
- Disadvantages: Requires an additional HTTP request to fetch the external script, though this is usually minor.

### 2.2. Internal JavaScript (Script tags in HTML):

- Between the `<head>`tags

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>Internal JavaScript between the head tags</title>
      <script>
        // Your JavaScript code here
        function greet() {
          alert("Hello!");
        }
      </script>
    </head>
    <body>
      <h1>Hello JavaScript!</h1>
    </body>
  </html>
  ```

  - Code Location: JavaScript is embedded directly within the <head> tag.

  - Advantages:

    - Easy to Add: Good for small scripts or cases where the script is not reusable.
    - Immediate Parsing: The script is parsed before the content in the body is loaded, so it’s useful for tasks that need to run before the page fully loads (though this can be inefficient).

  - Disadvantages:
    - Blocking Behavior: The browser stops rendering the page while it downloads and executes the script, which can slow down page load times.
    - Limited Access: Can’t directly interact with elements in the `<body>` because the DOM is not fully loaded when the script runs.

<br>
<br>
  
- In the `<body>`tags
  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>Internal JavaScript in the body tags</title>
    </head>
    <body>
      <div id="myElement">Content</div>
      <script>
        // Can directly access elements above
        const element = document.getElementById("myElement");
      </script>
    </body>
  </html>
  ```
  - Code Location: JavaScript is placed inside the <body> tag, typically at the end.

- Advantages:
  - Direct Access to DOM: Since the script is executed after the DOM elements are loaded, it can interact with them immediately (like accessing `getElementById`).
  - Improved Load Performance: The HTML content loads first, making the page visible to the user before the JavaScript runs.
- Disadvantages:
  - Not Modular: Like the internal script in `<head>`, placing JavaScript inside the `<body>` mixes the structure (HTML) and behavior (JavaScript), making the code less modular and harder to maintain for large projects.

### 2.3. Summart of Differences

- **External JavaScript**: Best for larger, reusable scripts across multiple pages. It keeps HTML clean and improves performance through caching.
- **Internal JavaScript in `<head>`**: Useful for small, non-reusable scripts, but it can block page rendering and doesn’t have access to elements in the `<body>` until they are loaded.
- **Internal JavaScript in `<body>`**: Allows immediate access to DOM elements but is less modular and should be avoided for larger projects.

<br>
<br>
<br>

## 3. Basic JavaScript Syntax

### Variables

- `var`, `let`, `const`: Used to store values.
- `var`: The older way of declaring variables, but let and const are preferred today.
- `let`: Can be declared within a block and is changeable.
  - `let` is a block-scoped variable declaration that allows developers to define variables that can be reassigned, providing more control over variable scope and preventing issues related to variable hoisting; it is useful when the variable value needs to change throughout the program.
- `const`: A constant, meaning its value cannot be changed.

  - In contrast, `const` is also block-scoped but is used to declare variables that cannot be reassigned after their initial value is set, making it ideal for constants or objects that should not change, although the properties of an object declared with `const` can still be modified.

- Example of variable declaration
  ```javascript
  let name = "Ali";
  const age = 25;
  console.log(name, age);
  ```

### Data Types

- String: Represents text. Example: `"Hello"`.
- Number: Represents numerical values. Example: `42`.
- Boolean: Represents true or false. Example: `true`, `false`.
- Array: A list of values. Example: `[1, 2, 3]`.
- Object: A collection of key-value pairs. Example: `{ name: "Ali", age: 25 }`.

### Operators and Expressions

- Assignment operator: `=`

  - The assignment operator is used to assign a value to a variable. It takes the expression on its right side and assigns it to the variable on its left side. This operator does not check equality; it simply performs the assignment action.
  - Example:
    ```javascript
    let x = 5; // Here, x is assigned the value 5.
    let y = x; // Here, y is assigned the value of x, so y is also 5.
    ```

- Comparison operators:

  - Equality: `==`

    - The Equality operator checks if two values are "loosely equal." This means it performs type coercion, converting both values to a common type before comparison. Because of type coercion, == can sometimes produce unexpected results if the types are different.
    - Example:
      ```javascript
      5 == "5"; // true, because '5' (string) is converted to 5 (number) before comparison.
      0 == false; // true, because false is converted to 0 before comparison.
      ```

  - Strict Equality: `===`
    - The Strict Equality operator checks if two values are "strictly equal." Unlike ==, it does not perform type coercion, meaning both the value and the type must be the same for the comparison to return true. This is generally the preferred comparison operator because it is more predictable and avoids unexpected behavior due to type coercion.
    - Example:
      ```javascript
      5 === "5"; // false, because one is a number and the other is a string.
      0 === false; // false, because one is a number and the other is a boolean.
      5 === 5; // true, both are the same value and type.
      ```

- Arithmetic operators: `+`Ï, `-`, `*`, `/`

  - Examples:

    ```javascript
    let a = 5 + 3; // a is 8 (number addition).
    let b = "Hello" + " World"; // b is 'Hello World' (string concatenation).
    let c = 5 + "3"; // c is '53' (number converted to string, then concatenated).

    let a = 10 - 4; // a is 6.
    let b = "10" - 4; // b is 6, because '10' (string) is converted to 10 (number) before subtraction.

    let a = 5 * 3; // a is 15.
    let b = "5" * 3; // b is 15, because '5' (string) is converted to 5 (number) before multiplication.

    let a = 10 / 2; // a is 5.
    let b = "10" / 2; // b is 5, because '10' (string) is converted to 10 (number) before division.
    let c = 10 / 0; // c is Infinity, because dividing by zero returns Infinity in JavaScript.
    ```

- Logical Operators

  - Logical AND (`&&`): The `&&` operator evaluates to `true` only if both operands (expressions) are `true`. If either operand is `false`, the entire expression evaluates to `false`.

    - **Short-circuiting behavior:** JavaScript will evaluate the first operand. If it is `false`, it will immediately return `false` without evaluating the second operand, because the entire expression cannot be `true`. If the first operand is `true`, it will evaluate the second operand and return its value.
    - Examples:

      ```javascript
      true && true; // true
      true && false; // false
      false && true; // false
      false && false; // false

      // Short-circuit behavior
      let a = 5;
      let result = a > 3 && a < 10; // true, both conditions are true

      // Example with non-Boolean values
      let x = 0 && "Hello"; // 0, because 0 is "falsy"
      let y = "Hello" && "World"; // 'World', because both are "truthy" and returns the last value
      ```

  - Logical OR (`||`): The `||` operator evaluates to `true` if either operand is `true`. If both operands are `false`, it evaluates to `false`.

    - **Short-circuiting behavior:** JavaScript will evaluate the first operand. If it is true, it will immediately return true without evaluating the second operand because the entire expression cannot be false. If the first operand is false, it will evaluate the second operand and return its value.
    - Examples:

      ```javascript
      true || false; // true
      false || true; // true
      false || false; // false
      true || true; // true

      // Short-circuit behavior
      let a = 5;
      let result = a > 3 || a < 2; // true, because the first condition is true

      // Example with non-Boolean values
      let x = 0 || "Hello"; // 'Hello', because 0 is "falsy" and 'Hello' is "truthy"
      let y = "Hello" || "World"; // 'Hello', because it returns the first "truthy" value
      ```

  - Logical NOT (`!`): The `!` operator is the logical NOT operator and is a unary operator (it operates on a single operand). It inverts the Boolean value of the operand:

    - `true` becomes `false`
    - `false` becomes `true`

    - Examples:

      ```javascript
      !true; // false
      !false; // true

      let a = 5;
      let result = !(a > 3); // false, because (a > 3) is true, and `!` inverts it to false

      // Double NOT for coercion
      !!0; // false, because 0 is "falsy"
      !!"Hello"; // true, because 'Hello' is "truthy"
      ```

  - Truthy and Falsy Values in Logical Operations: In JavaScript, logical operators don't always return `true` or `false` directly, as they often return one of the operands. The values in JavaScript are classified as:

    - **"Truthy" values:** Evaluated as `true` in a Boolean context (e.g., non-empty strings, non-zero numbers, objects, arrays).
    - **"Falsy" values:** Evaluated as `false` in a Boolean context (e.g., 0, "" (empty string), null, undefined, NaN, false).

  - Combining Logical Operators: Logical operators can be combined to form complex logical expressions.

    - Example:

      ```javascript
      let age = 25;
      let hasID = true;

      // Check if the person is allowed to enter (must be 21+ and have an ID)
      let canEnter = age >= 21 && hasID; // true, both conditions are met

      // Check if the person can get a discount (under 18 or over 65)
      let isEligibleForDiscount = age < 18 || age > 65; // false, neither condition is met
      ```

<br>
<br>
<br>

## 4. Basic Control Structures

### Conditional Statements

- Used to execute different code blocks based on conditions.
- `if`
  - The `if` statement evaluates a specified condition and executes a block of code if that condition is true.
- `else if`
  - The `else if` statement allows for the evaluation of additional conditions if the previous if statement was false, enabling multiple conditions to be checked sequentially
- `else`

  - The `else` statement provides a default block of code to execute if none of the preceding conditions are met.

- Example code snippet:

  ```javascript
  let score = 85;

  if (score >= 90) {
    console.log("Grade: A");
  } else if (score >= 80) {
    console.log("Grade: B");
  } else {
    console.log("Grade: C");
  }
  ```

### Loops

- Used to repeat a block of code multiple times.
- `for` Loop

  - The `for` loop is a control structure that allows developers to iterate over a sequence (like an array or a range of numbers) by defining an initialization, a condition, and an increment expression in a single line, making it suitable for situations where the number of iterations is known beforehand.
    ```javascript
    for (let i = 0; i < 5; i++) {
      console.log(i); // Outputs: 0, 1, 2, 3, 4
    }
    ```
    - In this example, the `for` loop initializes `i` to 0 and increments it by 1 until `i` is no longer less than 5, logging the values 0 through 4 to the console.

- `while` Loop
  - In contrast, the `while` loop continues to execute a block of code as long as a specified condition evaluates to true, which is useful when the number of iterations is not predetermined.
    ```javascript
    let j = 0;
    while (j < 5) {
      console.log(j); // Outputs: 0, 1, 2, 3, 4
      j++;
    }
    ```
    - In this example, the `while` loop checks the condition `j < 5` and continues to execute the block that logs `j` to the console and increments `j` until the condition becomes false, resulting in the same output as the `for` loop.

### Functions

- A function in JavaScript is a reusable block of code that performs a specific task, defined by a name, a set of parameters (optional), and a body containing the code to be executed when the function is called, enabling developers to encapsulate logic and promote code reuse and modularity.

- Example code snippet:

  ```javascript
  function greet(name) {
    return `Hello, ${name}!`;
  }

  console.log(greet("Alice")); // Outputs: Hello, Alice!
  ```

  - In this example, the function `greet` takes one parameter, `name`, and returns a greeting string that incorporates the provided name; when called with the argument "Alice", it outputs "Hello, Alice!" to the console.

  <br>
  <br>
  <br>

## 5. DOM Manipulation Basics

### What is the DOM?

- The Document Object Model (DOM) represents the structure of a web page.
- JavaScript can be used to access and modify HTML elements dynamically through the DOM.
- Detailed definition: The Document Object Model (DOM) is a programming interface for web documents that represents the structure of a webpage as a tree of objects, where each element, attribute, and piece of text within the HTML is a node, allowing developers to access and manipulate the content, structure, and style of a document dynamically using languages like JavaScript, thereby enabling interactive and responsive web experiences.

### Accessing HTML elements:

- Methods like `getElementById`, `querySelector` allow you to select specific elements from the page.

- `getElementById` Example code snippet:

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>DOM Manipulation</title>
    </head>
    <body>
      <h1 id="heading">Heading</h1>
      <button id="changeBtn">Change Heading</button>

      <script>
        const button = document.getElementById("changeBtn");
        button.addEventListener("click", function () {
          const heading = document.getElementById("heading");
          heading.textContent = "New Heading!";
        });
      </script>
    </body>
  </html>
  ```

- `querySelector` Example code snippet:
  ```javascript
  let element = document.querySelector("#myId"); // This will select the element with id="myId"
  let element = document.querySelector(".myClass"); // This will select the first element with class="myClass"
  let element = document.querySelector("div"); // This will select the first <div> element in the DOM
  let element = document.querySelector(".container .item"); // This will select the first element with class="item" inside an element with class="container"
  ```

### Adding event listeners:

- The `addEventListener` method in JavaScript allows developers to attach event handlers to DOM elements, enabling them to respond to user interactions and other events without interfering with other event handlers on the same element. Here are some common event types that can be used with `addEventListener`, including the click event:

- `click` Event

  - The `click` event is triggered when the user clicks on an element, making it commonly used for buttons and links. This event allows developers to execute a function when the user interacts with the element.
    ```javascript
    const button = document.getElementById("myButton");
    button.addEventListener("click", function () {
      alert("Button clicked!");
    });
    ```
    - In this example, an alert will pop up when the button with the ID myButton is clicked.

- `mouseover` Event

  - The `mouseover` event occurs when the mouse pointer enters an element, allowing developers to implement hover effects or display additional information.
    ```javascript
    const box = document.getElementById("myBox");
    box.addEventListener("mouseover", function () {
      box.style.backgroundColor = "lightblue";
    });
    ```
    - Here, the background color of myBox changes to light blue when the mouse hovers over it.

- `keydown` Event

  - The `keydown` event is fired when a key is pressed down on the keyboard, making it useful for handling keyboard inputs and shortcuts.
    ```javascript
    document.addEventListener("keydown", function (event) {
      console.log(`Key pressed: ${event.key}`);
    });
    ```
    - This example logs the name of the key pressed to the console, enabling developers to capture user keyboard actions.

- `submit` Event

  - The `submit` event is triggered when a form is submitted, allowing developers to validate form data or prevent the default form submission behavior.
    ```javascript
    const form = document.getElementById("myForm");
    form.addEventListener("submit", function (event) {
      event.preventDefault(); // Prevent the form from submitting
      alert("Form submitted!");
    });
    ```
    - In this example, the default form submission is prevented, and an alert is shown when the form is submitted.

- `resize` Event
  - The `resize` event occurs when the browser window is resized, making it useful for responsive designs that adapt to changes in window size.
    ```javascript
    window.addEventListener("resize", function () {
      console.log(`Window size: ${window.innerWidth} x ${window.innerHeight}`);
    });
    ```
    - This code logs the current window size to the console whenever the window is resized.

<br>
<br>
<br>

## 6. Build: Greeting App

### Step 1: HTML Structure

- First, let's create the basic HTML structure. We will have a title, an input field for the user to type their name, a button, and a heading where the greeting will be displayed.

- Create a new HTML file called `index.html`:

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>Greeting App</title>
    </head>
    <body>
      <h1>Welcome to the Greeting App!</h1>

      <!-- Input field for name -->
      <label for="nameInput">Enter your name: </label>
      <input type="text" id="nameInput" />

      <!-- Button to generate the greeting -->
      <button id="greetBtn">Greet Me!</button>

      <!-- Where the greeting message will be shown -->
      <h2 id="greetingMessage"></h2>

      <script src="app.js"></script>
    </body>
  </html>
  ```

- Explanation:
  - The `<input>` element will allow users to type in their name.
  - The `<button>` element will trigger the greeting.
  - The `<h2>` tag is where the greeting message will be displayed.

<br>
<br>

### Step 2: JavaScript Introduction

- Now, we need to add some interactivity using JavaScript. Let's create a new JavaScript file called `app.js`.

- In this file, we'll make sure that the JavaScript is connected and that everything works fine by logging a simple message in the console.
  ```javascript
  // app.js
  console.log("JavaScript is connected and working!");
  ```
- To test if it works, open `index.html` in your browser, right-click and choose "Inspect", then go to the "Console" tab. You should see the message `"JavaScript is connected and working!"`.

<br>
<br>

### Step 3: Adding Variables

- We will now add variables to store the input value from the user and manipulate the DOM (Document Object Model) to show the greeting message.

  ```javascript
  // app.js
  // Selecting the input field, button, and the place where the greeting will appear
  const nameInput = document.getElementById("nameInput");
  const greetBtn = document.getElementById("greetBtn");
  const greetingMessage = document.getElementById("greetingMessage");
  console.log("Variables are set up!");
  ```

- Explanation:
  - We're using `document.getElementById()` to grab the HTML elements we will interact with: the name input, the button, and the greeting message area.

<br>
<br>

### Step 4: Adding Event Listeners

- Now, let's add some interactivity. When the user clicks the "Greet Me!" button, we want to capture the name they entered and display a custom greeting.

  ```javascript
  // app.js
  greetBtn.addEventListener("click", function () {
    // Get the name entered by the user
    const userName = nameInput.value;

    // Create the greeting message
    const message = "Hello, " + userName + "! Welcome to the Greeting App!";

    // Display the greeting message
    greetingMessage.textContent = message;
  });
  ```

- Explanation:

  - The `addEventListener()` method is used to detect when the button is clicked.
  - When clicked, it grabs the value of the input (`nameInput.value`), forms a greeting message, and then displays it inside the `<h2>` element.

<br>
<br>

### Step 5: Control Structures

- Now, let's enhance the functionality using conditional statements. We'll check if the user actually entered a name. If they didn't, we'll prompt them to do so.

  ```javascript
  // app.js
  greetBtn.addEventListener("click", function () {
    // Get the name entered by the user
    const userName = nameInput.value;

    // Check if the user entered a name
    if (userName) {
      // Create and display the greeting message
      const message = "Hello, " + userName + "! Welcome to the Greeting App!";
      greetingMessage.textContent = message;
    } else {
      // If no name entered, display an alert
      alert("Please enter your name!");
    }
  });
  ```

- Explanation:
  - We're using an `if` statement to check if the input field is not empty.
  - If the user hasn't entered their name, we show an alert with a message asking them to do so.

<br>
<br>

### Step 6: Loop Example (Bonus)

- This part is optional, but just to demonstrate loops, we can add a feature that prints a repeated message on the page if the user wants.

- Add another button to the `index.html` file:

  ```javascript
  <!-- Button to print a repeated message -->
  <button id="repeatBtn">Repeat Greeting 3 Times</button>
  ```

- Then, add this code in `app.js`:

  ```javascript
  const repeatBtn = document.getElementById("repeatBtn");

  repeatBtn.addEventListener("click", function () {
    const userName = nameInput.value;

    if (userName) {
      greetingMessage.textContent = ""; // Clear previous messages
      for (let i = 0; i < 3; i++) {
        greetingMessage.textContent += "Hello, " + userName + "! ";
      }
    } else {
      alert("Please enter your name!");
    }
  });
  ```

- Explanation:

  - We're adding a new button that, when clicked, will repeat the greeting 3 times using a `for` loop.
  - We loop through 3 times, appending the greeting message to the `greetingMessage` element.

<br>
<br>

### Step 7: Review the final project code

- `index.html`:

  ```html
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>Greeting App</title>
    </head>
    <body>
      <h1>Welcome to the Greeting App!</h1>

      <label for="nameInput">Enter your name: </label>
      <input type="text" id="nameInput" />

      <button id="greetBtn">Greet Me!</button>
      <button id="repeatBtn">Repeat Greeting 3 Times</button>

      <h2 id="greetingMessage"></h2>

      <script src="app.js"></script>
    </body>
  </html>
  ```

- `app.js`:

  ```javascript
  // app.js
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
  ```

<br>
<br>

### Step 8: Summary of What You Learned:

- **Basic JavaScript syntax**: You worked with variables, data types, and operators.
- **Control Structures**: You used if statements to control the flow of your program.
- **DOM Manipulation**: You dynamically updated the content of the page by modifying the DOM.
- **Event Listeners**: You learned how to trigger JavaScript actions when a button is clicked.
- **Loops (Bonus)**: You used a loop to repeat an action multiple times.
