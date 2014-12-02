package com.igpse

import grails.transaction.Transactional
import org.hibernate.*
import groovy.sql.Sql

@Transactional
class PatientMiRNAService {
    def sessionFactory
    def dataSource

    def parseCSVFile(String fileName) {
        InputStream inputFile = getClass().classLoader.getResourceAsStream(fileName)

        def mirnaCounter = 1
        Sql sql = new Sql(dataSource)
        inputFile.splitEachLine(/\n|\r|,/) { line -> 
            println "Current mirna: ${mirnaCounter}"
            sql.withBatch {stmt ->
                line.eachWithIndex { oneValue, index ->
                    stmt.addBatch("insert into Patient_MiRNA (patient_id, mirna_id, value) values (${index+1}, ${mirnaCounter}, ${oneValue as Float})" )            
                }
            }
            mirnaCounter++
        }
        println "Finishing mirnaCounter = ${mirnaCounter}"
    }

}
