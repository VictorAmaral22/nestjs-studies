type Car = {
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
}

type Brand = {
    id: number;
    name: string;
    active: boolean;
    created_at: Date;
    updated_at: Date;
    deleted_at: Date;
}