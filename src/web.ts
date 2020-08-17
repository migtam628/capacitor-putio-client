import { WebPlugin } from '@capacitor/core';
import { PutioPlugin, IResponse, IPutio } from './definitions';

export class PutioWeb extends WebPlugin implements PutioPlugin {
  constructor() {
    super({
      name: 'Putio',
      platforms: ['web'],
    });
  }

  // async login(options: IPutio): Promise<IResponse> {
  //   return options;
  // }
  async add(options: IPutio): Promise<IResponse> {
    return options;
  }
  // async remove(options: IPutio): Promise<IResponse> {
  //   return options;
  // }
}

const Putio = new PutioWeb();

export { Putio };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(Putio);

