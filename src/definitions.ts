declare module '@capacitor/core' {
  interface PluginRegistry {
    Putio: PutioPlugin;
  }
}

export interface PutioPlugin {
  // login(options: IPutio): Promise<IResponse>;
  add(options: IPutio): Promise<IResponse>;
  // remove(options: IPutio): Promise<IResponse>;
}

export interface IPutio {
  client_id: string;
  client_secret: string;
  token: string;
}

export interface IResponse { 

}