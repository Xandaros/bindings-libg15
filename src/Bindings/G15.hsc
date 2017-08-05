{-# LANGUAGE CPP #-}
#include <bindings.dsl.h>
#include <libg15.h>

module Bindings.G15 where
#strict_import

#num G15_LCD
#num G15_KEYS
#num G15_DEVICE_IS_SHARED
#num G15_DEVICE_5BYTE_RETURN
#num G15_DEVICE_G13
#num G15_DEVICE_G510

#num G15_KEY_READ_LENGTH
#num G510_STANDARD_KEYBOARD_INTERFACE

#num G15_LOG_INFO
#num G15_LOG_WARN

#num G15_NO_ERROR
#num G15_ERROR_OPENING_USB_DEVICE
#num G15_ERROR_WRITING_PIXMAP
#num G15_ERROR_TIMEOUT
#num G15_ERROR_READING_USB_DEVICE
#num G15_ERROR_TRY_AGAIN
#num G15_ERROR_WRITING_BUFFER
#num G15_ERROR_UNSUPPORTED

#num G15_LCD_OFFSET
#num G15_LCD_HEIGHT
#num G15_LCD_WIDTH

#num G15_BUFFER_LEN

#num G15_LED_M1
#num G15_LED_M2
#num G15_LED_M3
#num G15_LED_MR

#num G15_CONTRAST_LOW
#num G15_CONTRAST_MEDIUM
#num G15_CONTRAST_HIGH

#num G15_BRIGHTNESS_DARK
#num G15_BRIGHTNESS_MEDIUM
#num G15_BRIGHTNESS_BRIGHT

#num G15_KEY_G1
#num G15_KEY_G2
#num G15_KEY_G3
#num G15_KEY_G4
#num G15_KEY_G5
#num G15_KEY_G6
#num G15_KEY_G7
#num G15_KEY_G8
#num G15_KEY_G9
#num G15_KEY_G10
#num G15_KEY_G11
#num G15_KEY_G12
#num G15_KEY_G13
#num G15_KEY_G14
#num G15_KEY_G15
#num G15_KEY_G16
#num G15_KEY_G17
#num G15_KEY_G18
#num G15_KEY_G19
#num G15_KEY_G20
#num G15_KEY_G21
#num G15_KEY_G22

#num G15_KEY_M1
#num G15_KEY_M2
#num G15_KEY_M3
#num G15_KEY_MR

#num G15_KEY_L1
#num G15_KEY_L2
#num G15_KEY_L3
#num G15_KEY_L4
#num G15_KEY_L5

#num G15_KEY_LIGHT

#ccall initLibG15, IO ()
#ccall re_initLibG15, IO ()
#ccall exitLibG15, IO ()

#ccall libg15Debug, CInt -> IO ()

#ccall writePixmapToLCD, Ptr CChar -> IO CInt
#ccall setLCDContrast, CInt -> IO CInt
#ccall setLEDs, CInt -> IO CInt
#ccall setLCDBrightness, CInt -> IO CInt
#ccall setKBBrightness, CInt -> IO CInt
#ccall setG510LEDColor, CChar -> CChar -> CChar -> IO CInt

#ccall getPressedKeys, Ptr CInt -> CInt -> IO CInt
