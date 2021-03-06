declare module '*.vue' {
  import { defineComponent } from 'vue'
  const component: ReturnType<typeof defineComponent>
  export default component
}

declare module '*.json'
{
  const value: { [key: string]: any };
  export default value;
}
