import ListGroup from "./components/ListGroup";

function App() {
  let items = ["Wands", "Swords", "Pentacles", "Cups"];

  return (
    <div>
      <ListGroup items={items} heading="Suits" />
    </div>
  );
}

export default App;
