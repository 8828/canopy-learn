"""
Filter Image
------------

Read in the "dc_metro" image and use an averaging filter
to "smooth" the image.  Use a "5 point stencil" where
you average the current pixel with its neighboring pixels::

              0 0 0 0 0 0 0
              0 0 0 x 0 0 0
              0 0 x x x 0 0
              0 0 0 x 0 0 0 
              0 0 0 0 0 0 0

Plot the image, the smoothed image, and the difference between the
two.

Bonus
~~~~~

Re-filter the image by passing the result image through the filter again. Do
this 50 times and plot the resulting image. 

"""

from scipy.misc.pilutil import imread
from matplotlib.pyplot import figure, subplot, imshow, title, show, gray


# 'flatten' creates a 2D array from a JPEG.
img = imread('dc_metro.JPG', flatten=True)              

avg_img =(   img[1:-1 ,1:-1]  # center
           + img[ :-2 ,1:-1]  # top
           + img[2:   ,1:-1]  # bottom
           + img[1:-1 , :-2]  # left
           + img[1:-1 ,2:  ]  # right
          ) / 5.0

figure()
# Set colormap so that images are plotted in gray scale.
gray()
# Plot the original image first
subplot(1,3,1)
imshow(img)
title('original')


# Now the filtered image.
subplot(1,3,2)
imshow(avg_img)
title('smoothed once')

# And finally the difference between the two.
subplot(1,3,3)
imshow(img[1:-1,1:-1] - avg_img)
title('difference')  
show()  


# Bonus: Re-filter the image by passing the result image
#        through the filter again.  Do this 50 times and plot
#        the resulting image.

# Plot the original image first
figure()
subplot(1,2,1)
imshow(img)
title('original')

print 'original size:', img.shape

for num in range(50):
    avg_img = (  img[1:-1 ,1:-1]  # center
               + img[ :-2 ,1:-1]  # top
               + img[2:   ,1:-1]  # bottom
               + img[1:-1 , :-2]  # left
               + img[1:-1 ,2:  ]  # right
              ) / 5.0
    img = avg_img        

print 'smoothed size:', img.shape

# Now the filtered image.
subplot(1,2,2)
imshow(avg_img)
title('smoothed 50 times')

show()
