return {
	"nvim-java/nvim-java",
	config = function() 
	
	    local nvim_java = require("java")
	    
	    nvim_java.setup({
		root_markers = {
    		    'settings.gradle',
    		    'settings.gradle.kts',
    		    'pom.xml',
    		    'build.gradle',
    		    'mvnw',
    		    'gradlew',
    		    'build.gradle',
    		    'build.gradle.kts',
    		    '.git',
		},
		java_test = {
    		    enable = true,
		},
		spring_boot_tools = {
    		    enable = false,
		},
  		jdk = {
    		    auto_install = false,
		},
		notifications = {
    		-- enable 'Configuring DAP' & 'DAP configured' messages on start up
    		    dap = true,
  		},
		verification = {
		    invalid_order = true,
		    duplicate_setup_calls = true,
		    invalid_mason_registry = true,
	    	},
	    })

	end,
}
