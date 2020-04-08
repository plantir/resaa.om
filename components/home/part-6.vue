<style lang="scss" scoped>
.boxes {
  width: 100%;
  height: auto;
  box-sizing: border-box;
  position: relative;
  transition: all ease 0.3s;
  .background {
    position: absolute;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    overflow: hidden;
    .under_menu_background {
      background-image: url(~assets/img/index_background6.png);
      position: absolute;
      transform: rotateY(180deg);
      left: 0px;
      top: 0px;
      width: 100%;
      height: 100%;
      background-size: cover;
      background-repeat: no-repeat;
      background-position: 50% 50%;
    }
  }
  .content {
    padding: 2100px 20px;
    font-weight: 600;
    @include respond-to(lg) {
      padding: 210px 60px;
    }
    @include respond-to(xl) {
      max-width: 1600px;
    }
    @include respond-to(sm) {
      padding: 60px 15px;
    }
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
    display: flex;
    flex-direction: column;
    display: flex;
    justify-content: space-between;
    align-items: center;

    .text {
      width: 100%;
      .title {
        padding: 0.5rem;
        margin: 16px 0;
        color: #000;
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
        color: #000;
        font-size: 16px;
        margin: 40px auto;
      }
    }
    .information {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      @include respond-to(sm) {
        flex-direction: column;
      }
      .counter-01 {
        min-width: 250px;
        color: #000;
        + .counter-01 {
          border-right: 1px dashed #ffffff42;
          @include respond-to(sm) {
            border: none;
          }
        }
        .box-title {
          position: relative;
          @include respond-to(sm) {
            margin-bottom: 40px;
          }
          .number {
            font-size: 48px;
          }
          &::after {
            content: '';
            width: 20px;
            height: 2px;
            background: #fff;
            position: absolute;
            bottom: 0;
            right: 50%;
            transform: translate(50%, 10px);
          }
        }
      }
    }
  }
}
</style>
<template>
  <div class="boxes">
    <!-- <div class="background">
      <div class="under_menu_background"></div>
    </div>-->

    <div class="content">
      <div class="text">
        <h1 class="title">بیانات الواجب الرساء:</h1>
        <p class="des">بالأستفاده من رسا تقدرون ان تنصلون مع اطبأکم و تستشیرون معهم</p>
      </div>
      <div class="information">
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۷۰۰۰۰+</span>
            </div>
            <p>مشترک</p>
          </div>
        </div>
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۶۰۰۰۰+</span>
            </div>
            <p>طبیب و مستشار</p>
          </div>
        </div>
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۵۰۰۰۰+</span>
            </div>
            <p>اتصال</p>
          </div>
        </div>
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
