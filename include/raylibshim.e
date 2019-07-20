
include std/dll.e
include std/machine.e
include std/types.e

--
-- Vector2 type
--
public constant
	Vector2_x       =  0, -- float
	Vector2_y       =  4, -- float
	SIZEOF_VECTOR2  =  8,
$

public enum
	VECTOR2_X,
	VECTOR2_Y

constant C_VECTOR2 = {
	C_FLOAT, -- float x
	C_FLOAT  -- float y
}

--
-- Vector3 type
--
public constant
	Vector3_x       =  0, -- float
	Vector3_y       =  4, -- float
	Vector3_z       =  8, -- float
	SIZEOF_VECTOR3  = 12,
$

public enum
	VECTOR3_X,
	VECTOR3_Y,
	VECTOR3_Z

constant C_VECTOR3 = {
	C_FLOAT, -- float x
	C_FLOAT, -- float y
	C_FLOAT  -- float z
}

--
-- Vector4 type
--
public constant
	Vector4_x       =  0, -- float
	Vector4_y       =  4, -- float
	Vector4_z       =  8, -- float
	Vector4_w       = 12, -- float
	SIZEOF_VECTOR4  = 16,
$

public enum
	VECTOR4_X,
	VECTOR4_Y,
	VECTOR4_Z,
	VECTOR4_W

constant C_VECTOR4 = {
	C_FLOAT, -- float x
	C_FLOAT, -- float y
	C_FLOAT, -- float z
	C_FLOAT  -- float w
}

--
-- Quaternion type
-- same as Vector4
--
public constant
	Quaternion_x        = Vector4_x,
	Quaternion_y        = Vector4_y,
	Quaternion_z        = Vector4_z,
	Quaternion_w        = Vector4_w,
	SIZEOF_QUATERNION   = SIZEOF_VECTOR4,
$

public enum
	QUATERNION_X,
	QUATERNION_Y,
	QUATERNION_Z,
	QUATERNION_W

constant C_QUATERNION = C_VECTOR4

--
-- Matrix type
--
public constant
	Matrix_m0       =  0, -- float
	Matrix_m4       =  4, -- float
	Matrix_m8       =  8, -- float
	Matrix_m12      = 12, -- float
	Matrix_m1       = 16, -- float
	Matrix_m5       = 20, -- float
	Matrix_m9       = 24, -- float
	Matrix_m13      = 28, -- float
	Matrix_m2       = 32, -- float
	Matrix_m6       = 36, -- float
	Matrix_m10      = 40, -- float
	Matrix_m14      = 44, -- float
	Matrix_m3       = 48, -- float
	Matrix_m7       = 52, -- float
	Matrix_m11      = 56, -- float
	Matrix_m15      = 60, -- float
	SIZEOF_MATRIX   = 64,
$

public enum
	MATRIX_M0,
	MATRIX_M4,
	MATRIX_M8,
	MATRIX_M12,
	MATRIX_M1,
	MATRIX_M5,
	MATRIX_M9,
	MATRIX_M13,
	MATRIX_M2,
	MATRIX_M6,
	MATRIX_M10,
	MATRIX_M14,
	MATRIX_M3,
	MATRIX_M7,
	MATRIX_M11,
	MATRIX_M15

constant C_MATRIX = {
	C_FLOAT, -- float m0 
	C_FLOAT, -- float m4 
	C_FLOAT, -- float m8 
	C_FLOAT, -- float m12
	C_FLOAT, -- float m1 
	C_FLOAT, -- float m5 
	C_FLOAT, -- float m9 
	C_FLOAT, -- float m13
	C_FLOAT, -- float m2 
	C_FLOAT, -- float m6 
	C_FLOAT, -- float m10
	C_FLOAT, -- float m14
	C_FLOAT, -- float m3 
	C_FLOAT, -- float m7 
	C_FLOAT, -- float m11
	C_FLOAT  -- float m15
}

--
-- Color type
--
public constant
	Color_r         = 0, -- unsigned int
	Color_g         = 1, -- unsigned int
	Color_b         = 2, -- unsigned int
	Color_a         = 3, -- unsigned int
	SIZEOF_COLOR    = 4,
$

public enum
	COLOR_R,
	COLOR_G,
	COLOR_B,
	COLOR_A

constant C_COLOR = {
	C_UCHAR, -- unsigned char r
	C_UCHAR, -- unsigned char g
	C_UCHAR, -- unsigned char b
	C_UCHAR  -- unsigned char a
}

