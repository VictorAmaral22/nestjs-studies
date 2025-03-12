import { Injectable } from "@nestjs/common";
import { CreateCar, getFilters, getOrderBy, GetCar, CreateBrand } from "./cars.interfaces";
import { Brand } from "./entities/brand.entity";
import { Car } from "./entities/car.entity";

@Injectable()
export class CarsService {
    create(car: CreateCar): Promise<Car> {
        return new Promise((resolve, reject) => {
            
        })
    }

    get(filters: getFilters, order_by: getOrderBy): GetCar[] {
        return [];
    }

    getById(id: number): GetCar | null {
        return null;
    }

    createBrand(brand: CreateBrand) {
        return brand;
    }

    getBrands(): Brand[] {
        return [];
    }

    getBrandById(id: number): Brand | null {
        return null;
    }
}