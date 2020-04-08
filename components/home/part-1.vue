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
      background-image: url(~assets/img/index_background.png);
      position: absolute;
      transform: rotateY(180deg);
      left: 0px;
      top: 0px;
      width: 100%;
      height: 100%;
      background-size: cover;
      background-repeat: no-repeat;
      background-position: 50% 60%;
    }
  }
  .content {
    padding: 140px 20px 100px;
    position: relative;
    display: flex;
    flex-direction: row;
    display: flex;
    justify-content: space-between;
    align-items: center;
    @include respond-to(lg) {
      padding: 140px 60px 400px;
    }
    @include respond-to(sm) {
      flex-direction: column;
    }
    .title {
      padding: 0.5rem;
      margin: 16px 0;
      color: #fff;
      width: 100%;
      text-align: right;
      font-size: 48px !important;
      line-height: 1.2;
    }
    .text {
      width: 40%;
      @include respond-to(sm) {
        width: 100%;
      }
      .form {
        width: 300px;
        direction: ltr;
        line-height: 50px;
        position: relative;
        border-radius: 50px;
        overflow: hidden;
        @include respond-to(sm) {
          width: 100%;
        }
        input.email-adress {
          width: 80%;
          padding-left: 10px;
          padding-right: 30px;
          background: #fff;
        }
        input.submit {
          width: 30%;
          background: #1abc9c;
          border-radius: 50px;
          position: absolute;
          cursor: pointer;
          z-index: 2;
          right: 0px;
        }
      }
      p {
        text-align: right;
        color: #fff;
        font-size: 16px;
        margin: 40px 0;
        @include respond-to(sm) {
          text-align: justify;
          line-height: 2rem;
        }
      }
    }
    .img {
      position: absolute;
      left: -140px;
      bottom: 30%;

      @include respond-to(sm) {
        bottom: -25px;
        width: 100%;
        left: 0;
      }
      img {
        width: 100%;
      }
    }
  }
}
</style>
<template>
  <div class="boxes" id="section1">
    <div class="background">
      <div class="under_menu_background"></div>
    </div>

    <div class="content">
      <div class="text">
        <h1 class="title">مشرو استمارة التحت للأتصال بنا استعلامات للأتصال</h1>
        <p class="des">
          رسا اقامة المریض بالمستشفی و الأتصال بین المریض و الطبیب
          نحن نجتهد للتسهیل الأمور بین المرضا و الأطباء المتخصصین
        </p>
        <div class="text-center">
          <v-btn
            v-scroll-to="{ el: '#form', offset: -250, duration:1500 }"
            outlined
            rounded
            x-large
            dark
          >بداية</v-btn>
        </div>
        <!-- <div class="form">
          <input
            type="email"
            placeholder="لطفا ایمیل خود را وارد نمایید"
            required
            class="email-adress"
          />
          <input type="submit" class="submit" />
        </div>-->
      </div>
      <div class="img">
        <img src="~assets/img/img_header.png" alt />
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
