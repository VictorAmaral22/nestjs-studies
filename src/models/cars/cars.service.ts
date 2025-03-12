import { Injectable } from "@nestjs/common";

@Injectable()
export class CarsService {
    create(car: CreateCar) {
        return car;
    }

    get(filters: getFilters, order_by: getOrderBy[]): GetCar[] {
        return [];
    }

    getById(id: number): GetCar | null {
        return null;
    }

    // update(id: number, updateCar: UpdateCar) {
    //     return updateCar;
    // }

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