package comunidadespr

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "/" {
           controller = "Comunidad"
           action = "create"
        }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
