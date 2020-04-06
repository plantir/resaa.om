<style lang="scss">
#buttons {
  position: fixed;
  right: 42px;
  bottom: 0px;
  margin: 0;
  padding: 0;
  list-style: none;
  z-index: 999;
  @include respond-to(sm) {
    right: 7px;
    transform: scale(0.714285714);
    transform-origin: center bottom;
  }
  .v-btn--floating {
    position: relative;
  }
  .fixed-widget-list {
    padding: 0;
    li {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      white-space: nowrap;
      background-color: #2c5cda;
      margin-bottom: 20px;
      position: relative;
      opacity: 0;
      visibility: hidden;
      cursor: pointer;
      transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
      pointer-events: initial;
      background-image: url(~assets/img/fixed-widget-icon.png);
      background-repeat: no-repeat;
      background-position: 0 100px;
      a {
        display: block;
        width: 0;
        height: 0;
        background-color: inherit;
        background-clip: padding-box;
        border-radius: 100%;
        border: 28px solid transparent;
      }
      span {
        right: 66px;
        top: 50%;
        height: 42px;
        line-height: 42px;
        position: absolute;
        border-radius: 21px;
        background-color: inherit;
        margin-top: -21px;
        color: #fff;
        padding: 0px 30px;
        font-size: 16px;
        opacity: 0;
        visibility: hidden;
        transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
        @include respond-to(sm) {
          display: none;
        }
      }
      &:hover {
        cursor: pointer;
        span {
          opacity: 1;
          visibility: visible;
          right: 76px;
        }
      }
      &.active {
        opacity: 1;
        visibility: visible;
      }
      &.facebook {
        background-color: #3b5998;
        background-position: 0 -392px;
      }
      &.phone {
        background-color: #20a3fd;
        background-position: 0 -448px;
      }
      &.envelope {
        background-color: #1ec3c9;
        background-position: 0 -504px;
      }
      &.share {
        background-color: #ff6e2f;
        opacity: 1;
        visibility: visible;
        background-position: 0 -560px;
        transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
        &.active {
          background-position: 0 -616px;
        }
      }
      &.backtop {
        opacity: 1;
        visibility: visible;
        margin-bottom: -56px;
        transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
        background-color: #1abc9c;
        &:hover {
          &:before {
            margin: -11px 0px 0px 1px;
            height: 24px;
          }
          &:after {
            margin-top: -12px;
          }
        }
        &:before {
          content: '';
          height: 0px;
          border-left: 1px solid #fff;
          position: absolute;
          left: 50%;
          top: 50%;
          margin: -5px 0px 0px 1px;
          transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
          transform: translateX(-0.4px);
          backface-visibility: hidden;
        }
        &:after {
          content: '';
          width: 15px;
          height: 15px;
          border-top: 1px solid #fff;
          border-left: 1px solid #fff;
          position: absolute;
          left: 50%;
          top: 50%;
          -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
          margin: -6px 0 0 0px;
          transition: all 300ms cubic-bezier(0.65, 0.05, 0.36, 1);
          margin-left: 0;
          transform-origin: 2px 1px;
          backface-visibility: hidden;
        }
        &.active {
          margin-bottom: 30px;
        }
      }
    }
  }
}
</style>

<template>
  <div id="buttons">
    <!-- <ul class="fixed-widget-list" @mouseover="addclass()" @mouseleave="removeclass()">
      <li class="facebook" :class="{active:activebtn}">
        <a href="#" target="_blank">
          <span>Facebook</span>
        </a>
      </li>
      <li class="phone" :class="{active:activebtn}">
        <a href="tel:(+86)1234567809">
          <span>(+86)1234567809</span>
        </a>
      </li>
      <li class="envelope" :class="{active:activebtn}">
        <a href="mailto:creative@gmail.com">
          <span>creative@gmail.com</span>
        </a>
      </li>
      <li class="share" :class="{active:activebtn}" @click="changeactive()">
        <span>Contact info</span>
      </li>
    </ul>-->
    <v-speed-dial
      v-model="fab"
      :bottom="true"
      direction="top"
      transition="slide-y-reverse-transition"
      :open-on-hover="true"
    >
      <template v-slot:activator>
        <v-btn v-model="fab" color="blue darken-2" dark fab>
          <v-icon v-if="fab">la-times</v-icon>
          <v-icon v-else>la-user</v-icon>
        </v-btn>
      </template>
      <v-btn fab dark small color="green">
        <v-icon>socicon-whatsapp</v-icon>
      </v-btn>
      <v-btn fab dark small color="indigo">
        <v-icon>socicon-instagram</v-icon>
      </v-btn>
      <v-btn fab dark small color="#0095ff">
        <v-icon>socicon-telegram</v-icon>
      </v-btn>
    </v-speed-dial>
    <ul class="fixed-widget-list">
      <li @click="backtotop()" class="backtop" :class="{active:back}">
        <span>Back to top</span>
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data() {
    return {
      scrolled: false,
      activebtn: false,
      back: false,
      direction: 'top',
      fab: false,
      fling: false,
      tabs: null
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll)
  },
  destroyed() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    changeactive() {
      this.activebtn = !this.activebtn
    },
    addclass() {
      let active = false
      if (!this.activebtn) {
        active = true
      }
      this.activebtn = active
    },
    removeclass() {
      let active = true
      active = false
      this.activebtn = active
    },
    backtotop() {
      window.scrollTo({
        top: 0,
        left: 0,
        behavior: 'smooth'
      })
    },
    handleScroll() {
      if (window.pageYOffset > 1000) {
        this.back = true
      } else {
        this.back = false
      }
    }
  }
})
</script>
