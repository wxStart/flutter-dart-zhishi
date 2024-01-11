
var _data='';
const getData = async (n) => {
  for (var i = 0; i < n; i++) {
    _data = '123';
  }
  console.log('_data: ', _data);
  return _data;
}


const  fn = async () =>{
  console.log('start')
  getData(100).then(el=>console.log(el))
  console.log('end')
}
fn()