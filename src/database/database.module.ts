import { DataSource } from 'typeorm';
import { Global, Module } from '@nestjs/common';
import { join } from 'path';
import { Car } from 'src/car/car.entity';
import { Brand } from 'src/brand/brand.entity';

@Global()
@Module({
    imports: [],
    providers: [
        {
            provide: DataSource,
            inject: [],
            useFactory: async () => {
                try {
                    const dataSource = new DataSource({
                        type: 'postgres',
                        host: process.env.DATABASE_HOST,
                        port: Number(process.env.DATABASE_PORT) ?? 5432,
                        username: process.env.DATABASE_USER,
                        password: process.env.DATABASE_PASSWORD,
                        database: process.env.DATABASE_NAME,
                        entities: [Brand, Car, join(__dirname, '**', '*.entity.{ts,js}')],
                        synchronize: false,
                    });
                    await dataSource.initialize();
                    console.log('Database connected successfully');
                    return dataSource;
                } catch (error) {
                    console.log('Error connecting to database');
                    throw error;
                }
            },
        },
    ],
    exports: [DataSource],
})
export class DatabaseModule { }