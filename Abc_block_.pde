//int row = blockSize;
//int column = blockSize;
String BoardGame[][] = {{"B","C","H","I"},{"J","A","K","D"},{"E","F","G"," "}};


void setup (){
 size(600,450);
 background(145);
}
void draw(){
  draw_map();
  botton();
  swap_button();

}

  
  void draw_map(){
   int blockSize = 150;
   for(int i = 0 ; i < width/blockSize ; i++){
     for(int j = 0 ; j < height/blockSize ; j ++){
       line(i*150,0,i*150,height);
       line(0,j*150,width,j*150);
       
       
    
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
     text(BoardGame[0][0],55,100);   //B
     text(BoardGame[0][1],210,100);  //C
     text(BoardGame[0][2],360,100);  //H
     text(BoardGame[0][3],510,100);  //I
     //
     fill(255);
     rect(10,160,130,130);
     rect(160,160,130,130);
     rect(310,160,130,130);
     rect(460,160,130,130);
     ///text E F G H
     fill(0);
     textSize(60);
     text(BoardGame[1][0],55,250);    //J
     text(BoardGame[1][1],210,250);   //A
     text(BoardGame[1][2],360,250);   //K
     text(BoardGame[1][3],510,250);   //D
     // botton
     fill(255);
     rect(10,310,130,130);
     rect(160,310,130,130);
     rect(310,310,130,130);
     rect(460,310,130,130);
     ///
     fill(0);
     textSize(60);
     text(BoardGame[2][0],55,400);   //E
     text(BoardGame[2][1],210,400);  //F
     text(BoardGame[2][2],360,400);  //G
     text(BoardGame[2][3],510,400);      
    
   }

 
  void swap_button(){
   int row= mouseY/150;
   int column = mouseX/150;
   String blank_value = " ";
   if(mousePressed){
     try{
       if(row+1 <= 2 && BoardGame[row+1][column].equals(" ")){        //move down
         blank_value = BoardGame[row][column];
         BoardGame[row][column] = BoardGame[row+1][column];
         BoardGame[row+1][column] = blank_value;
     }  //if
     else if(row-1 >= 0 && BoardGame[row-1][column].equals(" ")){           //move up
       blank_value = BoardGame[row][column];
       BoardGame[row][column] = BoardGame[row-1][column];
       BoardGame[row-1][column] = blank_value;
     }  //else if
     else if (column+1 <= 3 && BoardGame[row][column+1].equals(" ")){         //move right
       blank_value = BoardGame[row][column];
       BoardGame[row][column] = BoardGame[row][column+1];
       BoardGame[row][column+1] = blank_value;
     }  //else if
     else if (column-1 >= 0 && BoardGame[row][column-1].equals(" ")){       //move left
       blank_value = BoardGame[row][column];
       BoardGame[row][column] = BoardGame[row][column-1];
       BoardGame[row][column-1] = blank_value;
   }   //else if
   }   //try
   catch (Exception e){
   }  
   }  // if mousePressed
 }  // void swap_button
