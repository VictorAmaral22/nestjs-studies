import { ApiProperty } from "@nestjs/swagger";
import { BaseEntity, Column, Entity, OneToOne, PrimaryGeneratedColumn, TableForeignKey } from "typeorm";
import { Brand } from "./brand.entity";

@Entity()
export class Car extends BaseEntity{    
    @PrimaryGeneratedColumn()
    @ApiProperty({ example: 1 })
    id: number;
    
    @Column({ nullable: false, type: 'int' })
    @OneToOne(() => Brand, (brand) => brand.id)
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
    
    @ApiProperty({ example: new Date() })
    created_at: Date;
    
    @ApiProperty({ example: new Date() })
    updated_at: Date;
    
    @ApiProperty({ example: null })
    deleted_at: Date | null;
}