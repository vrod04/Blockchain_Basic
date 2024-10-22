// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract array {

    uint256[] public arr1;                  // array vacío
    uint256[] public arr2 = [22, 33, 44];   // array con elementos
    uint256[10] public arr3;                // array sin elementos pero con tamaño definido

    // trae un elemento del array
    function get(uint _i) public view returns (uint256) {
        return arr2[_i];
    }

    //trae el array completo
    function getArray() public view returns (uint256[] memory) {
        return arr2;
    }

    // agrega un elemento nuevo
    function push(uint256 _i) public {
        arr2.push(_i);
    }
}