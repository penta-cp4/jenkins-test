package RestApi.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1")
public class User {
	@GetMapping(value = "/user")
    public String getUsers(){
        return "get all users list";
    }

	@GetMapping(value = "/user/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public String getUser(){
        return "get a user infomation";
    }

	@GetMapping(value = "/item")
    public String getItems(){
        return "get all items list##############################";
    }

}
