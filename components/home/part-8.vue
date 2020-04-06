<style lang="scss" scoped>
.boxes {
  display: table;
  width: 100%;
  height: auto;
  box-sizing: border-box;
  position: relative;
  transition: all ease 0.3s;
  .content {
    padding: 100px 20px 100px;
    @include respond-to(lg) {
      padding: 100px 60px 100px;
    }
    @include respond-to(sm) {
      padding: 40px 15px 20px;
    }
    @include respond-to(xl) {
      max-width: 1600px;
    }
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
    display: flex;
    flex-direction: column;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    .text {
      max-width: 760px;
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
        width: 80%;
        color: #333;
        font-size: 16px;
        margin: 20px auto;
      }
      .form {
        padding: 0 50px;
        input,
        textarea {
          margin-top: 10px;
          padding: 10px;
          box-shadow: 0 0 8px #8e8e8e;
          max-height: 150px;
        }
        .part {
          display: flex;
          flex-direction: column;
          margin-bottom: 20px;
          .box-rating {
            display: flex;
            align-items: center;
            justify-content: space-between;
          }
        }
        .submit-form {
          border-radius: 50px;
          cursor: pointer;
          background-image: linear-gradient(to left, #fe7966, #ffda71);
          color: #fff;
        }
      }
    }
    .logo-boxes {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      .logo-box {
        flex: 0 0 20%;
        width: 20%;
        padding: 0 15px;
        text-align: center;
        margin-bottom: 20px;
        @include respond-to(sm) {
          width: 100%;
          flex: 0 0 100%;
        }
        img {
          max-width: 100%;
        }
      }
    }
  }
}
</style>
<template>
  <div class="boxes">
    <div class="content">
      <div class="text">
        <h1 class="title">
          برخی از
          <span>برند هایی</span> که تکنسین برتر تعمیر میکند
        </h1>
        <p>برخی از برندهایی که در تعمیر آن تخصص داریم و عمده محصولات صوتی تصویری را تشکیل میدهند</p>
      </div>
      <div class="logo-boxes">
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/samsung.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/lg.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/sony.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/jvc.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/toshiba.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/hisense.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/panasonic.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/daewoo.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/xvision.png" class="img-Lazy" />
          </a>
        </div>
        <div class="logo-box">
          <a href="#" title class="img-Lazy-warp">
            <img src="~assets/img/brands/tcl.png" class="img-Lazy" />
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
// import desktopMenu from './menu.vue'
import Vue from 'vue'
export default Vue.extend({})
</script>
