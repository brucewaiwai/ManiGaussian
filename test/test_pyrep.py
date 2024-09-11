from pyrep import PyRep
from pyrep.robots.arms.baxter import BaxterLeft, BaxterRight
from pyrep.robots.arms.panda import Panda
import time
pr = PyRep()
# # Launch the application with a scene file in headless mode

ttt_path = '/home/bruce/Project/ManiGaussian/third_party/PyRep/examples/'
ttt = 'scene_panda_reach_target.ttt'
pr.launch(ttt_path + ttt, headless=False)
pr.start()
print('test')
agent = Panda()
# time.sleep(5)
# baxter_left = BaxterLeft()
# baxter_right = BaxterRight()
# baxter_gripper_left = BaxterGripper(0)
# baxter_gripper_right = BaxterGripper(1)

# # Do some stuff

pr.stop()  # Stop the simulation
pr.shutdown()  # Close the application