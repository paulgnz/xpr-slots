import * as _chain from "as-chain";
import { Name, PermissionLevel, InlineAction, ActionData, EMPTY_NAME } from "..";

export const RNG_CONTRACT = Name.fromU64(0xBCD8000000000000)


@packer(nocodegen)
class RequestRandom implements _chain.Packer {
    
    constructor (
        public customerId: u64 = 0,
        public signingValue: u64 = 0,
        public contract: Name = EMPTY_NAME,
    ) {
        
    }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.customerId);
        enc.packNumber<u64>(this.signingValue);
        enc.pack(this.contract);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.customerId = dec.unpackNumber<u64>();
        this.signingValue = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.contract = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.contract.getSize();
        return size;
    }
}

// Inline action
export function sendRequestRandom(contract: Name, customerId: u64, signingValue: u64): void {
    const REQUESTRANDOM = new InlineAction<RequestRandom>("requestrand");
    const action = REQUESTRANDOM.act(RNG_CONTRACT, new PermissionLevel(contract))
    const actionParams = new RequestRandom(customerId, signingValue, contract)
    action.send(actionParams)
}