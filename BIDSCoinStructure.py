import os
import shutil

# fMRI와 T1 파일이 들어있는 폴더의 경로를 입력한다.

pre_bids_path_fMRI = "/Users/oj/Desktop/RAW_DATA/HC/NML_fMRI"
pre_bids_path_T1 = "/Users/oj/Desktop/RAW_DATA/HC/NML_T1"

# 주어진 폴더안의 파일들을 이름순으로 정렬한다.

pre_bids_fMRI = sorted(os.listdir(pre_bids_path_fMRI))
pre_bids_T1 = sorted(os.listdir(pre_bids_path_T1))

# 폴더안의 파일의 개수가 일치 하지 않는 경우가 있다. 이 경우에는 더 적은 수의 파일을 가진 폴더를 기준으로 삼는다.

if len(pre_bids_fMRI) >= len(pre_bids_T1):
    iterate_num = len(pre_bids_T1)
else:
    iterate_num = len(pre_bids_fMRI)

# BIDScoin을 적용시킬 폴더를 하나 만든다.

pre_bids_HC = "/Users/oj/Desktop/pre_BIDS/pre_BIDS_HC"

# BIDScoin 폴더안에 iterate_num의 절반만큼의 파일을 만든다.iterate_num이 60이라면 30개의 파일을 만든다.
for j in range(1, (iterate_num // 2) + 1):
    sub_folder_name = f"sub-{j:02d}"
    sub_folder_path = os.path.join(pre_bids_HC, sub_folder_name)

    os.makedirs(sub_folder_path)

# 만들어진 폴더안의 파일에 fMRI파일과 T1파일을 순서대로 집어넣는다.

for j in range(1, (iterate_num // 2) + 1):
    sub_folder_name = f"sub-{j:02d}"
    sub_folder_path = os.path.join(pre_bids_HC, sub_folder_name)

    for k in range(2):
        file_name = pre_bids_fMRI.pop(0)
        source_path = os.path.join(pre_bids_path_fMRI, file_name)
        destination_path = os.path.join(sub_folder_path, file_name)
        shutil.move(source_path, destination_path)

for j in range(1, (iterate_num//2) + 1):
    sub_folder_name = f"sub-{j:02d}"
    sub_folder_path = os.path.join(pre_bids_HC, sub_folder_name)

    for k in range(2):
        file_name = pre_bids_T1.pop(0)
        source_path = os.path.join(pre_bids_path_T1, file_name)
        destination_path = os.path.join(sub_folder_path, file_name)
        shutil.move(source_path, destination_path)







