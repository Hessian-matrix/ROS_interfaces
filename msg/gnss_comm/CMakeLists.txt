cmake_minimum_required(VERSION 2.8.3)
project(gnss_comm)

set(CMAKE_BUILD_TYPE "release")
set(CMAKE_CXX_FLAGS "-std=c++11 ")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall -fPIC")


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

file(GLOB_RECURSE message_files ${PROJECT_SOURCE_DIR}/msg/*.msg)
add_message_files(FILES 
    GnssTimeMsg.msg
    GnssEphemMsg.msg
    GnssGloEphemMsg.msg
    GnssMeasMsg.msg
    GnssObsMsg.msg
    GnssBestXYZMsg.msg
    GnssPVTSolnMsg.msg
    GnssSvsMsg.msg
    GnssTimePulseInfoMsg.msg
    StampedFloat64Array.msg
    LocalSensorExternalTrigger.msg
)

generate_messages(
  DEPENDENCIES std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

catkin_package(
    #INCLUDE_DIRS include
    #LIBRARIES ${PROJECT_NAME}
    CATKIN_DEPENDS roscpp std_msgs message_generation
    DEPENDS
)

