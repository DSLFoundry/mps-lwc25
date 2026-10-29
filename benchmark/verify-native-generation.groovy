project.read {
    def outputs = [
        'Sandbox.QLBasic.GeneratedQuestionnaire',
        'Sandbox.QLInvalid.GeneratedQuestionnaire'
    ].collect { name ->
        def generated = mops.runtime.requireClass('Sandbox', name)
        [className: generated.name, title: generated.getMethod('title').invoke(null).toString()]
    }

    def solution = mops.lookup.requireModule('Sandbox')
    def facet = solution.facets.find { it.class.name.contains('JavaModuleFacet') }
    if (facet == null) throw new IllegalStateException('Sandbox has no Java module facet')

    def generatedFiles = [facet.outputRoot, facet.classesGen].collectMany { root ->
        def path = java.nio.file.Paths.get(root.path)
        if (!java.nio.file.Files.exists(path)) {
            throw new IllegalStateException("MPS generated output is missing: ${path}")
        }
        def files = []
        def stream = java.nio.file.Files.walk(path)
        try {
            stream.forEach { file ->
                if (java.nio.file.Files.isRegularFile(file)) {
                    files << "${root.name}/${path.relativize(file)}".toString()
                }
            }
        } finally {
            stream.close()
        }
        files
    }.findAll { it.endsWith('GeneratedQuestionnaire.java') || it.endsWith('GeneratedQuestionnaire.class') }
    if (generatedFiles.size() != 4) {
        throw new IllegalStateException("Expected Java source and bytecode for both QL models, found ${generatedFiles}")
    }

    [outputs: outputs, files: generatedFiles.sort()]
}
