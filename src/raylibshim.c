
#include <raylib.h>

RLAPI void shimGetMouseRay( Vector2 mousePosition, Camera camera, Ray* result )
{
	*result = GetMouseRay( mousePosition, camera );
}

RLAPI void shimGetWorldToScreen( Vector3 position, Camera camera, Vector2* result )
{
	*result = GetWorldToScreen( position, camera );
}

RLAPI void shimGetCameraMatrix( Camera camera, Matrix* result )
{
	*result = GetCameraMatrix( camera );
}

RLAPI void shimColorNormalize( Color color, Vector4* result )
{
	*result = ColorNormalize( color );
}

RLAPI void shimColorToHSV( Color color, Vector3* result )
{
	*result = ColorToHSV( color );
}

RLAPI void shimColorFromHSV( Vector3 hsv, Color* result )
{
	*result = ColorFromHSV( hsv );
}

RLAPI void shimGetColor( int hexValue, Color* result )
{
	*result = GetColor( hexValue );
}

RLAPI void shimFade( Color color, float alpha, Color* result )
{
	*result = Fade( color, alpha );
}

RLAPI void shimGetMousePosition( Vector2* result )
{
	*result = GetMousePosition();
}

RLAPI void shimGetTouchPosition( int index, Vector2* result )
{
	*result = GetTouchPosition( index );
}

RLAPI void shimGetGestureDragVector( Vector2* result )
{
	*result = GetGestureDragVector();
}

RLAPI void shimGetGesturePinchVector( Vector2* result )
{
	*result = GetGesturePinchVector();
}

RLAPI void shimGetCollisionRec( Rectangle rec1, Rectangle rec2, Rectangle* result )
{
	*result = GetCollisionRec( rec1, rec2 );
}

RLAPI void shimLoadImage( const char* fileName, Image* result )
{
	*result = LoadImage( fileName );
}

RLAPI void shimLoadImageEx( Color* pixels, int width, int height, Image* result )
{
	*result = LoadImageEx( pixels, width, height );
}

RLAPI void shimLoadImagePro( void* data, int width, int height, int format, Image* result )
{
	*result = LoadImagePro( data, width, height, format );
}

RLAPI void shimLoadImageRaw( const char* fileName, int width, int height, int format, int headerSize, Image* result )
{
	*result = LoadImageRaw( fileName, width, height, format, headerSize );
}

RLAPI void shimLoadTexture( const char* filename, Texture2D* result )
{
	*result = LoadTexture( filename );
}

RLAPI void shimLoadTextureFromImage( Image image, Texture2D* result )
{
	*result = LoadTextureFromImage( image );
}

RLAPI void shimLoadTextureCubemap( Image image, int layoutType, TextureCubemap* result )
{
	*result = LoadTextureCubemap( image, layoutType );
}

RLAPI void shimLoadRenderTexture( int width, int height, RenderTexture2D* result )
{
	*result = LoadRenderTexture( width, height );
}

RLAPI void shimGetTextureData( Texture2D texture, Image* result )
{
	*result = GetTextureData( texture );
}

RLAPI void shimGetScreenData( Image* result )
{
	*result = GetScreenData();
}

RLAPI void shimImageText( const char* text, int fontSize, Color color, Image* result )
{
	*result = ImageText( text, fontSize, color );
}

RLAPI void shimImageTextEx( Font font, const char* text, float fontSize, float spacing, Color tint, Image* result )
{
	*result = ImageTextEx( font, text, fontSize, spacing, tint );
}

RLAPI void shimGenImageColor( int width, int height, Color color, Image* result )
{
	*result = GenImageColor( width, height, color );
}

RLAPI void shimGenImageGradientV( int width, int height, Color top, Color bottom, Image* result )
{
	*result = GenImageGradientV( width, height, top, bottom );
}

RLAPI void shimGenImageGradientH( int width, int height, Color left, Color right, Image* result )
{
	*result = GenImageGradientH( width, height, left, right );
}

RLAPI void shimGenImageGradientRadial( int width, int height, float density, Color inner, Color outer, Image* result )
{
	*result = GenImageGradientRadial( width, height, density, inner, outer );
}

RLAPI void shimGenImageChecked( int width, int height, int checksX, int checksY, Color col1, Color col2, Image* result )
{
	*result = GenImageChecked( width, height, checksX, checksY, col1, col2 );
}

RLAPI void shimGenImageWhiteNoise( int width, int height, float factor, Image* result )
{
	*result = GenImageWhiteNoise( width, height, factor );
}

RLAPI void shimGenImagePerlinNoise( int width, int height, int offsetX, int offsetY, float scale, Image* result )
{
	*result = GenImagePerlinNoise( width, height, offsetX, offsetY, scale );
}

RLAPI void shimGenImageCellular( int width, int height, int tileSize, Image* result )
{
	*result = GenImageCellular( width, height, tileSize );
}

RLAPI void shimGetFontDefault( Font* result )
{
	*result = GetFontDefault();
}

RLAPI void shimLoadFont( const char* fileName, Font* result )
{
	*result = LoadFont( fileName );
}

RLAPI void shimLoadFontEx( const char* fileName, int fontSize, int* fontChars, int charsCount, Font* result )
{
	*result = LoadFontEx( fileName, fontSize, fontChars, charsCount );
}

RLAPI void shimLoadFontFromImage( Image image, Color key, int firstChar, Font* result )
{
	*result = LoadFontFromImage( image, key, firstChar );
}

