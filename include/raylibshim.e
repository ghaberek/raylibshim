
include std/dll.e
include std/machine.e
include std/types.e

atom raylibshim = open_dll( "raylibshim.dll" )

constant C_STRING = C_POINTER

constant C_IMAGE = {
	C_POINTER, -- void* data
	C_INT,     -- int width
	C_INT,     -- int height
	C_INT,     -- int mipmaps
	C_INT      -- int format
}

constant
	shimLoadTexture             = define_c_proc( raylibshim, "+shimLoadTexture", C_STRING & C_POINTER ),
	shimLoadTextureFromImage    = define_c_proc( raylibshim, "+shimLoadTextureFromImage", C_IMAGE ),
$

ifdef BITS64 then

public constant
	Image_data    =  0, -- void*
	Image_width   =  8, -- int
	Image_height  = 12, -- int
	Image_mipmaps = 16, -- int
	Image_format  = 20, -- int
	SIZEOF_IMAGE  = 24,
$

elsedef

public constant
	Image_data    =  0, -- void*
	Image_width   =  4, -- int
	Image_height  =  8, -- int
	Image_mipmaps = 12, -- int
	Image_format  = 16, -- int
	SIZEOF_IMAGE  = 20,
$

end ifdef

public enum
	IMAGE_DATA,
	IMAGE_WIDTH,
	IMAGE_HEIGHT,
	IMAGE_MIPMAPS,
	IMAGE_FORMAT

public constant
	Texture2D_id        =  0, -- unsigned int
	Texture2D_width     =  4, -- int
	Texture2D_height    =  8, -- int
	Texture2D_mipmaps   = 12, -- int
	Texture2D_format    = 16, -- int
	SIZEOF_TEXTURE2D    = 20,
$

public enum
	TEXTURE2D_ID,
	TEXTURE2D_WIDTH,
	TEXTURE2D_HEIGHT,
	TEXTURE2D_MIPMAPS,
	TEXTURE2D_FORMAT

public function LoadTexture( sequence filename )
	
	atom texture = allocate_data( SIZEOF_TEXTURE2D, TRUE )
	mem_set( texture, NULL, SIZEOF_TEXTURE2D )
	
	c_proc( shimLoadTexture, {allocate_string(filename,TRUE),texture} )
	
	atom id      = peek4u( texture + Texture2D_id )
	atom width   = peek4s( texture + Texture2D_width )
	atom height  = peek4s( texture + Texture2D_height )
	atom mipmaps = peek4s( texture + Texture2D_mipmaps )
	atom format  = peek4s( texture + Texture2D_format )
	
	return {id,width,height,mipmaps,format}
end function

public function LoadTextureFromImage( sequence image )
	
	atom data    = image[IMAGE_DATA]
	atom width   = image[IMAGE_WIDTH]
	atom height  = image[IMAGE_HEIGHT]
	atom mipmaps = image[IMAGE_MIPMAPS]
	atom format  = image[IMAGE_FORMAT]
	
	atom texture = allocate_data( SIZEOF_TEXTURE2D, TRUE )
	mem_set( texture, NULL, SIZEOF_TEXTURE2D )
	
	c_proc( shimLoadTextureFromImage, {data,width,height,mipmaps,format,texture} )
	
	atom id      = peek4u( texture + Texture2D_id )
	atom width   = peek4s( texture + Texture2D_width )
	atom height  = peek4s( texture + Texture2D_height )
	atom mipmaps = peek4s( texture + Texture2D_mipmaps )
	atom format  = peek4s( texture + Texture2D_format )
	
	return {id,width,height,mipmaps,format}
end function

