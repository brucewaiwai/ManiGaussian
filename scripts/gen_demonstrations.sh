# this script generate demonstrations for a given task, for both training and evaluation.
# example:
#       bash scripts/gen_demonstrations.sh open_drawer

task=${1}
task=slide_block_to_color_target
train_episodes_per_task=1
test_episodes_per_task=25
# task=${1}

cd third_party/RLBench/tools

xvfb-run -a python nerf_dataset_generator.py --tasks=${task} \
                                --save_path="../../../data/train_data_64_2_view" \
                                --image_size=128,128 \
                                --renderer=opengl \
                                --episodes_per_task=${train_episodes_per_task} \
                                --processes=1 \
                                --all_variations=True

# xvfb-run -a python dataset_generator.py --tasks=${task} \
#                             --save_path="../../../data/test_data_100view" \
#                             --image_size=128,128 \
#                             --renderer=opengl \
#                             --episodes_per_task=${test_episodes_per_task} \
#                             --processes=1 \
#                             --all_variations=True

cd ..