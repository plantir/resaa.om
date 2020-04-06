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
      background-image: url(~assets/img/index_background3.png);
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
    padding: 100px 20px 100px;
    @include respond-to(lg) {
      padding: 100px 60px 100px;
    }
    @include respond-to(xl) {
      max-width: 1600px;
    }
    @include respond-to(sm) {
      padding: 40px 10px 80px;
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
      max-width: 760px;
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
    .box-list {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      .box-detail {
        flex: 0 0 48%;
        @include respond-to(lg) {
          flex: 0 0 32%;
        }
        @include respond-to(sm) {
          flex: 0 0 100%;
        }
      }
      .iconbox-22 {
        display: flex;
        align-items: center;
        padding: 20px;
        border-radius: 3px;
        background-color: #fff;
        margin: 0 0 30px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        text-align: right;
        .title {
          color: #333333;
          font-size: 20px;
          margin: 0;
          font-weight: 700;
        }
        .icon {
          width: 64px;
          height: 64px;
          background-color: #523ee8;
          font-size: 30px;
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          margin-left: 18px;
          flex: 0 0 64px;
          color: #fff;
        }
      }
    }
  }
}
</style>
<template>
  <div class="boxes" id="section3">
    <div class="background">
      <div class="under_menu_background"></div>
    </div>

    <div class="content">
      <div class="text">
        <h1 class="title">لورم ایپسوم متن ساختگی</h1>
        <p
          class="des"
        >لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است</p>
      </div>
      <div class="box-list">
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">قیمت مناسب</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">بیش از ۳۰ سال سابقه</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">استفاده از قطعات اصلی</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">تضمین بهترین قیمت</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">تضمین بهترین کیفیت</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">تضمین اصالت قطعات</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">پشتیبانی ۲۴ ساعته</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">تعمیر در محل شما</h6>
          </div>
        </div>
        <div class="box-detail">
          <div class="iconbox-22">
            <div class="icon">
              <i class="material-icons">compare_arrows</i>
            </div>
            <h6 class="title">استفاده از تکنولوزی روز</h6>
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
