# echidna-phoenix
My journey of learning Echidna from scratch. Documenting all the things that I learnt

1. Boolean Properties 
Returns bools and the function is view. Pass if true and fail if false. To get false at both true and false, use echinda_revert~ prefix
Use this if you don't need to use parameters or the property can be tested by using state variables 
Con is that any revert = faliure which is not the case everytime 

2. Assertion Mode 
You do not need to use echidna_~ prefix
You can use parmeter as property and you also get assertion report 
Con is that it will not work as intended if assertion is already being used in data validation. Devs should use require statement instead


3. There are 3 ways to test any contract 

Inherit the contract into your echinda contract - This way you get to access all the internal states.
You can use this if the contract doesn't need some initialization condition ( which will not be the case lol)

Use external calls only- Like how we use while using Foundry, create an instance of contract an work on it.
You can perfom contract initializations through it

`Something to note here - Echidna doesn't runs it's test on the contracts, rather it runs it test on the test contract which may or may not inherit the system state(the contract with properties).`

This means that you might run into a problem where you will only be able to run only those methods that are defined and not other ones (you could check that by checking coverage report)

Let's say you are using a mock ERC20 and you don't wanna call those functions like mint. In that case use blacklist functionality.
There's also a way to filter functions that you don't want to fuzz

Assertion Checking - Head over to incrementor.sol in src.
We just assert some value within the function 

    Do not force any side effects during the assertion checking. For instance: assert(ChangeStateAndReturn() == 1)
    Do not assert obvious statements. For instance assert(var >= 0) where var is declared as uint256.


PLAYLIST
Echidna needs 2 things , target contract and properties to test. 
Think of echinda is an EOA that just very fast transactions 


ex 1 - check for correct arithmetic 
ex 2 - check for access control

Notice how my solutions are a little bit different from the provided solution (I have use if else) because that is the way I have understood the given invariant.

At ex2 we were made to understand `assertion testing`. I think it's a good one, we don't need any needless logic like before

assert(false) on anything works like = `this should not happen`
assert(true) = ????


