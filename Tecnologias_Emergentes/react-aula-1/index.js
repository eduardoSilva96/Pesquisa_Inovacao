var container = document.getElementById("root");

function Participante(props){

    const [numero, setNumero] = React.useState(0);

    function votar(){
        setNumero(numero + 1)
    }

    return (
        <>
            <h1>{props.nome}</h1>
            <h2>{numero}</h2>
            <button onClick={votar}>Votar</button>
        </>
    )
}

function Votacao(){
    return (
        <>
            <Participante nome="Méqui"/>
            <Participante nome="Bks"/>
            <Participante nome="Papais"/>
        </>
    )
}

ReactDOM.createRoot(container).render(<Votacao />);
