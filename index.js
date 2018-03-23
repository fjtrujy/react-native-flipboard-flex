
import { NativeModules } from 'react-native';

let { RNFlipboardFlex } = NativeModules;

if (!RNFlipboardFlex) {
    RNFlipboardFlex = require('./default');
}

export default RNFlipboardFlex;
    