# Read the training data
train_subject = read.csv('train/subject_train.txt', sep = '', header = FALSE)
train_x = read.csv('train/X_train.txt', sep = '', header = FALSE)
train_y = read.csv('train/y_train.txt', sep = '', header = FALSE)
train_body_acc_x = read.csv('train/Inertial Signals/body_acc_x_train.txt', sep = '', header = FALSE)
train_body_acc_y = read.csv('train/Inertial Signals/body_acc_y_train.txt', sep = '', header = FALSE)
train_body_acc_z = read.csv('train/Inertial Signals/body_acc_z_train.txt', sep = '', header = FALSE)

train_body_gyro_x = read.csv('train/Inertial Signals/body_gyro_x_train.txt', sep = '', header = FALSE)
train_body_gyro_y = read.csv('train/Inertial Signals/body_gyro_y_train.txt', sep = '', header = FALSE)
train_body_gyro_z = read.csv('train/Inertial Signals/body_gyro_z_train.txt', sep = '', header = FALSE)

train_total_acc_x = read.csv('train/Inertial Signals/total_acc_x_train.txt', sep = '', header = FALSE)
train_total_acc_y = read.csv('train/Inertial Signals/total_acc_y_train.txt', sep = '', header = FALSE)
train_total_acc_z = read.csv('train/Inertial Signals/total_acc_z_train.txt', sep = '', header = FALSE)

# Read the test data
test_subject = read.csv('test/subject_test.txt', sep = '', header = FALSE)
test_x = read.csv('test/X_test.txt', sep = '', header = FALSE)
test_y = read.csv('test/y_test.txt', sep = '', header = FALSE)
test_body_acc_x = read.csv('test/Inertial Signals/body_acc_x_test.txt', sep = '', header = FALSE)
test_body_acc_y = read.csv('test/Inertial Signals/body_acc_y_test.txt', sep = '', header = FALSE)
test_body_acc_z = read.csv('test/Inertial Signals/body_acc_z_test.txt', sep = '', header = FALSE)

test_body_gyro_x = read.csv('test/Inertial Signals/body_gyro_x_test.txt', sep = '', header = FALSE)
test_body_gyro_y = read.csv('test/Inertial Signals/body_gyro_y_test.txt', sep = '', header = FALSE)
test_body_gyro_z = read.csv('test/Inertial Signals/body_gyro_z_test.txt', sep = '', header = FALSE)

test_total_acc_x = read.csv('test/Inertial Signals/total_acc_x_test.txt', sep = '', header = FALSE)
test_total_acc_y = read.csv('test/Inertial Signals/total_acc_y_test.txt', sep = '', header = FALSE)
test_total_acc_z = read.csv('test/Inertial Signals/total_acc_z_test.txt', sep = '', header = FALSE)

