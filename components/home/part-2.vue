<style lang="scss" scoped>
.boxes {
  display: table;
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
      background-image: url(~assets/img/index_background2.png);
      position: absolute;
      transform: rotateY(180deg);
      left: 0px;
      top: 0px;
      width: 100%;
      height: 100%;
      background-size: auto;
      background-repeat: no-repeat;
      background-position: 50% 100%;
    }
  }
  .content {
    padding: 100px 20px 0px;
    @include respond-to(lg) {
      padding: 100px 60px 0px;
    }
    @include respond-to(xl) {
      max-width: 1600px;
    }
    @include respond-to(sm) {
      padding: 0px 0px 0px;
      margin-bottom: 40px;
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
      padding: 0 15px;
      max-width: 760px;
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
        margin: 60px auto;
        @include respond-to(lg) {
          width: 60%;
        }
      }
    }

    .level-boxes {
      align-items: center;
      justify-content: space-evenly;
      display: flex;
      @include respond-to(sm) {
        flex-direction: column;
      }
      .box-lvl {
        width: 33%;
        padding: 0 15px;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        @include respond-to(sm) {
          width: 100%;
        }
        img {
          margin-bottom: 60px;
          width: 100%;
        }
        .number {
          width: 104px;
          height: 91px;
          line-height: 108px;
          text-align: center;
          display: inline-block;
          font-size: 32px;
          color: #fff;
          margin-bottom: 18px;
          &.box1 {
            background-image: url(~assets/img/number-box-1.png);
          }
          &.box2 {
            background-image: url(~assets/img/number-box-2.png);
            line-height: 81px;
          }
          &.box3 {
            background-image: url(~assets/img/number-box-3.png);
          }
        }
      }
    }
  }
}
</style>
<template>
  <div class="boxes" id="section2">
    <div class="background">
      <div class="under_menu_background"></div>
    </div>

    <div class="content">
      <div class="text">
        <h1 class="title">
          تعمیر تلویزیون
          <span>درمحل</span>
        </h1>
        <p
          class="des"
        >تلویزین شما را با بهترین قیمت و سریع ترین زمان در محل شما تعمیر خواهیم کرد کافیست مراحل زیر را انجام دهید و در کمترین زمان ممکن تلویزیون بدون ایراد خود را داشته باشید</p>
      </div>
      <div class="level-boxes">
        <div class="box-lvl">
          <span class="number box1">01</span>
          <h6 class="title">اطلاع دادن به تکنسین برتر</h6>
          <p>شما میتوانید با شماره شرکت تماس گرفته و خرابی قطعه خود را اعلام کنید و یا از طریق فرم ثبت خرابی اقدام نمایید تا ما با شما تماس بگیریم</p>
        </div>
        <div class="box-lvl">
          <img src="~assets/img/lvl-box.png" alt />
          <span class="number box2">02</span>
          <h6 class="title">هماهنگی</h6>
          <p>دادن اطلاعات در مورد قطعه‌ای که خراب شده است و نیاز به تعمیر دارد و هماهنگی روز و ساعت حضور ما نزد شما</p>
        </div>
        <div class="box-lvl">
          <span class="number box3">03</span>
          <h6 class="title">تعمیر تلویزیون</h6>
          <p>تلویزیون شما در صورتی که قابلیت تعمیر در محل را داشته باشد در محل شما حضور پیدا میکنیم و آن را تعمیر میکنیم و در غیر اینصورت تلویزیون شما را به شرکت منتقل کرده وآن را تعمیر میکنیم</p>
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
