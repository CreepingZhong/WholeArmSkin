;; Auto-generated. Do not edit!


(when (boundp 'pr_control_msgs::SetPositionFeedback)
  (if (not (find-package "PR_CONTROL_MSGS"))
    (make-package "PR_CONTROL_MSGS"))
  (shadow 'SetPositionFeedback (find-package "PR_CONTROL_MSGS")))
(unless (find-package "PR_CONTROL_MSGS::SETPOSITIONFEEDBACK")
  (make-package "PR_CONTROL_MSGS::SETPOSITIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude SetPositionFeedback.msg.html


(defclass pr_control_msgs::SetPositionFeedback
  :super ros::object
  :slots ())

(defmethod pr_control_msgs::SetPositionFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get pr_control_msgs::SetPositionFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pr_control_msgs::SetPositionFeedback :datatype-) "pr_control_msgs/SetPositionFeedback")
(setf (get pr_control_msgs::SetPositionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# no feedback


")



(provide :pr_control_msgs/SetPositionFeedback "d41d8cd98f00b204e9800998ecf8427e")


