# Structs

In Solidity, a **struct** is a custom data type that allows you to group different types of data together, like a record or an object in other languages such as JavaScript. This enables developers to model complex data structures in a clear, organized way.

# **What is a Struct?**

A struct is essentially a user-defined type that holds multiple related variables (properties) together. This is incredibly useful when you need to store complex data, and it’s often used to represent records or entities in your contract.

The syntax for declaring a struct in Solidity looks like this:

```solidity
*struct* StructName {
	type1 variable1;
	type2 variable2;
	type3 variable3;
}
```

# **Struct Use Case: Library Record Keeping**

Let’s say you’re building a **Library** smart contract to manage records of books. Instead of storing each piece of information (like title, author, etc.) separately, you can group them into a single **Book** struct.

**Defining the Book Struct**

```solidity
*contra*ct Library {
	struct Book {
		  string title;
		  string author;
		  uint bookId;
		}
}
```

In this example, the **Book** struct holds:

- title: a string for the book’s title
- author: a string for the book’s author
- bookId: a uint that acts as an internal identifier for the book

**Storing Books in an Array 📚**

Now that we have the struct, we need a way to store multiple books. For this, we use an array of **Book** structs:

```solidity
contract Library {
	struct Book {
		string title;
		string author;
		uint bookId;
	}

	Book[] public books;
}
```

This books array will store each **Book** struct added to the contract.

**Adding Books to the Library**

We need a function to add books to our library. This can be done using the push() method to add a new **Book** to the array:

```solidity
function addBook(string memory _title, string memory _author) public {
	books.push(Book(_title, _author, books.length));
}
```

Here:

- We pass the book’s title and author as arguments.
- books.push() adds a new **Book** struct to the books array.
- The bookId is set as the current length of the array, ensuring each book gets a unique ID.

# **Retrieving Book Information**

To retrieve a book’s information, we can create a simple getter function that allows users to query the **Book** struct by bookId:

```solidity
function get(uint _bookId) public view returns (string memory _title, string memory _author) {
	return(books[_bookId].title, books[_bookId].author);
}
```

# **Protecting Book Records**

Now, let’s say we want to allow updates to a book’s record, but only the person who added the book should be allowed to make changes. To accomplish this, we can add a registrant field to the **Book** struct, which will store the address of the user who added the book:

```solidity
contract Library {

	struct Book {
		string title;
		string author;
		uint bookId;
		address registrant;
	}

	Book[] public books;

	function addBook(string memory _title, string memory _author) public {
		books.push(Book(_title, _author, books.length, msg.sender));
	}

	function get(uint _bookId) public view returns (string memory _title, string memory _author) {
		return(books[_bookId].title, books[_bookId].author);
	}

	function update(uint _bookId, string memory _newTitle, string memory _newAuthor) public {
		require(msg.sender == books[_bookId].registrant, "Only the registrant can update the book!");
		books[_bookId].title = _newTitle;
		books[_bookId].author = _newAuthor;
	}
}
```

**Explanation:**

- registrant is a new field that stores the address of the person who added the book.
- The update function now includes a require statement to check if the caller (msg.sender) is the same as the registrant. Only the original person who added the book can update the record.

**Key Points:**

- Structs help group related data together, making your code cleaner and easier to maintain.
- Use arrays to store multiple structs (like keeping track of many books).
- Structs can be combined with other data types (like arrays or mappings) for more complex structures.
- Always ensure that functions modifying data are protected, such as using require to check ownership of records.

By using structs, you can easily create and manage complex data structures, such as a library, a to-do list, or even a full-fledged decentralized application (dApp). Structs give your smart contract the ability to model real-world objects, such as books, users, and transactions, in a way that is organized and efficient.
