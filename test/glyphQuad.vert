#version 330 core

uniform mat4 uViewProjection;
uniform mat4 uModel;

uniform float uXOffset;

in vec3 aVertex;
in vec3 aNormal;
in vec2 aTexCoord;

out vec3 vNormal;
out vec2 vTexCoord;

void main() { 

    vec4 finalVertex = vec4(aVertex.x + uXOffset, aVertex.y, aVertex.z, 1.0);
    gl_Position = uViewProjection * uModel * finalVertex;

    vNormal   = aNormal;
    vTexCoord = aTexCoord;
}