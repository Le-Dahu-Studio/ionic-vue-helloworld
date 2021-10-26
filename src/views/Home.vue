<template>
    <ion-page>
        <ion-header :translucent="true">
            <ion-grid>
                <ion-row :style='styleDevRow'>
                    <ion-col><GitVersion/></ion-col>
                </ion-row>
                <ion-row class='ion-align-items-end'>
                    <ion-col><h1>{{ t('Welcome_title') }}</h1></ion-col>
                    <ion-col><LocaleChanger/></ion-col>
                </ion-row>
            </ion-grid>
        </ion-header>
        <ion-content :fullscreen="true">
            <h1>{{ t('Hello_world') }}</h1>
            <h2>{{ t('Building') }}</h2>
        </ion-content>
    </ion-page>
</template>

<script lang="ts">
import {
    IonContent,
    IonHeader,
    IonPage,
    IonTitle,
    IonToolbar,
    IonGrid,
    IonRow,
    IonCol,
    } from '@ionic/vue';

import { defineComponent } from 'vue';
import GitVersion from '../components/GitVersion.vue';
import LocaleChanger from '../components/LocaleChanger.vue';
import { useI18n } from 'vue-i18n';

export default defineComponent({
  name: 'Home',
  components: {
    GitVersion,
    LocaleChanger,
    IonContent,
    IonHeader,
    IonPage,
    IonGrid,
    IonRow,
    IonCol,
},
setup() {
    const styleDevRow = {
        'background': '#f00',
        'color': '#fff',
    };
    const { t, d, n } = useI18n({
      inheritLocale: true
    })
    return {
        t,
        styleDevRow,
    }
}
});
</script>

<style scoped>
#container {
  text-align: center;

  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
}

#container strong {
  font-size: 20px;
  line-height: 26px;
}

#container p {
  font-size: 16px;
  line-height: 22px;

  color: #8c8c8c;

  margin: 0;
}

#container a {
  text-decoration: none;
}
</style>
