final int FRAMES = 150;

PShader shader;

void setup() {
  size( 256, 256, P2D );
  
  shader = loadShader( "okonomiyaki.frag" );
  shader.set( "resolution", width * 1.0, height * 1.0 );
  
  textureWrap( REPEAT );
}

void draw() {
  background( 0, 128, 128 );
  
  shader.set( "time", frameCount * 1.0 / FRAMES );
  filter( shader );
  
  // saveFrame( "out/#####.png" );
}