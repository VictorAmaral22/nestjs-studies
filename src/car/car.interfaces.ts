import { ApiProperty } from "@nestjs/swagger";
import { Brand } from "../brand/brand.entity";

export class CreateCar {
    @ApiProperty({ example: 1 })
    brand_id: number;

    @ApiProperty({ example: 'Impala' })
    model: string;

    @ApiProperty({ example: 1967 })
    year: number;

    @ApiProperty({ example: 'black' })
    color: string;

    @ApiProperty({ example: 55000 })
    price: number;

    @ApiProperty({ example: 'https://vintageclassicos.com.br/wp-content/uploads/2023/10/Chevy-Impala-1967-4.jpeg' })
    photo: string;
}

export class GetCar {
    @ApiProperty({ example: 1 })
    id: number;

    @ApiProperty({ example: 1 })
    brand_id: number;

    @ApiProperty({ example: 'Impala' })
    model: string;

    @ApiProperty({ example: 1967 })
    year: number;

    @ApiProperty({ example: 'black' })
    color: string;

    @ApiProperty({ example: 55000 })
    price: number;

    @ApiProperty({ example: 'https://vintageclassicos.com.br/wp-content/uploads/2023/10/Chevy-Impala-1967-4.jpeg' })
    photo: string;

    @ApiProperty({ example: true })
    active: boolean;

    @ApiProperty({ example: '2023-01-01T00:00:00Z' })
    created_at: Date;

    @ApiProperty({ example: '2023-01-01T00:00:00Z' })
    updated_at: Date;

    @ApiProperty({ example: null })
    deleted_at: Date;

    @ApiProperty({ type: () => Brand })
    brand: Brand;
}

export type getFilters = {
    brand_id?: number;
    model?: string;
    year?: number;
    color?: string;
    price?: number;
    active?: boolean;
}

export type getOrderBy = {
    column?: string;
    order?: string;
}