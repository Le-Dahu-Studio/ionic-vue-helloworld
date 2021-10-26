<template>
    <p>Current git commit: {{ hash }}</p>
</template>

<script lang='ts'>
import { defineComponent } from 'vue';

export default defineComponent({
    name: 'GitVersion',
    setup() {
        const hash = process.env.VUE_APP_GIT_HASH

        return {hash}
    },
});
</script>
