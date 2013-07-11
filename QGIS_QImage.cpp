QImage *image = dynamic_cast<QImage *>( &mMap->paintDevice() );

// or
QPixmap *pixmap = dynamic_cast<QPixmap *>( &mMap->paintDevice() );
QImage *image = pixmap->toImage();