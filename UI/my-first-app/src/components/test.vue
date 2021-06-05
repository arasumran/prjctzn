<template>
<div> <p>Server Status {{social}} </p>

   <button @click="changeStatus" class="button"> butona bas aq
    <slot/>
  </button>
  </div>
  

</template>

<script>
export default {
  data: function() {
    return {
      social: "critical"
    };
  },
  methods: {
    changeStatus() {
      this.social = "normal değil";
    }
  }
};
</script>>
<style scoped>
</style>>