void setup(){
	background(217,66,244);
	size(500,500);
}

void draw(){
	fractal(250,250,200);
}

void pentagon(float x, float y, float r){
	int bColor = (int)(Math.random()*179+66);
	int cColor = (int)(Math.random()*179+66);
	stroke(0,66,200);
	fill(66,bColor,cColor,50);
	beginShape();
	vertex(r*cos(.5*PI)+x,r*sin(1.5*PI)+y);
	vertex(r*cos(.9*PI)+x,r*sin(1.9*PI)+y);
	vertex(r*cos(1.3*PI)+x,r*sin(.3*PI)+y);
	vertex(r*cos(1.7*PI)+x,r*sin(.7*PI)+y);
	vertex(r*cos(.1*PI)+x,r*sin(1.1*PI)+y);
	endShape(CLOSE);
}

void fractal(float x, float y, float r){
	pentagon(x,y,r);
	if(r <= 20)
		pentagon(x,y,r/100);
	else
	{
		fractal(r/2*cos(.5*PI)+x,r/2*sin(1.5*PI)+y,r/2);
		fractal(r/2*cos(.9*PI)+x,r/2*sin(1.9*PI)+y,r/2);
		fractal(r/2*cos(1.3*PI)+x,r/2*sin(.3*PI)+y,r/2);
		fractal(r/2*cos(1.7*PI)+x,r/2*sin(.7*PI)+y,r/2);
		fractal(r/2*cos(.1*PI)+x,r/2*sin(1.1*PI)+y,r/2);
	}
}