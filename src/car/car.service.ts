import { Injectable, Logger } from "@nestjs/common";
import { DataSource, Repository } from "typeorm";
import { Car } from "./car.entity";
import { CreateCar, getFilters, getOrderBy } from "./car.interfaces";

@Injectable()
export class CarService {
    private carRepository: Repository<Car>;
    private logger = new Logger();
    constructor(private dataSource: DataSource) {
        this.carRepository = this.dataSource.getRepository(Car);
    }

    async create(car: CreateCar): Promise<Car> {
        try {
            return this.carRepository.save(car)
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }

    get(filters: getFilters, order_by: getOrderBy): Promise<Car[]> {
        try {
            return this.carRepository.find({
                order: order_by && order_by.column ? {
                    [order_by.column]: order_by.order
                } : {},
                where: {
                    ...filters
                }
            })
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }

    getById(id: number): Promise<Car | null> {
        try {
            return this.carRepository.findOneBy({ id: id })
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }
}