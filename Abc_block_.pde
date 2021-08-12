Board board = new Board();
void setup (){
 size(600,450);
 background(145);
}
void draw(){
  board.draw_map();
  board.botton();

}
class Board{
  int blockSize = 150;
  int row = blockSize;
  int column = blockSize;
  int[][] pos = new int [row][column];
  
  void draw_map(){
   for(int i = 0 ; i < width/blockSize ; i++){
     for(int j = 0 ; j < height/blockSize ; j ++){
       line(i*150,0,i*150,height);
       line(0,j*150,width,j*150);
       //pos[i][j]= 0;
       
    
      } // if j
     }  //if i
    }  //if draw_map
    
   void botton(){
     //A B C D
     fill(255);
     rect(10,10,130,130);
     rect(160,10,130,130);
     rect(310,10,130,130);
     rect(460,10,130,130);
     //text
     fill(0);
     textSize(60);
     text("A",55,100);
     text("B",210,100);
     text("C",360,100);
     text("D",510,100);
     //
     fill(255);
     rect(10,160,130,130);
     rect(160,160,130,130);
     rect(310,160,130,130);
     rect(460,160,130,130);
     ///text E F G H
     fill(0);
     textSize(60);
     text("E",55,250);
     text("F",210,250);
     text("G",360,250);
     text("H",510,250);
     // botton
     fill(255);
     rect(10,310,130,130);
     rect(160,310,130,130);
     rect(310,310,130,130);
     rect(460,310,130,130);
     ///
     fill(0);
     textSize(60);
     text("I",55,400);
     text("J",210,400);
     text("K",360,400);
     text(" ",510,400);
     mousePressed();
   }
   void mousePressed(){
   if(mousePressed){
     delay(200);
     if(mouseX > 14 && mouseX < 140 && mouseY > 40 && mouseY <170 ){
    print("A") ;
     }
     if(mouseX > 164 && mouseX < 291 && mouseY > 47 && mouseY <171 ){
    print("B") ;
     }
     if(mouseX > 324 && mouseX < 444 && mouseY > 45 && mouseY <171 ){
    print("C") ;
     }
     if(mouseX > 471 && mouseX < 591 && mouseY > 49 && mouseY <172 ){
    print("D") ;
     }
     if(mouseX > 16 && mouseX < 140 && mouseY > 195 && mouseY < 317 ){
    print("E") ;
     }
     if(mouseX > 166 && mouseX < 290 && mouseY > 197 && mouseY < 317 ){
    print("F") ;
     }
     if(mouseX > 316 && mouseX < 437 && mouseY > 197 && mouseY <318 ){
    print("G") ;
     }
     if(mouseX > 467 && mouseX < 591 && mouseY > 192 && mouseY <319 ){
    print("H") ;
     }
     if(mouseX > 18 && mouseX < 144 && mouseY > 347 && mouseY <468 ){
    print("I") ;
     }
     if(mouseX > 165 && mouseX < 292 && mouseY > 345 && mouseY <468 ){
    print("J") ;
     }
     if(mouseX > 314 && mouseX < 438 && mouseY > 345 && mouseY <462 ){
    print("K") ;
     }
     if(mouseX > 467 && mouseX < 596 && mouseY > 347 && mouseY <471 ){
    print("--") ;
     }
   }
 }
} //class Board
