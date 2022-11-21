# EncodeSolidity-Homework3

This repository tests a tokenized ballot relying on an ERC20 contract

## Ethereum addresses

| USER                    | ADDRESS                                       |
|-------------------------|-----------------------------------------------|
| Alessandro Morandi      | 0xb91bc2a105c03667930b5ebe639e7914c5763bdb    |
| José Henrique K. Ambiel | 0x6dE6EAfDD0120279957fB3019b0eec1828D73cDa    |
| Marcello Rigotti        | 0x80d0430c7d1ed613ea30c02663cc9ce5bbc389a8    |
| Sobhan Bahrami          | 0x4d7c99e0d0672abc0e9bbd4f5f82a87f2b6956da    |
| Jeremy Bernard          | 0xc87a65ce2f3bb07c7a59ac0643a56e34a9d531a7    |


## Token contract

### Contract deployment

Deployed at address `0x62a2a915860310e2302965cd3a41b83A4e11297C` in block `7989662`.

Transaction hash:
https://goerli.etherscan.io/tx/0x400e592be169b69c9f9de12b6bd66a299177646ded25b83d317a15bfa240ca81

All transactions performed on the contract will be viewable with the following link:
https://goerli.etherscan.io/address/0x62a2a915860310e2302965cd3a41b83A4e11297C

### Minting transactions

5 vote tokens were minted for each group member:

* https://goerli.etherscan.io/tx/0x3ece8e7766c6c78ca161963589062a7e6fb546a5dccc084624a3c8ac9cf625ee
* https://goerli.etherscan.io/tx/0x0e4116029e6012d7b4d6ce5850bb6090d428a966efc9fdf682041f05522a6c83
* https://goerli.etherscan.io/tx/0x665f273afc50fd1f49f36419a2c444485395eaab64bcf2b77946e4abad595a0c
* https://goerli.etherscan.io/tx/0x129088296f7db3e54b1da86d917b147e2ecdd81c6b6b1cc50a44d56c226cae7d
* https://goerli.etherscan.io/tx/0xf0a746efea61f3ddb9d2e3f3ee0997aac8201e785a680161d216a834f3c38eff


> Some transactions failed with an **out of gas** error and were executed again to ensure every one received the tokens.

### Other transactions (transfers, delegation, ...)

Jeremy Bernard (self-delegation, has 5 voting power units)
https://goerli.etherscan.io/tx/0xea156389bc300a55b6ed9e77492102cfe034a6a861ae5b8d287e3487e365b61d

Jeremy Bernard transfers 1 token to himself (still has 5 voting power units)
https://goerli.etherscan.io/tx/0xddc5f5a912dc2cd0b384398af8793cc6cf2f77d3324ccc43d268277dd1c9556a

Jeremy Bernard transfers 1 token to Alessandro Morandi (Jeremy has 4 tokens, 4 voting power units, Alessandro has 6 tokens, 0 voting power units)
https://goerli.etherscan.io/tx/0xc9a10a4cea55c6faaeea84c1e3dab480b50c964c45a5fe496e140896399dcea1

José Henrique K. Ambiel transfers 1 token to Alessandro Morandi (José Henrique K. Ambiel has 4 tokens, 0 voting power units, Alessandro has 7 tokens, 0 voting power units)
https://goerli.etherscan.io/tx/0xe95ad73dea9ba5d35f15a5875be4a997022a346e720e6c2b4c253ab43820fe54

José Henrique K. Ambiel delegates to Jeremy Bernard (José Henrique K. Ambiel has 4 tokens, 0 voting power units, Jeremy Bernard has 4 tokens, 8 voting power units)
https://goerli.etherscan.io/tx/0xe95ad73dea9ba5d35f15a5875be4a997022a346e720e6c2b4c253ab43820fe54

Marcello Rigotti (self-delegation, has 5 voting power units)
https://goerli.etherscan.io/tx/0x08c0480959c2c5aeeac64cc427c90ae459e416898bc15353f4a94f360e70b756

José Henrique K. Ambiel transfers to Marcello Rigotti (José Henrique K. Ambiel has 3 tokens, 0 voting power units, Jeremy Bernard has 4 tokens, 7 voting power units, Marcello Rigotti has has 6 tokens, 6 voting power)
https://goerli.etherscan.io/tx/0xc575f68f7dc527511738325a9fb8638cefcccae4598806e0d3616b2bdf473093

Alessandro Morandi (self-delegation, has 7 voting power units)
https://goerli.etherscan.io/tx/0x77b42991f55c01b9d7f756c50da4ac5d396c1df744ef647086116b84dbc10347

Sobhan Bahrami (self-delegation, has 5 voting power units) - 0 voting 
https://goerli.etherscan.io/tx/0x493e4a4706c080a38463c8bfa2febf1b82749959c8c2611831d0e43854c4f233

Sobhan Bahrami (delegated all power to 0xc87a65ce2f3bb07c7a59ac0643a56e34a9d531a7 - Jeremy)
https://goerli.etherscan.io/tx/0x16cefcfd18f2ea4ce73eb61765834817ddb4be9d1bccea3a5fee6e6e69bb8ccc



## Ballot contract
Situation at the moment of deployment
Balance of 0xb91bc2a105c03667930b5ebe639e7914c5763bdb is 7000000000000000000.
The account 0xb91bc2a105c03667930b5ebe639e7914c5763bdb has 7000000000000000000 voting power units.

Balance of 0x6dE6EAfDD0120279957fB3019b0eec1828D73cDa is 3000000000000000000.
The account 0x6dE6EAfDD0120279957fB3019b0eec1828D73cDa has 0 voting power units.

Balance of 0x80d0430c7d1ed613ea30c02663cc9ce5bbc389a8 is 6000000000000000000.
The account 0x80d0430c7d1ed613ea30c02663cc9ce5bbc389a8 has 6000000000000000000 voting power units.

Balance of 0x4d7c99e0d0672abc0e9bbd4f5f82a87f2b6956da is 5000000000000000000.
The account 0x4d7c99e0d0672abc0e9bbd4f5f82a87f2b6956da has 0 voting power units.

Balance of 0xc87a65ce2f3bb07c7a59ac0643a56e34a9d531a7 is 4000000000000000000.
The account 0xc87a65ce2f3bb07c7a59ac0643a56e34a9d531a7 has 7000000000000000000 voting power units.


Deployed at address `0x793A692FF75DA4a0Fc63E6600Bc845BC4707fd06` with targetBlockNumber `7994331`.
https://goerli.etherscan.io/tx/0xaa0e57d3fe5f2f4d092fb9ef6f11ff55e8524b043b1953ac11af60cb57fb6536

Marcello Rigotti voted Chocolate with amount = 3, voting power left = 3
https://goerli.etherscan.io/address/0x793a692ff75da4a0fc63e6600bc845bc4707fd06

Marcello Rigotti voted Vanilla with amount = 3, voting power left = 0
https://goerli.etherscan.io/tx/0x88a3e5f0b910c4d925aee186ea0e8599a23543e4fc52f88e8d145ef2773c4bb9