--
-- Rectangle type
--
public constant
	Rectangle_x         =  0, -- float
	Rectangle_y         =  4, -- float
	Rectangle_width     =  8, -- float
	Rectangle_height    = 12, -- float
	SIZEOF_RECTANGLE    = 16,
$

public enum
	RECTANGLE_X,
	RECTANGLE_Y,
	RECTANGLE_WIDTH,
	RECTANGLE_HEIGHT

constant C_RECTANGLE = {
	C_FLOAT, -- float x
	C_FLOAT, -- float y
	C_FLOAT, -- float width
	C_FLOAT  -- float height
}

--
-- Image type
--

ifdef BITS64 then

public constant
	Image_data      =  0, -- void*
	Image_width     =  8, -- int
	Image_height    = 12, -- int
	Image_mipmaps   = 16, -- int
	Image_format    = 20, -- int
	SIZEOF_IMAGE    = 24,
$

elsedef -- BITS32

public constant
	Image_data      =  0, -- void*
	Image_width     =  4, -- int
	Image_height    =  8, -- int
	Image_mipmaps   = 12, -- int
	Image_format    = 16, -- int
	SIZEOF_IMAGE    = 20,
$

end ifdef

public enum
	IMAGE_DATA,
	IMAGE_WIDTH,
	IMAGE_HEIGHT,
	IMAGE_MIPMAPS,
	IMAGE_FORMAT

constant C_IMAGE = {
	C_POINTER, -- void* data
	C_INT,     -- int width
	C_INT,     -- int height
	C_INT,     -- int mipmaps
	C_INT      -- int format
}

--
-- Texture2D type
--
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

constant C_TEXTURE2D = {
	C_UINT, -- unsigned int id
	C_INT,  -- int width
	C_INT,  -- int height
	C_INT,  -- int mipmaps
	C_INT   -- int format
}

--
-- Texture type
-- same as Texture2D
--
public constant
	Texture_id      = Texture2D_id,
	Texture_width   = Texture2D_width,
	Texture_height  = Texture2D_height,
	Texture_mipmaps = Texture2D_mipmaps,
	Texture_format  = Texture2D_format,
	SIZEOF_TEXTURE  = SIZEOF_TEXTURE2D,
$

public enum
	TEXTURE_ID,
	TEXTURE_WIDTH,
	TEXTURE_HEIGHT,
	TEXTURE_MIPMAPS,
	TEXTURE_FORMAT

constant C_TEXTURE = C_TEXTURE2D

--
-- RenderTexture2D type
--
public constant
	RenderTexture2D_id           =  0, -- unsigned int
	RenderTexture2D_texture      =  4, -- Texture2D
	RenderTexture2D_depth        = 24, -- Texture2D
	RenderTexture2D_depthTexture = 44, -- bool
	SIZEOF_RENDERTEXTURE2D       = 48,
$

public enum
	RENDERTEXTURE2D_ID,
	RENDERTEXTURE2D_TEXTURE,
	RENDERTEXTURE2D_DEPTH,
	RENDERTEXTURE2D_DEPTHTEXTURE

constant C_RENDERTEXTURE2D =
	C_UINT      & -- unsigned int id
	C_TEXTURE2D & -- Texture2D texture
	C_TEXTURE2D & -- Texture2D depth
	C_BOOL        -- bool depthTexture

--
-- RenderTexture type
-- same as RenderTexture2D
--
public constant
	RenderTexture_id            = RenderTexture2D_id,
	RenderTexture_texture       = RenderTexture2D_texture,
	RenderTexture_depth         = RenderTexture2D_depth,
	RenderTexture_depthTexture  = RenderTexture2D_depthTexture,
	SIZEOF_RENDERTEXTURE        = SIZEOF_RENDERTEXTURE2D,
$

public enum
	RENDERTEXTURE_ID,
	RENDERTEXTURE_TEXTURE,
	RENDERTEXTURE_DEPTH,
	RENDERTEXTURE_DEPTHTEXTURE

constant C_RENDERTEXTURE = C_RENDERTEXTURE2D

--
-- N-Patch layout info
--
public constant
	NPatchInfo_sourceRec    =  0, -- Rectangle
	NPatchInfo_left         = 16, -- int
	NPatchInfo_top          = 16, -- int
	NPatchInfo_right        = 16, -- int
	NPatchInfo_bottom       = 16, -- int
	NPatchInfo_type         = 16, -- int
$

public enum
	NPATCHINFO_SOURCEREC,
	NPATCHINFO_LEFT,
	NPATCHINFO_TOP,
	NPATCHINFO_RIGHT,
	NPATCHINFO_BOTTOM,
	NPATCHINFO_TYPE

