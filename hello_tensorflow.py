
import os
import tensorflow as tf

# close warning
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

hello = tf.constant('Hello, TensorFlow!')
sess = tf.Session()
print(sess.run(hello))

num_a = tf.constant(10)
num_b = tf.constant(32)

print(sess.run(num_a + num_b))