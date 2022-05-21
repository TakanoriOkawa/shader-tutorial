// 定義の順番が大事、命名は決まっている
uniform mat4 projectionMatrix; // カメラがどこまで写すんのかを決める行列
uniform mat4 viewMatrix; // 写すカメラがどこに位置しているのかを決める行列
uniform mat4 modelMatrix; // どこにあるかの位置情報決める行列

attribute vec3 position;

void main(){
  // gl_Positionはglslで決まったものなのでスペルミスしないように
  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
  // セミコロンがないとエラーになる

  // 3つの行列を掛け合わせて（行列の掛け算）
  // 3D空間を2Dに座標変換している
}