<template>
  <div class="projects-list">
    <project-item v-for="(project, index) in projects"
      :key="index"
      :project="project" />
  </div>
</template>

<script>
import ProjectItem from './ProjectItem.vue'
import projects from '../assets/projects.json'

export default {
  name: 'ProjectsList',
  components: {
    ProjectItem
  },
  data() {
    return {
      projects
    }
  }
}
</script>
