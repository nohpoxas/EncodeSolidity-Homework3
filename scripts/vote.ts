import { ethers } from "hardhat";
import { TokenizedBallot, TokenizedBallot__factory } from "../typechain-types";
import * as dotenv from "dotenv";

let ballotContract: TokenizedBallot;
let proposals: string[] = [];
dotenv.config()

async function main() {
    //pass as an argument the amount you want to use to vote
    const args = process.argv.slice(2);

    const wallet = ethers.Wallet.fromMnemonic(process.env.MNEMONIC ?? "");
    // const provider = ethers.getDefaultProvider("goerli");
    
    // Use custom provider like Infura or Alchemy
    const infuraProvider = new ethers.providers.InfuraProvider("goerli", process.env.INFURA_API_KEY);
    const signer = wallet.connect(infuraProvider);

    const ballotFactory = new TokenizedBallot__factory(signer);
    //Import existing contract already deployed previously
    ballotContract = ballotFactory.attach(process.env.CONTRACT_ADDRESS ?? "");
    console.log(`Contract address ${ballotContract.address}`)

    //casting a vot to proposal number 4 (index 3) = Chocolate
    const amount = args[0];
    const voteTx = await ballotContract.vote(3, amount, { gasLimit: 100000 })
    await voteTx.wait();
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});