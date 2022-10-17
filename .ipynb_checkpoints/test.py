import requests as r
def getallpokemon(pokemon):

    url = f"https://pokeapi.co/api/v2/pokemon/{pokemon}" 
    response = r.get(url)
    if response.ok:
        data = response.json()
        pokedex = {}
        stat = data
        f_name = f"{stat['name']}"
        pokedex[f_name] = {
                'type': stat['types'],
                'exp': stat['base_experience'],
                'img': stat['sprites']['front_shiny'],
                'ability': stat['abilities'][0]['ability']
            }
        return pokedex
    return "Error"

getallpokemon("psyduck")

       




