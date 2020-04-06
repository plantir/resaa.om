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
        color: #fff;
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
        color: #fff;
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
        color: #fff;
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
    .download {
      display: inline-block;
      font-size: 16px;
      color: #fff;
      padding: 0 30px;
      background-color: #1abc9c;
      transition: all 0.3s cubic-bezier(0.22, 0.61, 0.36, 1);
      box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
      font-weight: 600;
      line-height: 50px;
      height: 50px;
      padding: 0 25px;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      touch-action: manipulation;
      cursor: pointer;
      user-select: none;
      border: none;
      border-radius: 50px;
      color: #fff !important;
      margin-top: 40px;
      @include respond-to(lg) {
        margin-top: 60px;
      }
      @include respond-to(sm) {
        margin-top: 10px;
      }
      &:hover {
        background-color: #00aa89;
      }
    }
  }
}
</style>
<template>
  <div class="boxes">
    <div class="background">
      <div class="under_menu_background"></div>
    </div>

    <div class="content">
      <div class="text">
        <h1 class="title">آمار خدمت رسانی تکنسین برتر</h1>
        <p class="des">مفتخریم که تا کنون توانسته ایم در خدمت شما هموطنان عزیز باشیم</p>
      </div>
      <div class="information">
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۳۰۰+</span>
            </div>
            <p>تعمیر در منزل</p>
          </div>
        </div>
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۲۷۸+</span>
            </div>
            <p>مشتری راضی</p>
          </div>
        </div>
        <div class="counter-01">
          <div class="box-title">
            <div class="custom-module" data-effect="Number">
              <span class="animation number">۱۵۰+</span>
            </div>
            <p>نظر مثبت</p>
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
