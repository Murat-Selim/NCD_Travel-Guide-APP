import { Context, logging, math, PersistentUnorderedMap, } from "near-sdk-as";
import { AccountId } from "../../utils";

export const travels = new PersistentUnorderedMap<i32, Travel>("travels");

@nearBindgen
export class Travel {
    
    id: u32
    owner: AccountId
    country: string
    city: string
    title: string
    desc: string

    constructor(country: string, city: string, title: string, desc: string) {  
        this.id = math.hash32<string>(title)
        this.owner = Context.sender
        this.country = country
        this.city = city
        this.title = title
        this.desc = desc
    }

    static createTravel(country: string, city: string, title: string, desc: string): Travel {
        let travel = new Travel(country, city, title, desc)
        travels.set(travel.id, travel)
        logging.log("Created travel")
        return travel
    }
    
    static updateTravel(id: i32, country: string, city: string, title: string, desc: string): Travel {
        let travel = travels.getSome(id)
        if (travel == null) {
            assert(false, "Travel not found")
            logging.log("Travel not found")
        }
        if (travel.owner != Context.sender) {
            assert(false, "You are not the owner of this travel")
            logging.log("You are not the owner of this travel")
        }
        travel.country = country
        travel.city = city
        travel.title = title
        travel.desc = desc
        travels.set(travel.id, travel)
        logging.log("Updated travel")
        return travel

    }
    
    static deleteTravelById(id: i32): void {
        let travel = travels.getSome(id)
        if (travel == null) {
            assert(false, "Travel not found")
            logging.log("Travel not found")
        }
        if (travel.owner != Context.sender) {
            assert(false, "You are not the owner of this travel")
            logging.log("You are not the owner of this travel")
        }
        travels.delete(id)
        logging.log("Deleted travel")

    }
    
    static getTravelById(id: i32): Travel {
        let travel = travels.getSome(id)
        if (travel == null) {
            assert(false, "Travel not found")
            logging.log("Travel not found")
        }
        return travel
    }
    
    
    static getTravels(): Array<Travel> {
        let travels = new Array<Travel>()
        for (let i = 0; i < travels.length; i++) {
            let travel = travels[i]
            travels.push(travel)
        }
    
        assert(travels.length <= 0, "No travels found")
        return travels
    }

}