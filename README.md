shapeup
=======

mvn archetype:generate -DgroupId=com.shapeup -DartifactId=shapeup -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

mvn eclipse:eclipse -Dwtpversion=2.0 -DdownloadSources=true  -DdownloadJavadocs=true
mvn clean
mvn eclipse:clean