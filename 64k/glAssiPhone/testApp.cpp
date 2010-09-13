#include "testApp.h"

#ifdef USEFMOD
#include <minifmod.h>
#endif

#include "almosteverything.h"
#include "parts.h"
#include "images.h"
#include <stdio.h>



DWORD resettime;
float resetbeat;
//extern DWORD startbeat;

float glaTime() {
    return ofGetElapsedTimeMillis() / 1000.0f;
};

float glaRelBeat() {
    return ofGetElapsedTimeMillis() / 1000.0f;
};


#define UPLOADMACRO( __id, __var )\
	glaUploadGif( __id, (unsigned char *)&__var, 1 );

void upload_images() {
    ofImage *img;

	UPLOADMACRO( GIF_FLARE, "gif_flare.gif" );
	UPLOADMACRO( GIF_PSIKORP2, "gif_psikorp2.gif" );
//	UPLOADMACRO( GIF_FLOWER, gif_flower );
	UPLOADMACRO( GIF_GRID, "gif_grid.gif" );
//	UPLOADMACRO( GIF_PSIBAND, gif_psiband );
	UPLOADMACRO( GIF_ROST, "gif_rost.gif" );
//	UPLOADMACRO( GIF_LANDSCAPE, gif_landscape );
	UPLOADMACRO( GIF_CLOUDS, "gif_clouds.gif" );
	UPLOADMACRO( GIF_PSIKORP3, "gif_psikorp3.gif" );
	UPLOADMACRO( GIF_TITLE, "gif_title.gif" );
//	UPLOADMACRO( GIF_FULL, gif_full );
//	UPLOADMACRO( GIF_TWISTER, gif_twister );
	UPLOADMACRO( GIF_TWISTER2, "gif_twister2.gif" );
//	UPLOADMACRO( GIF_SYMBOLER, gif_symboler );
//	UPLOADMACRO( GIF_FACES, gif_faces );
//	UPLOADMACRO( GIF_KROM, gif_krom );
	UPLOADMACRO( GIF_PSIKORP4, "gif_psikorp4.gif" );
	UPLOADMACRO( GIF_GREEN, "gif_green.gif" );
	UPLOADMACRO( GIF_SILU, "gif_silu.gif" );
	UPLOADMACRO( GIF_NAMES, "gif_names.gif" );
};

//--------------------------------------------------------------
void testApp::setup(){
	ofSetCircleResolution(50);
	ofBackground(0,0,0);
    ofSetWindowTitle("glAss openFrameworks port");
	ofSetFrameRate(100);

    _pd = (float *)malloc( 150*40*sizeof(float) );
    _pu = (float *)malloc( 150*40*sizeof(float) );
    _pv = (float *)malloc( 150*40*sizeof(float) );
    _pu2 = (float *)malloc( 150*40*sizeof(float) );
    _pv2 = (float *)malloc( 150*40*sizeof(float) );

    music.loadSound( "intromusic.xm" );
    music.setMultiPlay( false );
        // undantag...
    UPLOADMACRO( GIF_FONT, gif_font );

    event_init();

    upload_images();
    p_cubes_init();
    p_greetings_init();
    p_klask_init();

    // initeringen kalas, glad påsk...
    Sleep( 100 );
    glaCls(0.33f);

    // FÖRSTA TEXTEN I INTROT
    event_register(		5,		5.2f,	p_tunnel_run,			1		);
    event_register(		5.1f,	5.3f,	p_wirelandscape_run,	0		);
    event_register(		5.2f,	5.4f,	p_sphere_run,			0		);
    event_register(		2,		5.5f,	p_fulintro_run,			0		);

    // ANDRA TEXTEN I INTROT
    event_register(		9,		9.2f,	p_cubes_run,			0		);
    event_register(		9.1f,	9.3f,	p_psyk_run,				0		);
    event_register(		9.2f,	9.4f,	p_twist3d_run,			0		);
    event_register(		6,		9.5f,	p_fulintro_run,			1		);

    // TREDJE TEXTEN I INTROT
    event_register(		13,		13.2f,	p_twist3d_run,			0		);
    event_register(		13.1f,	13.3f,	p_psyk_run,				0		);
    event_register(		13.2f,	13.4f,	p_tunnel_run,			1		);
    event_register(		10,		13.5f,	p_fulintro_run,			2		);

    // FLIMMER I INTROT
    event_register(		1,		13.7f,	p_static_run,			256		);

    // FLASH Å SEN 64 SNURRA
    event_register(		14,		15,		p_whiteflash_run,		0		);
    event_register(		14,		29,		p_wirelandscape_run,	0		);

    // FLASH Å HANZON+PSYKSNURR (MUSIKEN KOMMER IGÅNG)
    event_register(		29,		30,		p_whiteflash_run,		0		);
    event_register(		29,		42,		p_psyk_run,				0		);
    event_register(		41,		58,		p_title_run,			3		);
    event_register(		29,		34,		p_hanzon_run,			0		);

    // VÅRA NAMN
    event_register(		32,		35,		p_name_run,				0		);
    event_register(		36,		39,		p_name_run,				1		);

    // TWISTERN SNURRAR IN... BÅDA TVÅ (2D OCH 3D)
    event_register(		42,		58,		p_twist3d_run,			0		);
    event_register(		42,		43,		p_whiteflash_run,		0		);
    event_register(		39,		52,		p_twister_run,			0		);

    // KUBERNA (MUSIKEN LUGNAR NER SIG)
    event_register(		58,		79,		p_cubes_run,			0		);
    event_register(		58,		59,		p_whiteflash_run,		0		);

    // TUNNELN EFTERÅT, MED BLOBSPHERE
    event_register(		79,		80,		p_whiteflash_run,		0		);
    event_register(		79,		85,		p_tunnel_run,			512		);
    event_register(		79,		85,		p_sphere_run,			0		);

    // FSOL PSYK
    event_register(		85,		141,	p_klask_run,			264		);

    // ÖVERGÅR I GREETS, SOM ÖVERGÅR I TUNNEL
    event_register(		85,		128,	p_greetings_run,		0		);
    event_register(		85,		86,		p_whiteflash_run,		0		);
    event_register(		100,	141,	p_tunnel_run,			512		);

    // TUNNELN ÖVERGÅR I '64' PLUS MASSOR AV EFFEKTER, COLOR DODGE'AT
    event_register(		114,	124.0f,	p_wirelandscape_run,	0		);
    event_register(		114,	124.0f,	p_psyk_run,				2		);
    event_register(		114,	115,	p_whiteflash_run,		0		);
//		event_register(		125,	126,	p_whiteflash_run,		0		);

    // LUGNARE MUSIK, EFTER UPPLADDNINGEN, BYT TILL FLUM MED FLASH
    event_register(		124.0f,	141,	p_aftershit_run,		0		);
    event_register(		138.5f,	141,	p_fadeblack_run,		0		);

    music.play();
}

