import { Body, Controller, Get, HttpException, HttpStatus, Param, Post, Query } from "@nestjs/common";
import { ApiBody, ApiOperation, ApiQuery, ApiResponse, ApiTags } from "@nestjs/swagger";
import { Car } from "./car.entity";
import { CreateCar, getFilters, getOrderBy } from "./car.interfaces";
import { CarService } from "./car.service";

@ApiTags('car')
@Controller('car')
export class CarController {
    constructor(private readonly carService: CarService) { }

    @Post()
    @ApiOperation({ summary: 'Create a new car' })
    @ApiResponse({ status: 201, description: 'The car has been successfully created.', type: Car })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    async create(@Body() createCar: CreateCar): Promise<Car> {
        try {
            return await this.carService.create(createCar);
        } catch (error) {
            throw error;
        }
    }

    @Get()
    @ApiResponse({ status: 200, description: 'The cars have been successfully retrieved.', type: [Car] })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 401, description: 'Unauthorized.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiQuery({ name: 'brand_id', required: false, type: Number })
    @ApiQuery({ name: 'model', required: false, type: String })
    @ApiQuery({ name: 'year', required: false, type: Number })
    @ApiQuery({ name: 'color', required: false, type: String })
    @ApiQuery({ name: 'price', required: false, type: Number })
    @ApiQuery({ name: 'active', required: false, type: Boolean })
    @ApiQuery({ name: 'order_param', required: false, type: String })
    @ApiQuery({ name: 'order', required: false, type: String })
    async getCars(
        @Query('brand_id') brand_id?: number,
        @Query('model') model?: string,
        @Query('year') year?: number,
        @Query('color') color?: string,
        @Query('price') price?: number,
        @Query('active') active?: boolean,
        @Query('order_param') order_param?: 'brand' | 'model' | 'year' | 'color' | 'price' | 'created_at' | 'updated_at' | 'deleted_at',
        @Query('order') order?: 'asc' | 'desc'
    ): Promise<Car[]> {
        try {
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
    
            return await this.carService.get(filters, order_by);
        } catch (error) {
            throw error;
        }
    }

    @Get(':id')
    @ApiResponse({ status: 200, description: 'The car have been successfully retrieved.', type: Car })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 401, description: 'Unauthorized.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 404, description: 'Not found' })
    async getCarById(@Param('id') id: number): Promise<Car | null> {
        try {
            const car = await this.carService.getById(id);
            console.log(car)
            if (!car) {
                throw new HttpException('Brand not found', HttpStatus.NOT_FOUND);
            }

            return car;
        } catch (error) {
            throw error;
        }
    }
}