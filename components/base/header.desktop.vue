<style lang="scss">
#nav-header {
  color: #4570ab;
  width: 100%;
  padding: 0 3rem;
  position: absolute;
  top: 0;
  height: 96px;
  margin: 0 auto;
  left: 0;
  right: 0;
  z-index: 10;
  display: flex;
  justify-content: space-between;
  align-items: center;
  &.active {
    background-color: #fff;
    position: fixed;
    height: 70px;
    box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
    .menuItems {
      ul {
        a {
          color: #333;
        }
      }
    }
  }
  .logo {
    display: block;
    height: 90%;
    @include respond-to(lg) {
      img {
        height: 100%;
      }
    }
  }
  .menuItems {
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      a {
        display: inline-flex;
        padding: 10px 20px;
        color: #fff;
        font-weight: 500;
        border-radius: 26px;
        min-width: 100px;
        justify-content: center;
        align-items: center;
        line-height: 33px;
        cursor: pointer;
        &:hover,
        &.nuxt-link-exact-active {
          background: $primary-color;
          color: #fff;
        }
      }
    }
  }
  .left-panel {
    .buy-btn {
      background-color: #fb7c35;
      box-shadow: 0px 5px 16px rgba(0, 0, 0, 0.3);
      color: #fff;
      font-size: 18px;
      padding: 10px 30px;
      height: auto;
      border-radius: 50px;
    }
  }

  .active {
    color: purple;
  }
}
</style>

<template>
  <div id="nav-header" class="menu" :class="{active:scrolled,unactive:!scrolled}">
    <div class="logo">
      <img src="~assets/img/logo.png" alt />
    </div>
    <div class="menuItems">
      <ul>
        <a v-scroll-to="{el:'#section1',offset:0,duration:1000}">صفحه اصلی</a>
        <a v-scroll-to="{el:'#section2',offset:0,duration:1000}">تعمیر تلویزین در محل</a>
        <a v-scroll-to="{el:'#section3',offset:0,duration:1000}">درباره ما</a>
        <a v-scroll-to="{el:'#form',offset:-350,duration:1500}">تماس با ما</a>
      </ul>
    </div>
    <div class="left-panel">
      <v-btn v-scroll-to="{el:'#form',offset:-350,duration:1500}" class="buy-btn">تعمیر تلویزیون</v-btn>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data() {
    return {
      scrolled: false
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll)
  },
  destroyed() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    handleScroll() {
      if (window.pageYOffset > 0) {
        this.scrolled = true
      } else {
        this.scrolled = false
      }
    }
  }
})
</script>