RLAPI void shimGenImageFontAtlas( CharInfo* chars, int charsCount, int fontSize, int padding, int packMethod, Image* result )
{
	*result = GenImageFontAtlas( chars, charsCount, fontSize, padding, packMethod );
}

RLAPI void shimMeasureTextEx( Font font, const char* text, float fontSize, float spacing, Vector2* result )
{
	*result = MeasureTextEx( font, text, fontSize, spacing );
}

RLAPI void shimLoadModel( const char* fileName, Model* result )
{
	*result = LoadModel( fileName );
}

RLAPI void shimLoadModelFromMesh( Mesh mesh, Model* result )
{
	*result = LoadModelFromMesh( mesh );
}

RLAPI void shimLoadMaterialDefault( Material* result )
{
	*result = LoadMaterialDefault();
}

RLAPI void shimGenMeshPoly( int sides, float radius, Mesh* result )
{
	*result = GenMeshPoly( sides, radius );
}

RLAPI void shimGenMeshPlane( float width, float length, int resX, int resZ, Mesh* result )
{
	*result = GenMeshPlane( width, length, resX, resZ );
}

RLAPI void shimGenMeshCube( float width, float height, float length, Mesh* result )
{
	*result = GenMeshCube( width, height, length );
}

RLAPI void shimGenMeshSphere( float radius, int rings, int slices, Mesh* result )
{
	*result = GenMeshSphere( radius, rings, slices );
}

RLAPI void shimGenMeshHemiSphere( float radius, int rings, int slices, Mesh* result )
{
	*result = GenMeshHemiSphere( radius, rings, slices );
}

RLAPI void shimGenMeshCylinder( float radius, float height, int slices, Mesh* result )
{
	*result = GenMeshCylinder( radius, height, slices );
}

RLAPI void shimGenMeshTorus( float radius, float size, int radSeg, int sides, Mesh* result )
{
	*result = GenMeshTorus( radius, size, radSeg, sides );
}

RLAPI void shimGenMeshKnot( float radius, float size, int radSeg, int sides, Mesh* result )
{
	*result = GenMeshKnot( radius, size, radSeg, sides );
}

RLAPI void shimGenMeshHeightmap( Image heightmap, Vector3 size, Mesh* result )
{
	*result = GenMeshHeightmap( heightmap, size );
}

RLAPI void shimGenMeshCubicmap( Image cubicmap, Vector3 cubeSize, Mesh* result )
{
	*result = GenMeshCubicmap( cubicmap, cubeSize );
}

RLAPI void shimMeshBoundingBox( Mesh mesh, BoundingBox* result )
{
	*result = MeshBoundingBox( mesh );
}

RLAPI void shimGetCollisionRayModel( Ray ray, Model* model, RayHitInfo* result )
{
	*result = GetCollisionRayModel( ray, model );
}

RLAPI void shimGetCollisionRayTriangle( Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, RayHitInfo* result )
{
	*result = GetCollisionRayTriangle( ray, p1, p2, p3 );
}

RLAPI void shimGetCollisionRayGround( Ray ray, float groundHeight, RayHitInfo* result )
{
	*result = GetCollisionRayGround( ray, groundHeight );
}

RLAPI void shimLoadShader( const char* vsFileName, const char* fsFileName, Shader* result )
{
	*result = LoadShader( vsFileName, fsFileName );
}

RLAPI void shimLoadShaderCode( char* vsCode, char* fsCode, Shader* result )
{
	*result = LoadShaderCode( vsCode, fsCode );
}

RLAPI void shimGetShaderDefault( Shader* result )
{
	*result = GetShaderDefault();
}

RLAPI void shimGetTextureDefault( Texture2D* result )
{
	*result = GetTextureDefault();
}

RLAPI void shimGetMatrixModelview( Matrix* result )
{
	*result = GetMatrixModelview();
}

RLAPI void shimGenTextureCubemap( Shader shader, Texture2D skyHDR, int size, Texture2D* result )
{
	*result = GenTextureCubemap( shader, skyHDR, size );
}

RLAPI void shimGenTextureIrradiance( Shader shader, Texture2D cubemap, int size, Texture2D* result )
{
	*result = GenTextureIrradiance( shader, cubemap, size );
}

RLAPI void shimGenTexturePrefilter( Shader shader, Texture2D cubemap, int size, Texture2D* result )
{
	*result = GenTexturePrefilter( shader, cubemap, size );
}

RLAPI void shimGenTextureBRDF( Shader shader, int size, Texture2D* result )
{
	*result = GenTextureBRDF( shader, size );
}

RLAPI void shimLoadWave( const char* fileName, Wave* result )
{
	*result = LoadWave( fileName );
}

RLAPI void shimLoadWaveEx( void* data, int sampleCount, int sampleRate, int sampleSize, int channels, Wave* result )
{
	*result = LoadWaveEx( data, sampleCount, sampleRate, sampleSize, channels );
}

RLAPI void shimLoadSound( const char* fileName, Sound* result )
{
	*result = LoadSound( fileName );
}

RLAPI void shimLoadSoundFromWave( Wave wave, Sound* result )
{
	*result = LoadSoundFromWave( wave );
}

RLAPI void shimWaveCopy( Wave wave, Wave* result )
{
	*result = WaveCopy( wave );
}

RLAPI void shimLoadMusicStream( const char* fileName, Music* result )
{
	*result = LoadMusicStream( fileName );
}

RLAPI void shimInitAudioStream( unsigned int sampleRate, unsigned int sampleSize, unsigned int channels, AudioStream* result )
{
	*result = InitAudioStream( sampleRate, sampleSize, channels );
}
