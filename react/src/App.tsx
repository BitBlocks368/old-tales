import ListGroup from "./components/ListGroup";

function App() {
  let items = ["Wands", "Swords", "Pentacles", "Cups"];

  const handleSelectItem = (item: string) => {
    console.log(item);
  };

  return (
    <div>
      <ListGroup
        items={items}
        heading="Suits"
        onSelectItem={handleSelectItem}
      />
    </div>
  );
}

export default App;
