import { ApiProperty } from "@nestjs/swagger";

export class CreateBrand {
    @ApiProperty({ example: 'Chevrolet' })
    name: string;

    @ApiProperty({ example: 'https://logodownload.org/wp-content/uploads/2014/09/chevrolet-logo-1.png' })
    logo: string;

    @ApiProperty({ example: 'United States' })
    country: string;
}

export type getFilters = {
    name?: string;
    country?: string;
    active?: boolean;
}

export type getOrderBy = {
    column?: string;
    order?: string;
}