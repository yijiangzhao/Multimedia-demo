# 单应矩阵标定工具
标定使用OpenCV-Python进行地面坐标系到像素坐标系的单应矩阵标定。

## 所需的库
* python3
* opencv-python
* numpy

## 使用前准备
将标定板置于摄像头前，并且能够被画面完全捕获。标定板的网格线纵向与道路方向平行，横向垂直到路线。记录标定板中格子的交接点行列个数，测量格子的边长。拍摄标定板图像备用。

## 使用方法
```python3 calibHomography.py --image_path homography.png --square 20 --corner_w 6 --corner_h 4 ```

**根据您的标定板的实际情况替换上述参数。**

您的单应矩阵参数将保存在名为homography_matrix.json文档中。

## 命令行参数
此处列出了所有参数及其操作

```
python3 calibHomography.py [option] [value]
```
option|type|help|example
------|----|----|------------|
--image_path|str|width and height of image|./homography.png
--square|int|size of chessboard square, by cm|20
--corner_w|int|width of chessboard corner|6
--corner_h|int|height of chessboard corner|4