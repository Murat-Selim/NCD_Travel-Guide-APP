 import {Travel, travels} from "./model"

 export function createTravel(country: string, city: string, title: string, desc: string): Travel {
    return Travel.createTravel(country, city, title, desc);
 }

 export function updateTravel(id: i32, country: string, city: string, title: string, desc: string): Travel {
    return Travel.updateTravel(id, country, city, title, desc)
 }  

 export function deleteTravelById(id: i32): void {
    Travel.deleteTravelById(id)
 }

 export function getTravelById(id: i32): Travel {
    return travels.getSome(id)
 }

 export function getTravels(): Travel[] {
    return travels.values()
 }

