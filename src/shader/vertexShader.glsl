// 定義の順番が大事、命名は決まっている
uniform mat4 projectionMatrix; // カメラがどこまで写すんのかを決める行列
uniform mat4 viewMatrix; // 写すカメラがどこに位置しているのかを決める行列
uniform mat4 modelMatrix; // どこにあるかの位置情報決める行列

attribute vec3 position;

void main(){
  // TASK: 位置を動かす
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  // modelPosition.x += 0.5; // 少数点をつけないとエラーになる
  modelPosition.z += sin(modelPosition.x * 20.0) * 0.1;
  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectionPosition = projectionMatrix  * viewPosition;

  // gl_Positionはglslで決まったものなのでスペルミスしないように
  gl_Position = projectionPosition;
  // セミコロンがないとエラーになる

  // 3つの行列を掛け合わせて（行列の掛け算）
  // 3D空間を2Dに座標変換している
}