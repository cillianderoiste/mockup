{ fetchbower, buildEnv }:
buildEnv { name = "bower-env"; ignoreCollisions = true; paths = [
  (fetchbower "domready" "1.0.4" "1.0.4" "1d3h4vyp9lswbz9603mrci54gmj89vgd9rfffrb9r4n439vwcwif")
  (fetchbower "console-polyfill" "0.1.1" "0.1.1" "1ql54f9mwzn0kmgy01bsdfgx04hs3a6vzk9yjzckfaikigad5czv")
  (fetchbower "jquery-form" "3.46.0" "3.46.0" "11bnyx8ig3bc4vwskd99zxzbnzayh18vdkaklmjiwkg8jbcxix40")
  (fetchbower "requirejs-text" "2.0.10" "2.0.10" "0s83zzk9syh568fjlzfdzmbb2csx1nmkcbvcjimi1achl0v7sk4q")
  (fetchbower "sinonjs" "1.9.0" "1.9.0" "1s9hn5x3vzxs41mhgfagbj0m6s8x53598y4h1za1nr9z6ymvig3l")
  (fetchbower "jquery.cookie" "1.4.0" "1.4.0" "1ad2k90b1f4fjazs6jzma4gxpqmwbzra36hrnchjp223hnasv263")
  (fetchbower "mockup-core" "1.2.1" "1.2.1" "0hp0bxligqqlbxmnzdsgpfwsv6mksl1hx0w369rsn6c1wx2b1idx")
  (fetchbower "respond" "1.4.2" "1.4.2" "0nhrsy1iyrqvrb7pxpw8d3dqhzd0wgbbscf3wzixx3xbi6v4j6fk")
  (fetchbower "es5-shim" "2.3.0" "2.3.0" "021mwrjnrhf64sx7nqmi1q52ypm10njp9m3pd0mvf9h139v98x9y")
  (fetchbower "expect" "0.3.1" "0.3.1" "0b32higq1g005i066gk6anyv1yrb450rbhaw9cfrrqpw9wxlgcfm")
  (fetchbower "dropzone" "3.8.4" "3.8.4" "1hbr2bhm9250xk3apvbinns0aiw02wxh4idzlgb8jcngb42w1r6k")
  (fetchbower "select2" "3.4.5" "3.4.5" "1aibpwlnj5d10s7m7a7fci9jnv5nq1bq881fk952a8xz3p33mmd1")
  (fetchbower "jqtree" "0.20.0" "0.20.0" "11xb3f510ngi27rp54xzhg5n6zdpib3cq0w27njjdkhy0259j7sg")
  (fetchbower "lodash" "2.4.1" "2.4.1" "08jmf5hq8r055cq8c3flkg1ycmpdrrgi6s9070lddk6jljaqa2ha")
  (fetchbower "jquery" "1.8.3" "1.8.3" "1frlqnm1rhwwbvcp4i5ysb1adxbcsb90kh369nw3drgi9ky9x0sy")
  (fetchbower "moment" "2.5.1" "2.5.1" "0bibpc7xjn8b9irm49679hzcadp5vacas9r5gdhz92h2bznv01nb")
  (fetchbower "backbone.paginator" "0.8.1" "0.8.1" "1caknrjn4iz1yg11g3ilma8l6mjgpgc9pzmwa4vz3r5gf1pcb2ds")
  (fetchbower "pickadate" "3.4.0" "3.4.0" "1f15vw4crj6zjyqx47n1ncjldh8alzdkf04jn0m8xplzz3sfl48i")
  (fetchbower "html5shiv" "3.7.0" "3.7.0" "14cig7a7bjnbyvnk4rpf6l74j33rp1jaacigasgkgg6rzay7lcgs")
  (fetchbower "bootstrap" "3.1.1" "3.1.1" "1n7ngrymiv5pbivw36wmryahs0j132i6hzy25jwqhs9k36qr16xb")
  (fetchbower "ace-builds" "1.1.3" "1.1.3" "0n5cbasg4f09scpkb38gvb70xsvl0x27dj2pxl8iknaqqfhia137")
  (fetchbower "backbone" "1.1.2" "1.1.2" "1h5yy2lbwd8ik6cyi234hv4i0cy1dijlh6s65kqi0asq1qzi18bs")
]; postBuild = "
     for p in $paths; do 
       read p_name p_version <<<$(echo $p | sed 's#[^-]*-\\(.*\\)-\\(.*\\)#\\1#')
       ln -s $p/packages/*/$p_version $out/$p_name;
     done";
}