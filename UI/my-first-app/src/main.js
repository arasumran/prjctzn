import Vue from 'vue'
import App from './App.vue'
import hooo from './components/test.vue'
Vue.component('hilo', hooo);
new Vue({
  el: '#app',
  render: h => h(App)
})
