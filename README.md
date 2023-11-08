# Composability
Answer to the Composability TD

Voici les commandes foundry que j'ai utilisées
0x13C2F2AAA40dEDe827C9e8616Ea489a3F25F62b6 est l'addresse de mon contrat solution sur Goerli

Merci beaucoup !
Q1

forge script DeploymentScript --broadcast --rpc-url $GOERLI_RPC_URL

Q2

Envoyer nouveau contrat au correcteur
-remplacer par l'address de mon contrat
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "registerStudentToken(address)" 0x13C2F2AAA40dEDe827C9e8616Ea489a3F25F62b6


cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex2_mintStudentToken()"

Q3

Envoyer plus de token a l'evaluator pour valider exo3
-remplacer par l'address de mon contrat
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x13C2F2AAA40dEDe827C9e8616Ea489a3F25F62b6 "GiveMoreMoneyToAymeric()"

exo3 pour mint mes token
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex3_mintEvaluatorToken()"


Q4

puis je swap depuis la fonction de mon contrat
-remplacer par l'address de mon contrat
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x13C2F2AAA40dEDe827C9e8616Ea489a3F25F62b6 "Swep_Uniswep()"


Bon ok grosse galère uniswap, j'ai swap a la main sur le site, mais validé avec la commande suivante
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex4_checkRewardTokenBalance()"

approve pour swap uniswap
cast send --private-key $PRIVATE_KEY --rpc-url $GOERLI_RPC_URL 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "approve(address,uint256)" 0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45 1000
