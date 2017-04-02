package comunidadespr
import fastily.jwiki.core.Wiki
import fastily.jwiki.core.MQuery
import okhttp3.HttpUrl
import okhttp3.Response

class ComunidadController {
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Comunidad.list(params), model:[comunidadCount: Comunidad.count()]
    }

    def show(Comunidad comunidad) {
        respond comunidad
    }


    def create() {
        respond new Comunidad(params)


    }
//    static scaffold = Comunidad
    def save() {
        def comunidadInstance = new Comunidad(params)

        Wiki wiki = new Wiki("yamir", "comunidadespr", HttpUrl.parse("http://www.comunidadespr.com/api.php"))
        System.out.printf("Login as %s was successful!\n", wiki.conf.uname);
        String nombreComunidad = comunidadInstance.nombre_Comunidad
        nombreComunidad = nombreComunidad.replace(" ","_")
         
        wiki.edit(nombreComunidad,
"== Liderato comunitario ==\n"+comunidadInstance.tiene_junta_comunitaria+"\n"+comunidadInstance.junta_comunitaria+"\nfacebook.com/"+comunidadInstance.facebook+"\n== Contacto: ==\n"+comunidadInstance.nombre+comunidadInstance.apellido+"\nTel:"+comunidadInstance.teléfono+"\nEmail:"+comunidadInstance.email+"\n== Activos: ==\n\n"+comunidadInstance.alianzas_que_tiene_la_junta+"\n"+comunidadInstance.otras_organizaciones+"\n\n"+comunidadInstance.servicioes_gubernamentales+"\n\n"+comunidadInstance.recursos_Naturales_cerca+"\n\n"+comunidadInstance.eventos_culturales+"\n\n"+comunidadInstance.proyectos_comunitarios+"\n\n"+comunidadInstance.empresas_comunitarias+"\n\n"+comunidadInstance.necesidades+"\n\n"+ comunidadInstance.informacion_Adicional, "Test Edit API")
        wiki.edit("Main_Page",MQuery.getPageText(wiki,["Main_Page"] as ArrayList).entrySet().iterator().next().toString()+"\n\n* [["+comunidadInstance.nombre_Comunidad.toString()+"]]", "Add Community to main page")
        //wiki.edit("Main_Page",MQuery.getPageText(wiki,["Main_Page"] as ArrayList).get("Main_Page").toString()+"\n\n[["+comunidadInstance.nombre_Comunidad.toString()+"]]", "Add Community to main page")
//        if (!gameInstance.save(flush: true)) {
//            render(view: "create", model: [gameInstance: gameInstance])
//            return
//        }
//
//        flash.message = message(code: 'default.created.message', args: [message(code: 'game.label', default: 'Game'), gameInstance.id])
//        redirect(action: "show", id: gameInstance.id)
          redirect(url: "http://www.comunidadespr.com/"+nombreComunidad)
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'comunidad.label', default: 'Comunidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

}
