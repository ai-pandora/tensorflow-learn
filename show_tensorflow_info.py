import sys
import os

import tensorflow as tf
import numpy

# close warning
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

is_show_config = False

print('=>')
print('Python version -> {0}\nPython install as -> {1}'.format(sys.version, sys.executable))
print('Tensorflow version -> {0}\nTensorflow install as -> {1}'.format(str(tf.__version__), str(tf.__path__)))
print('Numpy version -> {0}'.format(numpy.version.version))
print('=>')

if is_show_config:
  print('==== show run Config start ====')
  sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))
  print('==== show run Config end ====')