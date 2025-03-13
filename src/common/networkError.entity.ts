import { ApiProperty } from "@nestjs/swagger";
import { BaseEntity, Entity } from "typeorm";

@Entity()
export class NetworkError extends BaseEntity { 
    @ApiProperty({ example: "Not found" })
    message: string;
    
    @ApiProperty({ example: 404 })
    status: number;
}