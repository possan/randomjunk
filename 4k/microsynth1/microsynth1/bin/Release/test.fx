float    appTime;                   // App's time in seconds
float4x4 worldMatrix;                  // World matrix for object
float4x4 viewMatrix;    // World * View * Projection matrix
float4x4 projectionMatrix;    // World * View * Projection matrix

sampler MeshTextureSampler = 
sampler_state
{
//     Texture = <g_MeshTexture>;
    MipFilter = LINEAR;
    MinFilter = LINEAR;
    MagFilter = LINEAR;
};

struct VS_OUTPUT
{
    float4 Position   : POSITION;   // vertex position 
    float2 TextureUV  : TEXCOORD0;  // vertex texture coords 
    float4 Diffuse    : COLOR0;     // vertex diffuse color (note that COLOR0 is clamped from 0..1)
};

VS_OUTPUT RenderSceneVS( float4 vPos : POSITION, float3 vNormal : NORMAL, float2 vTexCoord0 : TEXCOORD0 )
{
    VS_OUTPUT Output;
    float3 vNormalWorldSpace;
    float4 vAnimatedPos = vPos;

 		vAnimatedPos += float4(vNormal, 0) * (sin(appTime*2.5 + vPos.x*3) + 1);//+vPos.x*3+appTime*vPos.y*4);//+appTime*vPos.z*5.0)+0.5)*1;

    Output.Position = mul(mul(vAnimatedPos, viewMatrix), projectionMatrix);

    vNormalWorldSpace = normalize( mul( vNormal, (float3x3) worldMatrix ) ); // normal (world space)

    float4 vTotalLightDiffuse = float4(0.1, 0.3, 0.2, 0.0);
    
	vTotalLightDiffuse = dot( vNormalWorldSpace, float4( -0.7, 0.6, 0.2, 0.0 ) );
        
    Output.Diffuse.rgb = vTotalLightDiffuse ;
    
    // g_MaterialDiffuseColor * vTotalLightDiffuse + g_MaterialAmbientColor * g_LightAmbient;   

    Output.Diffuse.a = 0.0f; 
    
    // Just copy the texture coordinate through
//    if( bTexture ) 
  //      Output.TextureUV = vTexCoord0; 
    // else
    Output.TextureUV = 0; 
    
    return Output;    
}


//--------------------------------------------------------------------------------------
// Pixel shader output structure
//--------------------------------------------------------------------------------------
struct PS_OUTPUT
{
    float4 RGBColor : COLOR0;  // Pixel color    
};


//--------------------------------------------------------------------------------------
// This shader outputs the pixel's color by modulating the texture's
//       color with diffuse material color
//--------------------------------------------------------------------------------------
PS_OUTPUT RenderScenePS( VS_OUTPUT In ) 
{ 
    PS_OUTPUT Output;

    // Lookup mesh texture and modulate it with diffuse
    // if( bTexture )
  //      Output.RGBColor = tex2D(MeshTextureSampler, In.TextureUV) * In.Diffuse;
//    else
        Output.RGBColor = In.Diffuse;

    return Output;
}


//--------------------------------------------------------------------------------------
// Renders scene to render target
//--------------------------------------------------------------------------------------
technique RenderSceneWithTexture1Light
{
    pass P0
    {          
        VertexShader = compile vs_1_1 RenderSceneVS( );
        PixelShader  = compile ps_1_1 RenderScenePS( );
	}
    pass P1
    {          
	}
    pass P2
    {          
	}
    pass P3
    {          
	}
}
