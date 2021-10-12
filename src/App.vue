<template>
  <header>
    <h1 class="bonjour-peuple"> Projets et vanité </h1>
  </header>
  <section class="content">
    <projects-list/>
  </section>
  <footer>
    christophe point sauder arobase gmail point com
  </footer>
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
