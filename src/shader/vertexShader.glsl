// 定義の順番が大事
uniform mat4 projectionMatrix; // 命名は決まっている
uniform mat4 viewMatrix; // 
uniform mat4 modelMatrix; //

attribute vec3 position;

void main(){
  // gl_Positionはglslで決まったものなのでスペルミスしないように
  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
  // セミコロンがないとエラーになる
}