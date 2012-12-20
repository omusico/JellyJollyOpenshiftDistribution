/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.edu.seu.cose.jellyjolly.controller;

import cn.edu.seu.cose.jellyjolly.dao.DataAccessException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author rAy <predator.ray@gmail.com>
 */
@Controller
public class NotFoundController {

    private FrameBuilder frameBuilder;

    public NotFoundController(FrameBuilder frameBuilder) {
        this.frameBuilder = frameBuilder;
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String getNotFoundPage(Model model, HttpServletRequest request)
            throws DataAccessException {
        model.addAllAttributes(frameBuilder.getFrameObjects(request));
        return "404";
    }
}