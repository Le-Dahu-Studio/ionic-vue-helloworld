<template>
    <ion-item>
        <ion-label>{{ t('Language') }}: </ion-label>
        <ion-select
            interface="popover"
            :placeholder="t('Choose_value')"
            @ionChange='onChange($event)'
            :value='locale'
            v-model='locale'>
            <ion-select-option v-for="(lang, i) in langs" :key="`Lang${i}`" :value="lang">
                 {{ lang }}
            </ion-select-option>
        </ion-select>
    </ion-item>
</template>

<script lang='ts'>
import { defineComponent } from 'vue';
import { useI18n } from 'vue-i18n';
import { Storage } from '@capacitor/storage';
import {
    IonItem,
    IonLabel,
    IonSelect,
    IonSelectOption,
    } from '@ionic/vue'

export default defineComponent({
    name: 'LocaleChanger',
    components: {
        IonItem,
        IonLabel,
        IonSelect,
        IonSelectOption,
    },
    setup() {
        const { t, locale } = useI18n({ useScope: 'global' });
        const onChange = (e: Event & { target: HTMLInputElement }) => {
            Storage.set({key: 'locale', 'value': e.target.value,});
        };


        return {
            langs: ['fr', 'en'],
            t, locale,
            onChange, };
    },
});
</script>
