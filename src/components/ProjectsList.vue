<template>
  <div class="projects-list">
    <project-item v-for="(project, index) in projects"
      :key="index"
      :project="project" />
  </div>
  <ProjectDetails :project="projects[0]" />
</template>

<script>
import ProjectItem from './ProjectItem.vue'
import ProjectDetails from './ProjectDetails.vue'
import projects from '../assets/projects.json'

export default {
  name: 'ProjectsList',
  components: {
    ProjectItem,
    ProjectDetails
  },
  data() {
    return {
      projects
    }
  }
}
</script>