constant C_NPATCHINFO =
	C_RECTANGLE & -- Rectangle sourceRec
	C_INT &       -- int left
	C_INT &       -- int top
	C_INT &       -- int right
	C_INT &       -- int bottom
	C_INT         -- int type

--
-- Font character info
--
ifdef BITS64 then

public constant
	CharInfo_value      =  0, -- int
	CharInfo_rec        =  4, -- Rectangle
	CharInfo_offsetX    = 20, -- int
	CharInfo_offsetY    = 20, -- int
	CharInfo_advanceX   = 24, -- int
	CharInfo_data       = 28, -- unsigned char*
	SIZEOF_CHARINFO     = 36,
$

elsedef -- BITS32

public constant
	CharInfo_value      =  0, -- int
	CharInfo_rec        =  4, -- Rectangle
	CharInfo_offsetX    = 20, -- int
	CharInfo_offsetY    = 20, -- int
	CharInfo_advanceX   = 24, -- int
	CharInfo_data       = 28, -- unsigned char*
	SIZEOF_CHARINFO     = 32,
$

end ifdef

public enum
	CHARINFO_VALUE,
	CHARINFO_REC,
	CHARINFO_OFFSETX,
	CHARINFO_OFFSETY,
	CHARINFO_ADVANCEX,
	CHARINFO_DATA

constant C_CHARINFO =
	C_INT       & -- int value
	C_RECTANGLE & -- Rectangle rec
	C_INT &       -- int offsetX
	C_INT &       -- int offsetY
	C_INT &       -- int advanceX
	C_POINTER     -- unsigned char* data

--
-- Font type
--
ifdef BITS64 then

public constant
	Font_texture    =  0, -- Texture2D
	Font_baseSize   = 20, -- int
	Font_charsCount = 24, -- int
	Font_chars      = 28, -- CharInfo*
	SIZEOF_FONT     = 36,
$

elsedef -- BITS32

public constant
	Font_texture    =  0, -- Texture2D
	Font_baseSize   = 20, -- int
	Font_charsCount = 24, -- int
	Font_chars      = 28, -- CharInfo*
	SIZEOF_FONT     = 32,
$

end ifdef

public enum
	FONT_TEXTURE,
	FONT_BASESIZE,
	FONT_CHARSCOUNT,
	FONT_CHARS

constant C_FONT = 
	C_TEXTURE2D & -- Texture2D texture
	C_INT &       -- int baseSize
	C_INT &       -- int charsCount
	C_POINTER     -- CharInfo* chars

--
-- SpriteFont type
-- defaults to Font
--
public constant
	SpriteFont_texture      = Font_texture,
	SpriteFont_baseSize     = Font_baseSize,
	SpriteFont_charsCount   = Font_charsCount,
	SpriteFont_chars        = Font_chars,
	SIZEOF_SPRITEFONT       = SIZEOF_FONT,
$

public enum
	SPRITEFONT_TEXTURE,
	SPRITEFONT_BASESIZE,
	SPRITEFONT_CHARSCOUNT,
	SPRITEFONT_CHARS

constant C_SPRITEFONT = C_FONT

--
-- Camera type
--
public constant
	Camera_position =  0, -- Vector3
	Camera_target   = 12, -- Vector3
	Camera_up       = 24, -- Vector3
	Camera_fovy     = 36, -- float
	Camera_type     = 40, -- int
	SIZEOF_CAMERA   = 44,
$

public enum
	CAMERA_POSITION,
	CAMERA_TARGET,
	CAMERA_UP,
	CAMERA_FOVY,
	CAMERA_TYPE

constant C_CAMERA =
	C_VECTOR3 & -- Vector3 position
	C_VECTOR3 & -- Vector3 targer
	C_VECTOR3 & -- Vector3 up
	C_FLOAT   & -- float fovy
	C_INT       -- int type

constant C_STRING = C_POINTER

atom raylibshim = open_dll( "raylibshim.dll" )

constant
	shimLoadTexture             = define_c_proc( raylibshim, "+shimLoadTexture", C_STRING & C_POINTER ),
	shimLoadTextureFromImage    = define_c_proc( raylibshim, "+shimLoadTextureFromImage", C_IMAGE & C_POINTER ),
$

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
	
	atom id = peek4u( texture + Texture2D_id )
	width   = peek4s( texture + Texture2D_width )
	height  = peek4s( texture + Texture2D_height )
	mipmaps = peek4s( texture + Texture2D_mipmaps )
	format  = peek4s( texture + Texture2D_format )
	
	return {id,width,height,mipmaps,format}
end function

