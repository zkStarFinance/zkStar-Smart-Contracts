

# ISelfPermit




## Functions
### selfPermit


`selfPermit(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend a given token from &#x60;msg.sender&#x60;



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| value | uint256 | The amount that can be spent of token |
| deadline | uint256 | A timestamp, the current blocktime must be less than or equal to this timestamp |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitIfNecessary


`selfPermitIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend a given token from &#x60;msg.sender&#x60;



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| value | uint256 | The amount that can be spent of token |
| deadline | uint256 | A timestamp, the current blocktime must be less than or equal to this timestamp |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitAllowed


`selfPermitAllowed(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend the sender&#x27;s tokens for permit signatures that have the &#x60;allowed&#x60; parameter



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| nonce | uint256 | The current nonce of the owner |
| expiry | uint256 | The timestamp at which the permit is no longer valid |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitAllowedIfNecessary


`selfPermitAllowedIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend the sender&#x27;s tokens for permit signatures that have the &#x60;allowed&#x60; parameter



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| nonce | uint256 | The current nonce of the owner |
| expiry | uint256 | The timestamp at which the permit is no longer valid |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |




---




# ISelfPermit




## Functions
### selfPermit


`selfPermit(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend a given token from &#x60;msg.sender&#x60;



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| value | uint256 | The amount that can be spent of token |
| deadline | uint256 | A timestamp, the current blocktime must be less than or equal to this timestamp |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitIfNecessary


`selfPermitIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend a given token from &#x60;msg.sender&#x60;



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| value | uint256 | The amount that can be spent of token |
| deadline | uint256 | A timestamp, the current blocktime must be less than or equal to this timestamp |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitAllowed


`selfPermitAllowed(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend the sender&#x27;s tokens for permit signatures that have the &#x60;allowed&#x60; parameter



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| nonce | uint256 | The current nonce of the owner |
| expiry | uint256 | The timestamp at which the permit is no longer valid |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |


### selfPermitAllowedIfNecessary


`selfPermitAllowedIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)` payable external

Permits this contract to spend the sender&#x27;s tokens for permit signatures that have the &#x60;allowed&#x60; parameter



| Name | Type | Description |
| ---- | ---- | ----------- |
| token | address | The address of the token spent |
| nonce | uint256 | The current nonce of the owner |
| expiry | uint256 | The timestamp at which the permit is no longer valid |
| v | uint8 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;s&#x60; |
| r | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;v&#x60; and &#x60;s&#x60; |
| s | bytes32 | Must produce valid secp256k1 signature from the holder along with &#x60;r&#x60; and &#x60;v&#x60; |




---

