import { StyleSheet } from 'react-native';
import layout from '../../constants/layout';

export default StyleSheet.create({
  container: {
    flex: 1, 
    justifyContent: 'flex-end',
    alignItems: 'center'
  },
  button: {
    padding: 12, 
    marginBottom: 20, 
    borderColor: 'white', 
    borderWidth: 1, 
    borderRadius: 8
  },
  buttonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold'
  }
});
