# Arrays

# **What Are Arrays in Computer Science?**

In computer science, an **array** is a data structure that stores a collection of elements, typically of the same data type. Each element in the array is identified by an index or key. Arrays allow for efficient access to elements based on their index.

In **Solidity**, arrays function in a similar way to arrays in most other programming languages, but with some specific considerations due to the decentralized nature of smart contracts.

When we talk about arrays in this lecture, we’re specifically referring to **Solidity arrays**!

# **Dynamic vs. Fixed Arrays**

## **Dynamic Arrays**

Dynamic arrays in Solidity do not have a predefined size. The size of a dynamic array changes as elements are added or removed. You can add elements dynamically during runtime, and the array will grow or shrink as needed.

## **Fixed Arrays**

In contrast, fixed arrays have a predefined size when they are declared. The number of elements in the array must not exceed the size specified at declaration, and the array’s size cannot be changed after deployment.

## **Declaring Arrays in Solidity**

Arrays in Solidity can be either **fixed** or **dynamic**, and they are typically declared as state variables in contracts. Here’s an example that demonstrates both:

```solidity
*contra*ct MyContract {
	// Dynamic sized array
	uint[] public arr;
	// Fixed sized arrays
	uint[] public arr2 = [1, 2, 3];
	// All elements initialize to 0
	uint[10] public myFixedSizeArr;
}
```

- **Dynamic Array (**arr**)**: No initial elements, and it can grow in size as elements are added.
- **Fixed Array (**arr2**)**: Predefined size with specific initial values.
- **Fixed Size Array (**myFixedSizeArr**)**: A fixed-size array that holds 10 elements, all initialized to 0.

# **Working with Arrays in Solidity**

Both fixed and dynamic arrays in Solidity support the .length member:

- .length: Returns the number of elements in the array.

For example:

```solidity
*uint c*ount = arr.length;  // Retrieves the length of arr
```

**Methods for Dynamic Arrays**

Dynamic arrays have additional methods that you can use:

- .push(): Adds an element to the end of the array.
- .pop(): Removes the last element of the array.

For instance:

```solidity
*arr*.push(10);  // Adds 10 to the end of arr
```

```solidity
*arr*.pop();     // Removes the last element from arr
```

These methods are particularly useful for managing dynamic arrays.

# **Key Takeaways for Arrays**

- **Fixed arrays** have a predetermined size, and their size can’t change.
- **Dynamic arrays** can grow and shrink as needed, with .push() and .pop() for managing their size.
- Both types of arrays have a .length property to access the number of elements in the array.
- Be cautious when iterating over arrays in smart contracts, as it can be **costly** in terms of gas fees. Smart contract users might incur high costs if the array is large and the loop is costly.

Iterating over arrays is not a recommended pattern in Solidity due to its high gas cost when arrays grow large. Always aim to optimize smart contract performance.

# **Use Cases for Arrays in Solidity**

Arrays are particularly useful when you need to store multiple values of the same type in an organized way. Some common use cases include:

- **Storing multiple addresses** (e.g., for a whitelist).
- **Tracking a list of token holders** in an ERC-20 token contract.
- **Holding a collection of values**, such as scores or user levels in a game.

# **Arrays in Production: ERC-20 Tokens**

In the context of **ERC-20 tokens**, arrays often come into play for managing token balances, users, or other relevant data.

An example might include tracking a list of token holders (though in practice, mappings are often used for balances). Here’s an example of how arrays might be used in token contracts:

```solidity
address[] public tokenHolders*;  // Array of addresses holding tokens*
```

While mappings are more commonly used for balances, arrays can still play a key role in managing related data.

# **Conclusion**

Arrays are a core data structure in Solidity that allow for efficient storage and access to multiple elements. Dynamic arrays are flexible and can grow or shrink in size, while fixed arrays offer a more rigid structure. When using arrays in Solidity, remember to be cautious with iteration and manage array size carefully to avoid high gas costs. Arrays are powerful, and with the right optimizations, they enable efficient contract development for various use cases.
