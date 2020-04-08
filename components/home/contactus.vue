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
      background-image: url(~assets/img/contactus-back.png);
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
    padding: 10px 20px 220px;
    @include respond-to(lg) {
      padding: 10px 60px 220px;
    }
    @include respond-to(xl) {
      max-width: 1600px;
    }
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
    display: flex;
    flex-direction: row;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    @include respond-to(sm) {
      flex-direction: column;
    }
    .text {
      width: 50%;
      background: #fff;
      padding: 40px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      @include respond-to(sm) {
        padding: 30px;
        width: 100%;
        margin-bottom: 40px;
      }
      .title {
        padding: 0.5rem;
        margin: 16px 0 24px;
        color: #333;
        width: 100%;
        text-align: right;
        font-size: 24px !important;
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
        margin: 40px auto;
      }
      .form {
        input,
        textarea {
          color: #787878;
          background-color: #f6f6f6;
          min-height: 50px;
          border: none;
          border-radius: 3px;
          padding: 10px 20px;
          max-height: 150px;
          margin-top: 15px;
        }
        label {
          color: #000;
        }
        .part-2 {
          display: flex;
          margin-bottom: 20px;
          justify-content: space-between;
          @include respond-to(sm) {
            flex-direction: column;
          }
          div {
            flex: 0 0 48%;
            display: flex;
            flex-direction: column;
            &:first-child {
              margin-bottom: 20px;
            }
            input {
              width: 100%;
            }
          }
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
          width: max-content;
          cursor: pointer;
          background-color: #1abc9c;
          color: #fff;
        }
      }
    }
    .message-group {
      width: 50%;
      padding: 0 50px;
      color: #fff;
      @include respond-to(sm) {
        width: 100%;
        padding: 0;
      }
      .iconbox-20 {
        display: flex;
        align-items: center;
        margin-bottom: 30px;
        .icon {
          width: 64px;
          height: 64px;
          text-align: center;
          background-color: #1abc9c;
          border-radius: 50%;
          font-size: 26px;
          display: flex;
          align-items: center;
          justify-content: center;
          margin-left: 20px;
        }
      }
      .phone {
        direction: ltr;
        display: inline-block;
      }
      .saas2-footer-info {
        border-right: 2px solid #ffffff;
        padding-right: 21px;
        margin: 50px 0;
        font-size: 18px;
      }
      .saas2-footer-info2 {
        .title {
          font-size: 18px;
          margin-bottom: 10px;
        }
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
        <h1 class="title">املأ النموذج أدناه وانتظر اتصالنا</h1>
        <div class="form" id="form">
          <div class="part-2">
            <div>
              <label for="name">الاسم واللقب</label>
              <input type="text" id="name" class="name" />
            </div>
            <div>
              <label for="name">جوال</label>
              <input type="mobile" id="mobile" class="mobile" />
            </div>
          </div>
          <div class="part">
            <label for="matn">الموضوع</label>
            <input type="text" id="mozoe" />
          </div>
          <div class="part">
            <label for="matn">الوصف</label>
            <textarea name id="matn" cols="10" rows="10" no-resize></textarea>
          </div>
          <div class="part">
            <input type="submit" class="submit-form" value="إرسال" />
          </div>
        </div>
      </div>
      <div class="message-group">
        <div class="iconbox-20">
          <div class="icon">
            <v-icon color="#fff">phone</v-icon>
          </div>
          <div class="cont">
            <h4 class="title">جاهز للاتصال؟</h4>
            <h4 class="subtitle">معلومات الاتصال</h4>
          </div>
        </div>
        <div class="saas2-footer-info">
          <p>
            هاتف محمول:
            <span class="color-accent phone">+968 2499 2018</span>
          </p>
          <p>البريد الإلكتروني: info@resaa.om</p>
        </div>
        <div class="saas2-footer-info2">
          <h6 class="title">ساعات الاستجابة</h6>
          <p>
            من السبت إلى الأربعاء
            : 8:00am-5:30pm
          </p>
          <p>الخميس: 10:00am-2:00pm</p>
          <p>الجمعة: close</p>
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
  },
  data() {
    return {
      submit: false,
      submitrating: 0,
      active: 0
    }
  },
  methods: {
    out() {
      if (!this.submit) {
        this.active = 0
      } else {
        this.active = this.submitrating
      }
    },
    over(item) {
      this.active = item + 1
    },
    submitrate(item) {
      this.submit = true
      this.active = item + 1
      this.submitrating = this.active
    }
  }
})
</script>
