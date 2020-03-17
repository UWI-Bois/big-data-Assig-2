echo 'Installing Stuff for PySpark \n (ensure jdk8 is installed and set in the path as a system variable, JAVA_HOME -> jdk8/bin'

pip install pyspark
build/mvn -DskipTests clean package run
pip install findspark
pip install toree
jupyter toree install --spark_home=/usr/local/bin/apache-spark/ --interpreters=Scala,PySpark

echo 'Done'
read