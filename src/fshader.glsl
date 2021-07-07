#version 330

in vec4 vCol;
in vec2 TexCoord;
out vec4 color;

struct DirectionalLight
{
	vec3 color;
	float ambientIntensity;
};

uniform sampler2D theTexture;
uniform DirectionalLight dl;

void main()
{
	vec4 ambientColor = vec4(dl.color, 1.0f) * dl.ambientIntensity;
	color = texture(theTexture, TexCoord) * ambientColor;
}