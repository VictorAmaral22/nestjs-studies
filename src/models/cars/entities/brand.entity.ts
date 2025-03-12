import { ApiProperty } from "@nestjs/swagger";
import { BaseEntity, Column, CreateDateColumn, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Car } from "./car.entity";

@Entity()
export class Brand extends BaseEntity {
    @PrimaryGeneratedColumn()
    @ManyToOne(() => Car, (car) => car.brand_id)
    @ApiProperty({ example: 1 })
    id: number;

    @Column({ nullable: false, type: 'varchar', length: 255 })
    @ApiProperty({ example: 'Chevrolet' })
    name: string;

    @Column({ nullable: false, type: "bool", default: true })
    @ApiProperty({ example: true })
    active: boolean;

    @CreateDateColumn()
    @ApiProperty({ example: new Date() })
    created_at: Date;

    @CreateDateColumn()
    @ApiProperty({ example: new Date() })
    updated_at: Date;

    @Column({ nullable: true, type: 'timestamp' })
    @ApiProperty({ example: null })
    deleted_at: Date;
}