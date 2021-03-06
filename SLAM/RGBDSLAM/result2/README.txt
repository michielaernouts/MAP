RESULT 2

ROSBAG: 	kinect_bag3_rgbdslam.bag
MISSION: 	mission4

PARAMETERS:

<node pkg="rgbdslam" type="rgbdslam" name="rgbdslam" cwd="node" required="true" output="screen"> 
    <!-- Input data settings-->
    <param name="config/topic_image_mono"              value="/camera/rgb/image_color"/> 
    <param name="config/topic_image_depth"             value="/camera/depth_registered/sw_registered/image_rect_raw"/>

    <param name="config/feature_extractor_type"        value="ORB"/><!-- ORB are fastest descriptors and require no GPU -->
    <param name="config/feature_detector_type"         value="ORB"/><!-- FAST can guarantee a certain range of keypoints using an adjuster-->
    <param name="config/detector_grid_resolution"      value="3"/><!-- detect on a 2x2 grid -->
    <param name="config/max_keypoints"                 value="250"/><!-- Extract no more than this many keypoints -->
    <param name="config/max_matches"                   value="100"/><!-- Keep the best n matches (important for ORB to set lower than max_keypoints) -->

    <param name="config/min_sampled_candidates"        value="0"/><!-- Frame-to-frame comparisons to random frames (big loop closures) -->
    <param name="config/predecessor_candidates"        value="3"/><!-- Frame-to-frame comparisons to sequential frames-->
    <param name="config/neighbor_candidates"           value="3"/><!-- Frame-to-frame comparisons to graph neighbor frames-->
    <param name="config/nn_distance_ratio"             value="0.9"/><!-- set empirically -->
    <param name="config/ransac_iterations"             value="200"/><!-- set empirically -->
    <param name="config/max_matches"                   value="200"/><!-- reduce the amount of matches (otherwise max=max_keypoints), removes outliers, speeds up ransac -->
    <param name="config/pose_relative_to"              value="inaffected"/><!-- only optimize part of graph with new constraints -->
    <param name="config/keep_all_nodes"                value="true"/><!-- assume zero motion if no motion could be found and continue -->
    <param name="config/fixed_frame_name"              value="/vodom"/><!-- Signify that this is not mapping -->

    <param name="config/backend_solver"                value="pcg"/> <!-- pcg is fast and good for online operation -->
    <param name="config/cloud_creation_skip_step"      value="8"/> <!-- Heavily subsample point cloud during creation -->
  </node>
