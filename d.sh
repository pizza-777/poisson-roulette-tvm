# everdev se reset
everdev sol compile Puasson.sol

everdev c d Puasson.abi.json -v 1e10 -n dev

everdev c r Puasson.abi.json run -n dev

