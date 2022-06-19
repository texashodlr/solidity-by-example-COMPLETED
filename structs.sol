// You can define your own type by creating a struct
// They are useful for grouping together related data
// Structs can be decalred outside of a contract and imported in another contract

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos{
    struct Todo{
        string text;
        bool completed;
    }


    //Array of todo structs
    Todo[] public todos;

    function create(string calldata _text) public{
        //3 ways to initilize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        //key value mapping
        todos.push(Todo({text: _text, completed: false}));

        //init an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        //todo.completed init'd to false

        todos.push(todo); 
    }

    //Solidity auto creates a getter for 'todos' so
    // you don't actually need this function 
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //todo completed
    function toggleCompleted(uint _index) public{
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
