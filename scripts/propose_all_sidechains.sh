#!/bin/bash

# TODO switch to using SubmitSidechainProposal
# TODO use real hashes for id1 and id2
# TODO add descriptions

# 2 bitnames
grpcurl -d '{"sidechain_id": 2, "declaration": {"v0": {"title": "BitNames", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 4 bitassets
grpcurl -d '{"sidechain_id": 4, "declaration": {"v0": {"title": "BitAssets", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 9 thunder rust
grpcurl -d '{"sidechain_id": 9, "declaration": {"v0": {"title": "Thunder", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 13 truthcoin
grpcurl -d '{"sidechain_id": 13, "declaration": {"v0": {"title": "Truthcoin", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 98 zside / thunder orchard
grpcurl -d '{"sidechain_id": 98, "declaration": {"v0": {"title": "ZSide", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 99 photon
grpcurl -d '{"sidechain_id": 99, "declaration": {"v0": {"title": "Photon", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal

# 255 coinshift
grpcurl -d '{"sidechain_id": 255, "declaration": {"v0": {"title": "CoinShift", "description": "", "hash_id_1": {"hex": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"}, "hash_id_2": {"hex":"a4197ad2ae9d35252d12008ff616bce710b647d2"}}}}'  -plaintext localhost:50051 cusf.mainchain.v1.WalletService/CreateSidechainProposal
