import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getRoot(): string {
    return `
        <h1>Bem vindo à REST API de Carros!</h1>
        <p>Para acessar a documentação da API com Swagger, acesse <a href="/api">/docs</a></p>
    `;
  }

  getHello(): string {
    return 'Hello World!';
  }
}
