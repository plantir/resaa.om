<style lang="scss" scoped>
header {
  position: fixed;
  top: 0;
  right: 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 10px;
  height: 60px;
  z-index: 1;
  width: 100%;
  background: #ffffff;
  box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
  img {
    max-height: 50px;
  }
}
.open-menu {
  z-index: 1000;
  .menu {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    height: 65px;
    line-height: 65px;
    padding: 0px 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    color: $primary-color;
    font-size: 22px;
    cursor: pointer;
    font-weight: 600;
    .close {
      position: relative;
      width: 24px;
      height: 24px;
      color: #333;
      z-index: 1000;
      cursor: pointer;
      &:after {
        content: '';
        width: 25px;
        border-bottom: 2px solid currentColor;
        position: absolute;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg);
        top: 50%;
        left: 50%;
        margin-left: -13px;
      }
      &:before {
        content: '';
        width: 25px;
        border-bottom: 2px solid currentColor;
        position: absolute;
        -webkit-transform: rotate(45deg);
        transform: rotate(45deg);
        top: 50%;
        left: 50%;
        margin-left: -13px;
      }
    }
  }
  .menu-list {
    padding: 50px 0 0;
    li {
      border-bottom: 1px solid #e2e2e2;
      margin: 0;
      padding: 15px 20px;
      a {
        color: #333;
        font-size: 20px;
        &:hover {
          color: $primary-color;
        }
      }
    }
  }
}
</style>
<template>
  <div>
    <header>
      <div class="menu">
        <v-icon color="#000" @click.stop="drawer = !drawer">menu</v-icon>
      </div>
      <div>
        <img src="~assets/img/logo.png" alt />
      </div>
      <div>
        <v-icon color="#000">search</v-icon>
      </div>
    </header>
    <v-navigation-drawer class="open-menu" v-model="drawer" width="100%" app fixed right temporary>
      <div class="menu">
        <div class="text">منو</div>
        <div class="close" @click="drawer=!drawer"></div>
      </div>
      <ul class="menu-list" nav dense>
        <li>
          <a v-scroll-to="{el:'#section1',offset:0,duration:1000}" @click="drawer = false">صفحه‌اصلی</a>
        </li>

        <li>
          <a
            v-scroll-to="{el:'#section2',offset:-150,duration:1000}"
            @click="drawer = false"
          >تعمیر تلویزیون</a>
        </li>

        <li>
          <a
            v-scroll-to="{el:'#section3',offset:-50,duration:1000}"
            @click="drawer = false"
          >درباره ما</a>
        </li>

        <li>
          <a v-scroll-to="{el:'#form',offset:-200,duration:1500}" @click="drawer = false">تماس با ما</a>
        </li>
      </ul>
    </v-navigation-drawer>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data() {
    return {
      drawer: false
    }
  }
})
</script>
