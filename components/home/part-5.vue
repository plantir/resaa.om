<style lang="scss" scoped>
.boxes {
  display: table;
  width: 100%;
  height: auto;
  box-sizing: border-box;
  position: relative;
  transition: all ease 0.3s;
  .content {
    position: relative;
    display: flex;
    flex-direction: row;
    display: flex;
    justify-content: space-between;
    align-items: center;
    @include respond-to(sm) {
      flex-direction: column-reverse;
    }
    .text {
      width: 50%;
      max-width: 600px;
      margin-left: auto;
      padding: 0 15px;
      @include respond-to(sm) {
        width: 100%;
      }
      .title {
        padding: 0.5rem;
        margin: 16px 0;
        color: #333;
        width: 100%;
        text-align: center;
        font-size: 48px !important;
        line-height: 1.2;
        span {
          color: $primary-color;
        }
      }
      p {
        text-align: center;
        color: #333;
        font-size: 16px;
        margin: 40px auto;
      }
    }
    .img {
      width: 50%;
      @include respond-to(sm) {
        width: 100%;
      }
      img {
        max-width: 100%;
        display: block;
        margin-right: 0;
        margin-left: auto;
      }
    }
  }
}
</style>
<template>
  <div class="boxes">
    <div class="content">
      <div class="img">
        <img src="~assets/img/nemodar2.png" alt />
      </div>
      <div class="text">
        <h1 class="title">
          لورم ایپسوم متن
          <span>ساختگی</span>
        </h1>
        <p
          class="des"
        >لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است</p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
// import desktopMenu from './menu.vue'
import Vue from 'vue'
export default Vue.extend({
  components: {
    // desktopMenu
  }
})
</script>
