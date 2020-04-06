export const state = () => ({})
export const actions = {
  async nuxtClientInit({ state, commit, dispatch }, { req, $axios, $service }) {
    return new Promise((resolve, reject) => {
      if (process.client) {
        commit('auth/init', $axios)
      }
      resolve(true)
    })
  }
}
