// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/GLDTokenA.sol";

contract GLDTokenATest is Test {
    GLDTokenA public gldA;
    address receiver = vm.addr(0x1);

    function setUp() public {
        gldA = new GLDTokenA(1e18);
    }

    function testName() public {
        assertEq("Gold A", gldA.name());
    }

    function testBalance() public {
        assertEq(1e18, gldA.balanceOf(gldA.owner()));
    }

    function testTotalSupply() public {
        assertEq(1e18, gldA.totalSupply());
        gldA.mintTo(receiver, 1e18);
        assertEq(2e18, gldA.totalSupply());
        assertEq(1e18, gldA.balanceOf(receiver));
    }

}
