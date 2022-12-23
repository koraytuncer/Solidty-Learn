// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TodoList{
    //Tekrar kullanabileceğimiz Todo objesi oluşturuyoruz.
    struct Todo{
        string text;
        bool completed;
    }

    //Todo Arrayi Oluşturuyoruz.
    Todo[] public todos;

    //Yeni Todo Oluşturuyoruz.
    function create(string calldata _text) external{
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }
    //Todo Güncelleniyor.
    function updateText(uint256 _index, string calldata _text) external{
        todos[_index].text = _text;
    }
    //Todo çağırıyoruz.
    function get(uint _index) external view returns(string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    //Todo bool türünde değerini değiştiriyoruz.
    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
