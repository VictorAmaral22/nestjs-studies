import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DatabaseModule } from './database/database.module';
import { CarModule } from './car/car.module';
import { BrandModule } from './brand/brand.module';
require('dotenv').config()

@Module({
  imports: [
    DatabaseModule,
    CarModule,
    BrandModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
