/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sprhib.restfull;

import com.sprhib.model.Stat;
import com.sprhib.service.EntityService;
import com.sun.jersey.spi.resource.Singleton;
import java.net.URI;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author matus_000
 */
@Path("/statrest")
@Singleton
public class StatRESTFacade {
//    @PersistenceContext(unitName = "com.mvchib_Bakalarka-NTS_war_0.0.2-SNAPSHOTPU")
//    protected EntityManager entityManager;

    @Autowired
    private EntityService<Stat> statService;

    public StatRESTFacade() {
    }

    @POST
    @Consumes({"application/xml", "application/json"})
    @Transactional
    public Response create(Stat entity) {
        statService.addEntity(entity);
//        entityManager.persist(entity);
        return Response.created(URI.create(entity.getIdStat().toString())).build();
    }

    @PUT
    @Consumes({"application/xml", "application/json"})
    @Transactional
    public void edit(Stat entity) {
        statService.updateEntity(entity);
//        entityManager.merge(entity);
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public void remove(@PathParam("id") Integer id) {
        statService.deleteEntity(id);
//        Stat entity = entityManager.getReference(Stat.class, id);
//        entityManager.remove(entity);
    }

    @GET
    @Path("/{id}")
    @Produces({"application/json"})
    @Transactional
    public Stat find(@PathParam("id") Integer id) {
//        return entityManager.find(Stat.class, id);
        return statService.getEntity(id);
    }

    @GET
    @Produces({"application/xml", "application/json"})
    @Transactional
    public List<Stat> findAll() {
//        return find(true, -1, -1);
        return statService.getEntites();
    }

//    @GET
//    @Path("{max}/{first}")
//    @Produces({"application/xml", "application/json"})
//    @Transactional
//    public List<Stat> findRange(@PathParam("max") Integer max, @PathParam("first") Integer first) {
//        return find(false, max, first);
//    }
    @GET
    @Path("count")
    @Produces("text/plain")
    @Transactional
    public String count() {
//        try {
//            Query query = entityManager.createQuery("SELECT count(o) FROM Stat AS o");
//            return query.getSingleResult().toString();
//        } finally {
//            entityManager.close();
//        }
        return "10";
//        return Integer.toString(statService.getEntites().size());
    }
//
//    private List<Stat> find(boolean all, int maxResults, int firstResult) {
//        try {
//            Query query = entityManager.createQuery("SELECT object(o) FROM Stat AS o");
//            if (!all) {
//                query.setMaxResults(maxResults);
//                query.setFirstResult(firstResult);
//            }
//            return query.getResultList();
//        } finally {
//            entityManager.close();
//        }
//    }

}
