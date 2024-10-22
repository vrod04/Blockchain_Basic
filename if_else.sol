// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// contrato de ejemplo para realizar un control de acceso basado en edades
contract if_else {

    uint256 public age;         // variable para almacenar edad
    uint256 public limit_age;   // variable para indicar el limite de edad

    // el constructor se ejecuta una sola vez al crear el contrato y en este caso sera utilizado para definir el limite de edad
    constructor(uint256 _limit_age) {
        limit_age = _limit_age;
    }

    // funcion para leer la edad
    function leer_edad(uint256 _age) public {
        age = _age;
    }

    // funcion para definir si permite el acceso, ejecucion de la condicion if _ else
    function validacion() public view returns (string memory) {
        if (age > limit_age) {
            return "edad mayor al limite control de acceso superado";
        } else if (age == limit_age) {
            return "la edad es identica al limite mantener bajo vigilancia";
        } else {
            return "la edad es menor al limite, denegar entrada";
        }
    }

}