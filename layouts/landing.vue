<style lang="scss" scoped>
.route-wrapper {
  min-height: calc(100vh - 302px - 80px);
}
html {
  scroll-behavior: smooth;
}
</style>
<template>
  <v-app dark>
    <nuxt class="route-wrapper" />
  </v-app>
</template>
<script lang="ts">
import Footer from '@/components/base/footer.desktop.vue'
import Header from '@/components/base/header.desktop.vue'
import HeaderMobile from '@/components/base/header.mobile.vue'
import buttouns from '@/components/base/buttons.vue'
import Vue from 'vue'
export default Vue.extend({
  components: {
    Footer,
    Header,
    HeaderMobile,
    buttouns
  }
})
</script>
