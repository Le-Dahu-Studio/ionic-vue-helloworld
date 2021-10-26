<template>
  <ion-app>
    <ion-router-outlet />
  </ion-app>
</template>

<script lang="ts">
import { IonApp, IonRouterOutlet } from '@ionic/vue';
import { defineComponent } from 'vue';
import { Storage } from '@capacitor/storage';
import { useI18n } from 'vue-i18n';

export default defineComponent({
    name: 'App',
    components: {
        IonApp,
        IonRouterOutlet
    },
    setup() {
        const { locale } = useI18n({ useScope: 'global' });
        const beforeCreated = async () => {
            const { value } = await Storage.get({key:'locale'});

            if (value)
                locale.value = value;
        }
        beforeCreated();
    }
});
</script>
