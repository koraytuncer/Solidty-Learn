// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; // Burada versiyon belirttik!

contract Counter { // Counter adında bir sözleşme oluşturduk
    uint256 public count; // 0 veya daha büyük sayıları alabilen ve herkese açık bir count değişkeni oluşturduk

    function inc() external { // bir fonksiyon oluşturup inc adını verdik. Bu değişken count değişkenini 1 artırır.
        count += 1; // count değişkenini 1 artırır.
    }

    function dec() external { // bir fonksiyon daha oluşturup dec adını verdik. Bu değişken count değikenini 1 azaltır.
        count -= 1; // count değişkenini 1 azaltır.
    }
}
