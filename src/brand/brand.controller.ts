import { Body, Controller, Get, HttpException, HttpStatus, Param, Post, Query } from "@nestjs/common";
import { ApiBody, ApiOperation, ApiQuery, ApiResponse, ApiTags } from "@nestjs/swagger";
import { BrandService } from "./brand.service";
import { Brand } from "./brand.entity";
import { CreateBrand, getFilters, getOrderBy } from "./brand.interfaces";
import { NetworkError } from "src/common/networkError.entity";

@ApiTags('brand')
@Controller('brand')
export class BrandController {
    constructor(private readonly brandService: BrandService) { }

    @Post()
    @ApiOperation({ summary: 'Create a new brand' })
    @ApiResponse({ status: 201, description: 'The brand has been successfully created.', type: Brand })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 401, description: 'Unauthorized.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    async create(@Body() createBrand: CreateBrand): Promise<Brand> {
        try {
            return await this.brandService.create(createBrand);
        } catch (error) {
            throw error;
        }
    }

    @Get()
    @ApiOperation({ summary: 'Search for a brand base on the filter params' })
    @ApiResponse({ status: 200, description: 'The brands have been successfully retrieved.', type: [Brand] })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 401, description: 'Unauthorized.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiQuery({ name: 'name', required: false, type: String })
    @ApiQuery({ name: 'country', required: false, type: String })
    @ApiQuery({ name: 'active', required: false, type: Boolean })
    @ApiQuery({ name: 'order_param', required: false, type: String })
    @ApiQuery({ name: 'order', required: false, type: String })
    async getBrands(
        @Query('name') name?: string,
        @Query('country') country?: string,
        @Query('active') active?: boolean,
        @Query('order_param') order_param?: 'name' | 'country' | 'created_at' | 'updated_at' | 'deleted_at',
        @Query('order') order?: 'asc' | 'desc'
    ): Promise<Brand[]> {
        try {
            const filters: getFilters = {
                name,
                country,
                active
            };
            const order_by: getOrderBy = {
                column: order_param,
                order
            };
    
            return await this.brandService.get(filters, order_by);
        } catch (error) {
            throw error;
        }
    }

    @Get(':id')
    @ApiOperation({ summary: 'Get a brand based on it\'s id' })
    @ApiResponse({ status: 200, description: 'The brand have been successfully retrieved.', type: Brand })
    @ApiResponse({ status: 400, description: 'Bad request.' })
    @ApiResponse({ status: 401, description: 'Unauthorized.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 404, description: 'Not found' })
    async getBrandById(@Param('id') id: number): Promise<Brand | null> {
        try {
            const brand = await this.brandService.getById(id);
            console.log(brand)
            if (!brand) {
                throw new HttpException('Brand not found', HttpStatus.NOT_FOUND);
            }

            return brand;
        } catch (error) {
            throw error;
        }
    }
}