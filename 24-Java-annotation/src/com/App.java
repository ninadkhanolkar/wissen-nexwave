package com;

import com.container.Container;

public class App {

	public static void main(String[] args) {

		Container container = new Container();
		container.handleAllRequests("/login");
		//container.handleAllRequests("/register");

	}

}
