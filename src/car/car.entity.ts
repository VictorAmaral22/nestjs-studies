import { ApiProperty } from "@nestjs/swagger";
import { BaseEntity, Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Car extends BaseEntity {
    @PrimaryGeneratedColumn()
    @ApiProperty({ example: 1 })
    id: number;

    @Column({ nullable: false, type: 'int' })
    // @OneToOne(() => Brand, (brand) => brand.id)
    @ApiProperty({ example: 1 })
    brand_id: number;

    @Column({ nullable: false, type: 'varchar', length: 255 })
    @ApiProperty({ example: 'Impala' })
    model: string;

    @Column({ nullable: false, type: 'int' })
    @ApiProperty({ example: 1967 })
    year: number;

    @Column({ nullable: false, type: 'varchar', length: 255 })
    @ApiProperty({ example: 'black' })
    color: string;

    @Column({ nullable: false, type: 'int' })
    @ApiProperty({ example: 55000 })
    price: number;

    @Column({ nullable: false, type: 'varchar', length: 255 })
    @ApiProperty({ example: 'https://vintageclassicos.com.br/wp-content/uploads/2023/10/Chevy-Impala-1967-4.jpeg' })
    photo: string;

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
    deleted_at: Date | null;
}