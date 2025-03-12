import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CarsController } from './models/cars/cars.controller';

@Module({
  imports: [],
  controllers: [AppController, CarsController],
  providers: [AppService],
})
export class AppModule {}
