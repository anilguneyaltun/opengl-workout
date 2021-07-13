#version 330

in vec4 vCol;
in vec2 TexCoord;
out vec4 color;
flat in vec3 Normal;

struct DirectionalLight
{
	vec3 color;
	float ambientIntensity;
	vec3 direction;
	float diffuseIntensity;
};

uniform sampler2D theTexture;
uniform DirectionalLight dl;

void main()
{
	vec4 ambientColor = vec4(dl.color, 1.0f) * dl.ambientIntensity;

	float diffuseFactor = max(dot(normalize(Normal), normalize(dl.direction)), 0.0f);
	// A.B = |A||B|cos(angle)  => 1.1.cos(angle)

	vec4 diffuseColor = vec4(dl.color, 1.0f) * dl.diffuseIntensity * diffuseFactor;

	color = texture(theTexture, TexCoord) * (ambientColor + diffuseColor);
}