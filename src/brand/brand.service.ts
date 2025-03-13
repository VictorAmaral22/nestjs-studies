import { Injectable, Logger } from "@nestjs/common";
import { DataSource, Repository } from "typeorm";
import { Brand } from "./brand.entity";
import { CreateBrand, getFilters, getOrderBy } from "./brand.interfaces";

@Injectable()
export class BrandService {
    private brandRepository: Repository<Brand>;
    private logger = new Logger();
    constructor(private dataSource: DataSource) {
        this.brandRepository = this.dataSource.getRepository(Brand);
    }

    create(brand: CreateBrand): Promise<Brand> {
        try {
            return this.brandRepository.save({
                name: brand.name,
                country: brand.country,
                logo: brand.logo,
            })
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }

    get(filters: getFilters, order_by: getOrderBy): Promise<Brand[]> {
        try {
            return this.brandRepository.find({
                order: order_by && order_by.column ? {
                    [order_by.column]: order_by.order
                } : {},
                where: {
                    ...filters,
                }
            })
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }

    getById(id: number): Promise<Brand | null> {
        try {
            return this.brandRepository.findOneBy({ id: id })
        } catch (error) {
            this.logger.error(error)
            throw error
        }
    }
}