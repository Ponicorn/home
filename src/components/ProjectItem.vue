<template>
    <article class="project-item">
        <img :src="projectImage" :srcset="projectImageHd">
    </article>
</template>

<script>
export default {
    name: 'ProjectItem',
    props: ['project'],
    computed: {
        projectImage () {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/src/assets/images/${lowerCaseName}.med.png`
        },
        projectImageHd () {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/src/assets/images/${lowerCaseName}.high.png 2x`
        }
    }
}
</script>