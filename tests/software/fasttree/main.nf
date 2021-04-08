#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FASTTREE } from '../../../software/fasttree/main.nf' addParams( options: [:] )

workflow test_fasttree {
    
    input = [ file(params.test_data['sarscov2']['genome']['alignment']['informative_sites_alignment'], checkIfExists: true) ]

    FASTTREE ( input )
}
