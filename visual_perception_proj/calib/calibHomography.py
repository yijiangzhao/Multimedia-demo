import cv2
import numpy as np
import json


def save_params(dictData, save_path='homography_matrix.json'):
    # 重写JSONEncoder中的default方法
    class NumpyArrayEncoder(json.JSONEncoder):
        def default(self, obj):
            if isinstance(obj, np.ndarray):
                return obj.tolist()
            return json.JSONEncoder.default(self, obj)

    # json_str = json.dumps(data, cls=NumpyArrayEncoder)
    with open(save_path, 'w') as f:
        json.dump(dictData, f, cls=NumpyArrayEncoder)

if __name__ == '__main__':
    imgPath = './homography.png'
    ptSize = (6, 4)
    gridLength = 20
    img = cv2.imread(imgPath)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    ret, corners = cv2.findChessboardCorners(img, ptSize)

    objp = np.zeros((1, ptSize[0] * ptSize[1], 3), np.float32)
    objp[0, :, :2] = gridLength * np.mgrid[0:ptSize[0], 0:ptSize[1]].T.reshape(-1, 2)

    if ret is True:
        # Draw and display the corners
        img = cv2.drawChessboardCorners(img, ptSize, corners, ret)
        H, _ = cv2.findHomography(objp, corners)
        print(H)
        dictData = {"homography_matrix": H}
        save_params(dictData, save_path='homography_matrix.json')
        cv2.imwrite("./results.jpg", img)
        cv2.imshow('Chessboard', cv2.resize(img, (1280, 720)))
        cv2.waitKey(0)
    cv2.destroyAllWindows()
