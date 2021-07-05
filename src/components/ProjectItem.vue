<template>
    <div class="project-item">
        <img :src="projectImage">
    </div>
</template>

<script>
export default {
    name: 'ProjectItem',
    props: ['project'],
    computed: {
        projectImage () {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/src/assets/images/${lowerCaseName}.high.png`
        }
    }
}
</script>