void testApp::exit()
{
  //  music.stop();
//    event_free();
}

//--------------------------------------------------------------
void testApp::update(){
//	float t = glaTime();
  //  if( t > 142 )
   //     OF_EXIT_APP();
}

//--------------------------------------------------------------
void testApp::draw(){
	float t = glaTime();
    glaDefaultProjection();
    glaCls( 0.33f );
    event_run( t, 0 );
    // kör 142 sekunder

/*
	//--------------------------- circles
	//let's draw a circle:
	ofSetColor(255,130,0);
	float radius = 50 + 10 * sin(counter);
	ofFill();		// draw "filled shapes"
	ofCircle(100,400,radius);

	// now just an outline
	ofNoFill();
	ofSetColor(0xCCCCCC);
	ofCircle(100,400,80);

	// use the bitMap type
	// note, this can be slow on some graphics cards
	// because it is using glDrawPixels which varies in
	// speed from system to system.  try using ofTrueTypeFont
	// if this bitMap type slows you down.
	ofSetColor(0x000000);
	ofDrawBitmapString("circle", 75,500);


	//--------------------------- rectangles
	ofFill();
	for (int i = 0; i < 200; i++){
		ofSetColor((int)ofRandom(0,255),(int)ofRandom(0,255),(int)ofRandom(0,255));
		ofRect(ofRandom(250,350),ofRandom(350,450),ofRandom(10,20),ofRandom(10,20));
	}
	ofSetColor(0x000000);
	ofDrawBitmapString("rectangles", 275,500);

	//---------------------------  transparency
	ofSetColor(0x00FF33);
	ofRect(400,350,100,100);
	// alpha is usually turned off - for speed puposes.  let's turn it on!
	ofEnableAlphaBlending();
	ofSetColor(255,0,0,127);   // red, 50% transparent
	ofRect(450,430,100,33);
	ofSetColor(255,0,0,(int)(counter * 10.0f) % 255);   // red, variable transparent
	ofRect(450,370,100,33);
	ofDisableAlphaBlending();

	ofSetColor(0x000000);
	ofDrawBitmapString("transparency", 410,500);

	//---------------------------  lines
	// a bunch of red lines, make them smooth if the flag is set

	if (bSmooth){
		ofEnableSmoothing();
	}

	ofSetColor(0xFF0000);
	for (int i = 0; i < 20; i++){
		ofLine(600,300 + (i*5),800, 250 + (i*10));
	}

	if (bSmooth){
		ofDisableSmoothing();
	}

	ofSetColor(0x000000);
	ofDrawBitmapString("lines\npress 's' to toggle smoothness", 600,500);
*/
}


//--------------------------------------------------------------
void testApp::keyPressed  (int key){
}

//--------------------------------------------------------------
void testApp::keyReleased  (int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){
}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){
}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
}

//--------------------------------------------------------------
void testApp::mouseReleased(){

}
