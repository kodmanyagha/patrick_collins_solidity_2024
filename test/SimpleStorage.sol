// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9.0;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
        simpleStorage.store(0);
    }

    function test_Store() public {
        simpleStorage.store(10);
        assertEq(simpleStorage.retrieve(), 10);
    }
}
