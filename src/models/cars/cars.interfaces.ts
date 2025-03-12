type CreateCar = {
    brand: string;
    model: string;
    year: number;
    color: string;
    price: number;
    photo: string;
}

type CreateBrand = {
    name: string;
}

type GetCar = {
    id: number;
    brand_id: number;
    model: string;
    year: number;
    color: string;
    price: number;
    photo: string;
    active: boolean;
    created_at: Date;
    updated_at: Date;
    deleted_at: Date;
    brand: Brand;
}

type getFilters = {
    brand_id?: number;
    model?: string;
    year?: number;
    color?: string;
    price?: number;
    active?: boolean;
}

type getOrderBy = {
    column: string;
    order: string;
}