
K=imfinfo('2.jpg');
image_bytes=K.Width*K.Height*K.BitDepth/8;
compressed_bytes=K.FileSize;
compression_ratio=image_bytes/compressed_bytes;
compression_ratio