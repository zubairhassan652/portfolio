import './App.css';
import Layout from './components/base_template/base'
import {
  BrowserRouter as Router, HashRouter
} from 'react-router-dom';

function App() {
  return (
    <HashRouter>
    <Layout></Layout>
    </HashRouter>
  );
}

export default App;
