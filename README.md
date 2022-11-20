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


## Ballot contract
