<template>
  <list class="list">
    <cell class="cell" v-for="testcase in lists">
      <div class="panel" @click="push(testcase.hash)">
        <text class="text">{{testcase.name}}</text>
      </div>
    </cell>
  </list>
</template>

<script>
  var navigator = weex.requireModule('navigator');
  var modal = weex.requireModule('modal');
  export default {
    data () {
      return {
        lists: [
          { name: 'AnimationTest', hash:'8d28476fdcc7dd8f0efa674892e83829' },
          { name: 'Test2' , hash:'' },
          { name: 'Test3' , hash:'' }
        ]
      }
    },
    methods: {
      push (hash) {
        var bundleUrl = "http://dotwe.org/raw/dist/"+hash+".bundle.wx";
        navigator.push({
          url: bundleUrl,
          animated: "true"
        }, event => {
          modal.toast({ message: 'callback: ' + bundleUrl })
        })
      }
    }
  }
</script>

<style scoped>
  .panel {
    margin-top: 20px;
    padding-bottom:10px;
    border-bottom-width: 2px;
    border-style: solid;
    border-color: rgb(220, 220, 220);
  }
  .text {
    margin-left: 20px;
    font-size: 40px;
    color: rgb(0, 0, 0);
  }
</style>
