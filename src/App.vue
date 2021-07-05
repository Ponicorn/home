<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png" /> -->
  <h1 class="bonjour-peuple">Projets et vanité</h1>
  <div class="content">
    <projects-list />
  </div>
</template>

<script>
import ProjectsList from './components/ProjectsList.vue'

export default {
  name: 'App',
  components: {
    ProjectsList
  }
}
</script>
