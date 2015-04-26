#version 330 core

in vec3 aPosition;
in vec3 aColor;
in float aID;

uniform mat4 uMVP;
out vec3 vColor;
out float vID;

void main( void ) { 

  gl_Position = uMVP * vec4( aPosition , 1.0 );

  vColor = aColor;
  vID = aID;

}