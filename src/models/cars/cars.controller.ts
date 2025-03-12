import { Body, Controller, Get, Param, Post } from "@nestjs/common";
import { CarsService } from "./cars.service";

@Controller('cars')
export class CarsController {
    constructor(private readonly carsService: CarsService) {}

    @Post()
    create(@Body() createCar: CreateCar) {
        return this.carsService.create(createCar);
    }

    @Get()
    getCars() {
        const filters: getFilters = {};
        const order_by: getOrderBy[] = [];

        return this.carsService.get(filters, order_by);
    }

    @Get(':id')
    getCarById(@Param('id') id: number) {
        return this.carsService.getById(id);
    }

    @Post('brands')
    createBrand(@Body() createBrand: CreateBrand) {
        return this.carsService.createBrand(createBrand);
    }

    @Get('brands')
    getBrands() {
        return this.carsService.getBrands();
    }

    @Get('brands/:id')
    getBrandById(@Param('id') id: number) {
        return this.carsService.getBrandById(id);
    }
}