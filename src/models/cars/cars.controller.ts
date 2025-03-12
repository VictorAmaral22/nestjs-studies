import { Body, Controller, Get, Param, Post, Query } from "@nestjs/common";
import { CarsService } from "./cars.service";
import { ApiBody, ApiOperation, ApiResponse, ApiTags } from "@nestjs/swagger";
import { CreateCar, getFilters, getOrderBy, CreateBrand } from "./cars.interfaces";
import { Car } from "./entities/car.entity";

@ApiTags('cars')
@Controller('cars')
export class CarsController {
    constructor(private readonly carsService: CarsService) { }

    @Post()
    @ApiOperation({ summary: 'Create a new car' })
    @ApiResponse({ status: 201, description: 'The car has been successfully created.', type: Car })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiBody({
        description: 'Car info',
        type: CreateCar,
    })
    create(@Body() createCar: CreateCar): Promise<Car> {
        return this.carsService.create(createCar);
    }

    @Get()
    getCars(
        @Query('brand_id') brand_id: number,
        @Query('model') model: string,
        @Query('year') year: number,
        @Query('color') color: string,
        @Query('price') price: number,
        @Query('active') active: boolean,
        @Query('order_param') order_param: 'brand' | 'model' | 'year' | 'color' | 'price' | 'created_at' | 'updated_at' | 'deleted_at',
        @Query('order') order: 'asc' | 'desc'
    ) {
        const filters: getFilters = {
            brand_id,
            model,
            year,
            color,
            price,
            active
        };
        const order_by: getOrderBy = {
            column: order_param,
            order
        };

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