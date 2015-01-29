module.exports = function(grunt) {
    grunt.initConfig({
        less: {
            development: {
                options: {
                    paths: ["./assets/stylesheets/less"],
                },
                files: {
                    "./destino/huayra-bootstrap.css": "./src/less/main.less"
                }
            }
        },
        watch: {
            files: "./src/less/*",
            tasks: ["less"]
        }
    });

    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');
};
