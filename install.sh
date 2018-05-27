function confirm {
    read -r -p "$1" response
    case "$response" in
        [sS][yY])
            true ;;
        [nN])
            false ;;
    esac
}

confirm "teste" a

echo "$a"
